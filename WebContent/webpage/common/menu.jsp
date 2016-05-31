<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sidebar" id="sidebar">
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed')
		} catch (e) {
		}
	</script>

	<ul class="nav nav-list">
		<li class="active"><a
			href="${pageContext.request.contextPath}/index/show"> <i
				class="icon-dashboard"></i> <span class="menu-text"> 控制台 </span>
		</a></li>

		<li><a href="${pageContext.request.contextPath}/edition/show">
				<i class="icon-text-width"></i> <span class="menu-text"> 我的任务
			</span>
		</a></li>

		<li><a href="#" class="dropdown-toggle"> <i
				class="icon-desktop"></i> <span class="menu-text"> 版本管理 </span> <b
				class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="${pageContext.request.contextPath}/edition/show">
						<i class="icon-double-angle-right"></i> 版本查询
				</a></li>

				<li><a href="buttons.html"> <i
						class="icon-double-angle-right"></i> 新建版本
				</a></li>
			</ul></li>

		<li><a href="#" class="dropdown-toggle"> <i class="icon-list"></i>
				<span class="menu-text"> 需求管理 </span> <b
				class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="tables.html"> <i
						class="icon-double-angle-right"></i> 简单 &amp; 动态
				</a></li>

				<li><a href="jqgrid.html"> <i
						class="icon-double-angle-right"></i> jqGrid plugin
				</a></li>
			</ul></li>

		<li><a href="#" class="dropdown-toggle"> <i class="icon-edit"></i>
				<span class="menu-text"> 表单 </span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="form-elements.html"> <i
						class="icon-double-angle-right"></i> 表单组件
				</a></li>

				<li><a href="form-wizard.html"> <i
						class="icon-double-angle-right"></i> 向导提示 &amp; 验证
				</a></li>

				<li><a href="wysiwyg.html"> <i
						class="icon-double-angle-right"></i> 编辑器
				</a></li>

				<li><a href="dropzone.html"> <i
						class="icon-double-angle-right"></i> 文件上传
				</a></li>
			</ul></li>

		<li><a href="#" class="dropdown-toggle"> <i
				class="icon-list-alt"></i> <span class="menu-text"> 权限管理 </span> <b
				class="arrow icon-angle-down"></b></a>
			<ul class="submenu">
				<li><a href="form-elements.html"> <i
						class="icon-double-angle-right"></i> 用户管理
				</a></li>

				<li><a href="form-wizard.html"> <i
						class="icon-double-angle-right"></i> 角色管理
				</a></li>

				<li><a href="wysiwyg.html"> <i
						class="icon-double-angle-right"></i> 菜单管理
				</a></li>
			</ul></li>

		<li><a href="#" class="dropdown-toggle"> <i class="icon-cog"></i>
				<span class="menu-text"> 系统管理 </span> <b
				class="arrow icon-angle-down"></b></a>
			<ul class="submenu">
				<li><a href="form-elements.html"> <i
						class="icon-double-angle-right"></i> 用户管理
				</a></li>

				<li><a href="form-wizard.html"> <i
						class="icon-double-angle-right"></i> 角色管理
				</a></li>

				<li><a href="wysiwyg.html"> <i
						class="icon-double-angle-right"></i> 菜单管理
				</a></li>
			</ul></li>


		<li><a href="#" class="dropdown-toggle"> <i class="icon-tag"></i>
				<span class="menu-text"> 更多页面 </span> <b
				class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="profile.html"> <i
						class="icon-double-angle-right"></i> 用户信息
				</a></li>

				<li><a href="inbox.html"> <i
						class="icon-double-angle-right"></i> 收件箱
				</a></li>

				<li><a href="pricing.html"> <i
						class="icon-double-angle-right"></i> 售价单
				</a></li>

				<li><a href="invoice.html"> <i
						class="icon-double-angle-right"></i> 购物车
				</a></li>

				<li><a href="timeline.html"> <i
						class="icon-double-angle-right"></i> 时间轴
				</a></li>

				<li><a href="login.html"> <i
						class="icon-double-angle-right"></i> 登录 &amp; 注册
				</a></li>
			</ul></li>

		<li><a href="#" class="dropdown-toggle"> <i
				class="icon-file-alt"></i> <span class="menu-text"> 其他页面 <span
					class="badge badge-primary ">5</span>
			</span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="faq.html"> <i class="icon-double-angle-right"></i>
						帮助
				</a></li>

				<li><a href="error-404.html"> <i
						class="icon-double-angle-right"></i> 404错误页面
				</a></li>

				<li><a href="error-500.html"> <i
						class="icon-double-angle-right"></i> 500错误页面
				</a></li>

				<li><a href="grid.html"> <i class="icon-double-angle-right"></i>
						网格
				</a></li>

				<li><a href="blank.html"> <i
						class="icon-double-angle-right"></i> 空白页面
				</a></li>
			</ul></li>
	</ul>
	<!-- /.nav-list -->

	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
			data-icon2="icon-double-angle-right"></i>
	</div>

	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
		}

		$(document).ready(function() {
			dropdownOpen();
		});
		
		/**
		 * 鼠标划过就展开子菜单，免得需要点击才能展开
		 */
		function dropdownOpen() {
			var $dropdownLi = $('li .dropdown-toggle');
			$dropdownLi.click(function() {
				$(this).parent().parent().find('li').removeClass('active');
				$(this).parent().addClass('active open').find('ul').show();
			});
		}
	</script>
</div>

