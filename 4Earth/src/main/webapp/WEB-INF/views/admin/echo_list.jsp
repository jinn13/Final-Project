<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/> 

<%@ include file="/WEB-INF/views/common/admin_header.jsp" %>

        <div class="container">
            <div class="contents">
                <div class="side-bar is-open">
                    <button class="btn toggle-nav">
                        <i class="material-icons md-24">last_page</i>
                    </button>
                    <ul>
                        <li>
                            <a href="">
                                <i class="material-icons md-16"></i>
                                <span></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="material-icons md-16"></i>
                                <span></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="material-icons md-16"></i>
                                <span></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="material-icons md-16"></i>
                                <span></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="material-icons md-16"></i>
                                <span></span>
                            </a>
                        </li>
                    </ul>
                </div>
                
                <section class="content-wrap">
                    <div class="page-tit">
                        <h3>????????? ??????</h3>
                        <div class="bread-crumb">
                            <a href="../index.html"><i class="material-icons md-16">home</i></a>
                            <a href="#">?????????</a>
                            <span>????????? ??????</span>
                        </div>
                    </div>

                    <div class="admin">
                        <!-- Category -->
                        <section>
                            <div>
                                <div class="board-head">
                                    <div class="select-wrap">
                                        <select name="" id="member-select" class="selectbox">
                                            <option value="1" selected>?????????</option>
                                            <option value="2">?????????</option>
                                            <option value="3">?????????</option>
                                        </select>
                                        <select name="" id="count-select" class="selectbox">
                                            <option value="" selected="selected">?????? ?????? ??????</option>
                                            <option value="5">5?????? ??????</option>
                                            <option value="10">10?????? ??????</option>
                                            <option value="30">30?????? ??????</option>
                                        </select>
                                    </div>
                                    <div class="input-with-icon search-input">
                                        <input type="text" placeholder="???????????? ??????????????????." id="search-val">
                                        <button id="search"><i class="material-icons">search</i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="board">
                                <table class="table">
                                    <colgroup>
                                        <col width="13%">
                                        <col width="*">
                                        <col width="13%">
                                        <col width="13%">
                                        <col width="13%">
                                        <col width="13%">
                                        <col width="20%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>?????? ??????</th>
                                            <th>?????? ??????</th>
                                            <th>??????</th>
                                            <th>?????????</th>
                                            <th>?????? ???</th>
                                            <th>??????</th>
                                            <th>??????</th>
                                        </tr>
                                    </thead>
                                    <c:if test="${ empty list }">
	                                    <tbody>
		                                    <tr>
		                                    	<td colspan="7">
													<div class="empty-content">
						                       			<i class="material-icons">info</i>
						                       			<p>????????? ?????? ????????? ????????????.</p>
						                       		</div>
		                                    	</td>
		                                    </tr>
	                                    </tbody>
									</c:if>
									<c:if test="${ !empty list }">
	                                    <tbody>
											<c:forEach var="product" items="${ list }" varStatus="vs">
		                                        <tr>
		                                            <td>${ product.proNo }</td>
		                                            <td>${ product.proName }</td>
		                                            <td>${ product.proStat }</td>
		                                            <td>
		                                            	<fmt:formatDate value="${ product.proModifyDate }" pattern="yyy-MM-dd hh:mm"/>
		                                            </td>
		                                            <td>${ product.proStock }</td>
		                                            <td>
		                                            <a href="#popup${ vs.index }" class="btn btn-s btn-open-pop">??????</a> 
					                                <div class="layer-popup" id="popup${ vs.index }">
						                                <div class="layer-inner">
						                                    <div class="pop-head">
						                                        <strong>????????? ??????</strong>
						                                        <a href="#" class="btn-close-pop"><i class="material-icons md-24">close</i></a>
						                                    </div>
						                                    <div class="pop-cont">
						                                       <table id="view-table">
													           <colgroup>
													           		<col style="10%">
													           		<col style="40%">
													           		<col style="15%">
													           		<col style="35%">
													    		</colgroup>
													        	<tbody>
													        		<tr>
													        			<th>?????? ??????</th>
													        			<td>${ product.proNo }</td>
													        			<th>?????? ??????</th>
													        			<td>${ product.proName }</td>
													        		</tr>
													        		<tr>
													        			<th>??????</th>
													        			<td>${ product.proPrice }</td>
													        			<th>??????</th>
													        			<td>${ product.proVol }</td>
													        		</tr>
													        		<tr>
													        			<th>?????????</th>
													        			<td>${ product.proMfg }</td>
													        			<th>??????</th>
													        			<td>${ product.proRating }</td>
													        		</tr>
													        		<tr>
													        			<th>?????????</th>
													        			<td>
													        				<fmt:formatDate value="${ product.proDate }" pattern="yyy-MM-dd hh:mm"/>
													        			</td>
													        			<th>?????????</th>
													        			<td>
													        				<fmt:formatDate value="${ product.proModifyDate }" pattern="yyy-MM-dd hh:mm"/>
													        			</td>
													        		</tr>
													        		<tr>
													        			<th>??????????????????</th>
													        			<td>${ product.proStat }</td>
													        			<th>????????????????????????</th>
													        			<td>${ product.proCat }</td>
													        		</tr>
													        		<tr>
													        			<th>??????</th>
													        			<td>${ product.proStock }</td>
													        			<th>?????????</th>
													        			<td>${ product.proSold }</td>
													        		</tr>
													        		<tr>
													        			<th colspan="2">??????</th>
													        			<th colspan="2">??????</th>
													        		</tr>
													        		<tr>
													        			<td colspan="2" style="height: 300px">
													        				<img id="member-img" src="${ path }/resources/upload/store/${ product.proModifyImg }" />
													        			</td>
													        			<td colspan="2" class="left">${ product.proInfo }</td>
													        		</tr>
												        		</tbody>
													       		</table>
						                                    </div>
						                                    <div class="btn-wrap">
						                                        <button class="btn gray btn-close-pop">??????</button>
						                                    </div>
						                                </div>
						                            </div>
                            						</td>
		                                            <td>
		                                                <button class="btn btn-s" id="echo_update" value="${ product.proNo }">??????</button>
		                                                <button id="delete" name="no" value=${ product.proNo } class="btn btn-s gray">??????</button>
		                                            </td>
		                                        </tr>
											</c:forEach>
		                                </tbody>
									</c:if>
                                </table>
                            </div>
                            <div class="btn-wrap">
                                <button id="echo_write" class="btn">?????? ??????</button>
                            </div>
                        </section>
                        <!-- // Category -->
                        
                        <c:if test="${ !empty list }">
	                        <div class="paging">
								<a class="first" href="${ path }/admin/echo_list?page=1"></a>
								<a class="prev" href="${ path }/admin/echo_list?page=${ pageInfo.prevPage }"><span>??????</span></a>
					
								<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
									<c:if test="${ status.current == pageInfo.currentPage }">			
										<strong>${ status.current }</strong>
									</c:if>
									<c:if test="${ status.current != pageInfo.currentPage }">				
										<a href="${ path }/admin/echo_list?page=${ status.current }&count=${ pageInfo.listLimit }">${ status.current }</a>
									</c:if>
								</c:forEach>
								<a class="next" href="${ path }/admin/echo_list?page=${ pageInfo.nextPage }"><span>??????</span></a>
								<a class="last" href="${ path }/admin/echo_list?page=${ pageInfo.maxPage }"></a>
							</div>
						</c:if>                 
                    </div>
                    
            </section>

                <button class="btn scroll-top"><i class="material-icons md-24">vertical_align_top</i></button>
            </div>
        </div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<script>
	$(() => {
	    let sideBarMenu = $('.side-bar ul li');
	    let menuPath = ['${ path }/admin/echo_list','${ path }/admin/echo_order','${ path }/admin/echo_delivery','${ path }/admin/echo_cancel','${ path }/admin/echo_bidding'];
	    let menuName = ['????????? ??????', '?????? ??????', '?????? ??????', '?????? ??????', '?????? ??????'];
	    let menuIcon = ['inventory_2', 'app_registration', 'local_shipping', 'remove_circle', 'edit'];
	
	    for( let i = 0; i < menuName.length; i++ ) {
	        let menuIdx = sideBarMenu.eq(i);
	
	        menuIdx.find('a').attr('href', menuPath[i]);
	        menuIdx.find('a > i').text(menuIcon[i]);
	        menuIdx.find('a > span').text(menuName[i]);
	    }
	
	    sideBarMenu.each(function(idx, el) {
	        if(idx == 0) {
	            $(this).addClass('current');
	        }
	    });
	    
	    $('#count-select').on('change',  (e) => {
			location.replace("${ path }/admin/echo_list?count=" + e.target.value);
		})
	});
	
	$(document).on("click","#echo_write", (e) => {
        var popupX = (document.body.offsetWidth / 2) - (800 / 2);
        var popupY= (window.screen.height / 2) - (800 / 2);
        const url = "${ path }/admin/echo_write";
        
        open(url, "", 'status=no, height=800, width=900, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
    });
	
	$(document).on("click","#echo_update", (e) => {
        var popupX = (document.body.offsetWidth / 2) - (800 / 2);
        var popupY= (window.screen.height / 2) - (800 / 2);
        const url = "${ path }/admin/echo_update?no="+ e.target.value;
        
        open(url, "", 'status=no, height=800, width=900, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
    });
	
	$(document).ready(() => {
		$("#delete").on("click", (e) => {
			if(confirm("?????? ????????? ?????? ???????????????????")) {
				location.replace("${ path }/admin/echo_delete?no=" + e.target.value);
			}
		})
	});
	
	$(document).ready(() => {
		$(document).on('click', '#search', () => {
			if($("#member-select option:selected").val() == 1) {
				location.replace("${ path }/admin/echo_list?proNo=" + $("#search-val").val());
			}
			if($("#member-select option:selected").val() == 2) {
				location.replace("${ path }/admin/echo_list?proName=" + $("#search-val").val());
			}
			if($("#member-select option:selected").val() == 3) {
				location.replace("${ path }/admin/echo_list?proStock=" + $("#search-val").val());
			}
		})
	});
</script>

</html>