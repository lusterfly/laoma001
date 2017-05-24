<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/grmembtaglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="decorator" content="grmembdefault" />
<style>
.input-xxlarge {
  width: 590px;
}
.alert {
  padding: 8px 35px 8px 14px;
  margin-bottom: 20px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  background-color: #fcf8e3;
  border: 1px solid #fbeed5;
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}

.alert-danger,
.alert-error {
  color: #b94a48;
  background-color: #f2dede;
  border-color: #eed3d7;
}
</style>
<link href="${ctxStatic}/common/jeesite.min.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="z-top">
		<div class="wid z-szj clearfix">
			<div class="g-logo fl">
				<a href="${pageContext.request.contextPath}/index.html"><img src="${pageContext.request.contextPath}/templatesgr/images/g-logo.png" width="270" height="52" /></a>
			</div>
			<div class="fr xxtz clearfix">
				<div class="xxwz fl">
					<a href="${ctx}/myinfo${urlSuffix}"><img src="${pageContext.request.contextPath}/templatesgr/images/g-xxtz.png" width="26" height="29" />消息通知<span>0</span></a>
				</div>
				<div class="fl grzx">
					<a href="${ctx}/grindex.html"><img src="${pageContext.request.contextPath}/templatesgr/images/g-rzx.png" width="19" height="19" />个人中心</a>
				</div>
				<div class="wyqd fl clearfix">
					<div class="fr mz">${user.name }</div>
					<div class="fr why">欢迎您回来</div>
					<div class="fr djqd">
						<a href="${ctx}/saveptqd${urlSuffix}">我要签到</a>
					</div>
				</div>
				<div class="fr txbf">
					<a href="${ctx}/grindex.html"><img src="${pageContext.request.contextPath}/templatesgr/images/g-sctx.png" width="77" height="74" /></a>
				</div>
			</div>
		</div>
	</div>
	<div class="g-dbj">
		<div class="g-box wid clearfix">
			<div class="cnav fl">
				<dl>
					<dt>会员中心</dt>
					<dd class="mrhg">
						<a href="${ctx}/myaccwdzh${urlSuffix}">我的账户</a>
					</dd>
					<dd>
						<a href="${ctx}/myauto${urlSuffix}">我的汽车</a>
					</dd>
					<dd>
						<a href="${ctx}/myactive${urlSuffix}">我的活动</a>
					</dd>
					<dd>
						<a href="${ctx}/myjifwdjf${urlSuffix}">我的积分</a>
					</dd>
					<dd>
						<a href="${ctx}/myfavor${urlSuffix}">我的收藏</a>
					</dd>
					<dd>
						<a href="${ctx}/myarticle${urlSuffix}">我的投稿</a>
					</dd>
					<dd>
						<a href="${ctx}/mycommwfc${urlSuffix}">我的评论</a>
					</dd>
					<dd>
						<a href="${ctx}/logout${urlSuffix}">安全退出</a>
					</dd>
				</dl>
			</div>
			<div class="ybox fr">
				<div class="wdjf">
					<ol class="clearfix">
						<li class="mrjf"><a href="">个人信息 </a></li>
						<li><a href="${ctx}/editform${urlSuffix}">信息修改</a></li>
						<li><a href="${ctx}/myzhaq${urlSuffix}">账户安全</a></li>
					</ol>
				</div>
				<div class="wdzh">
				<tags:tzmessage content="${message}" />
					<table>
						<tr>
							<td align="right">账号：</td>
							<td><div>${user.loginName }</div></td>
						</tr>
						<tr>
							<td align="right">昵称：</td>
							<td><div>${user.name }</div></td>
						</tr>
						<tr>
							<td align="right">头像：</td>
							<td><div><img src="${user.headimage}" width="260" height="270" "/></div></td>
						</tr>
						<tr>
							<td align="right">真实姓名：</td>
							<td><div>${user.realname }</div></td>
						</tr>
						<tr>
							<td align="right">性别：</td>
							<td><div>${fns:getDictLabel(user.sex, 'sex', '')}</div></td>
						</tr>
						<tr>
							<td align="right">电子邮箱：</td>
							<td><div>${user.email }</div></td>
						</tr>
						<tr>
							<td align="right">出生日期：</td>
							<td><div>${user.birthdate }</div></td>
						</tr>
						<tr>
							<td align="right">联系方式：</td>
							<td><div>${user.phone }</div></td>
						</tr>
						<tr>
							<td align="right">QQ：</td>
							<td><div>${user.QQ }</div></td>
						</tr>
						<tr>
							<td align="right">微信号：</td>
							<td><div>${user.weixin }</div></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
