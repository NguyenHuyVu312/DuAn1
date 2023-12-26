<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
article {
	min-height: 700px;
}

.tieude { #14ffe9 , #ffeb3b, #ff00e0);
	color: transparent;
	background: linear-gradient(to right, #14ffe9, #ffeb3b, #ff00e0);
	-webkit-background-clip: text;
	background: linear-gradient(to right,
}
</style>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<body>
	<div class="row col-12 ">
		<article class="col-10 ">
			<div class="col-10 m-auto mt-5">
				<div class="card bg-dark p-0">
					<div class="card-body m-auto">
						<img
							src="/Ps20704__nguyenhuyvu_asm/images/phim/chainsaw-man-1.jpg"
							class="card-img-top p-0" style="width: 100%; height: 80%;"
							alt="...">

					</div>
					<div class="card-footer">
						<h1 class="tieude text-center">Chainsaw Man</h1>
					</div>
				</div>

			</div>
			<div class="card col-10 m-auto mt-3">
				<div class="card-header">
					<div class=" col-12 ">
						<button class="btn btn-outline-primary" type="button">
							Like</button>
						<button class="btn btn-outline-primary" type="button">
							Share</button>
					</div>
					<div class="card-body">
					<h3 class="text-success ">Nội dung phim và review</h3>
						<div>  Thợ Săn Qủy 2022 Full HD Vietsub Thuyết Minh
							Denji có một ước mơ đơn giản - sống một cuộc sống hạnh phúc và
							yên bình, dành thời gian cho một cô gái mà anh ấy thích. Tuy
							nhiên, điều này khác xa so với thực tế, vì Denji bị yakuza buộc
							phải giết quỷ để trả nợ nần chồng chất của mình. Sử dụng con quỷ
							cưng Pochita của mình như một vũ khí, anh ta sẵn sàng làm bất cứ
							điều gì chỉ vì một chút tiền mặt. Thật không may, anh ta đã không
							còn hữu dụng và bị giết bởi một ác quỷ trong hợp đồng với yakuza.
							Tuy nhiên, trong một biến cố bất ngờ, Pochita hợp nhất với xác
							chết của Denji và ban cho anh sức mạnh của một con quỷ cưa máy.
							Bây giờ có thể biến các bộ phận của cơ thể thành cưa máy, một
							Denji được hồi sinh sử dụng khả năng mới của mình để tiêu diệt kẻ
							thù của mình một cách nhanh chóng và tàn bạo. Để lọt vào mắt xanh
							của những thợ săn ma quỷ chính thức đến hiện trường, anh ta được
							mời làm việc tại Cục An toàn Công cộng với tư cách là một trong
							số họ. Bây giờ với phương tiện để đối mặt với ngay cả những kẻ
							thù khó khăn nhất, Denji sẽ không dừng lại ở bất cứ điều gì để
							đạt được ước mơ tuổi thiếu niên đơn giản của mình. </div>
					</div>
				</div>
		</article>
		<aside class="col-2  p-0 mt-4">
				<c:forEach var="item" items="${videos}" begin="1" end="5" >

					<div class="card bg-dark mt-4 ">
						<div class="card-body m-auto ">
							<img
								src="/Ps20704__nguyenhuyvu_asm/images/phim/${item.poster}"
								class="card-img-top p-0"  alt="...">
						
						</div>
						
						</div>
						</c:forEach>
					<!-- <div class="card  bg-dark mt-3">
						<div class="card-body text-center">
							<img
								src="/Ps20704__nguyenhuyvu_asm/images/phim/ngu-yeu.jpg"
								class="card-img-top p-0"  alt="...">
							
						</div>
						
					</div>

				
				<div class="card  bg-dark mt-3">
						<div class="card-body">
							<img
								src="/Ps20704__nguyenhuyvu_asm/images/phim/onepice.jpg"
								class="card-img-top p-0"   alt="...">
						
						</div>
						
						
					</div>
					<div class="card  bg-dark mt-3">
						<div class="card-body">
							<img
								src="/Ps20704__nguyenhuyvu_asm/images/phim/move3.jpg"
								class="card-img-top p-0"  alt="...">
							<h1 class="tieude">Nhất Niệm Vĩnh Hằng</h1>
						</div>
						
					</div>
					 -->
		</aside>
	</div>
</body>
</html>