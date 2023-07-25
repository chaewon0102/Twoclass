package com.itwillbs.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ProductDTO;



/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
//	@Inject
//	private ProduuctService productService;
	
	//<<관리자 상품등록, 등록 리스트>> 
	//상품등록(관리자) 맵핑 productRegistration.jsp
	@RequestMapping(value = "/product/productRegistration", method = RequestMethod.GET)
	public String productRegistration() {
		
		return "product/productRegistration";  
	}
	//상품등처리
	@RequestMapping(value = "/product/productRegistrationPro", method = RequestMethod.GET)
	public String productRegistrationPro(ProductDTO productDTO ) {
		
			
//		productService.registerProduct(productDTO);
		
		return "redirect:/product/adminproductList";
	}
	
	//상품등록리스트(관리자)adminproductList.jsp
	@RequestMapping(value = "/product/adminproductList", method = RequestMethod.GET)
	public String productRegistrationList(ProductDTO productDTO) {
		
		
		//상품등록리스트 페이징
//		productService.getProductList(pageDTO);
		
		//상품 카운터
//		productService.getProductCount(productDTO);
		
		return "product/adminproductList";
	}
	
	//상품수정(관리자) adminproductUpdate.jsp
	@RequestMapping(value = "/product/adminproductUpdate", method = RequestMethod.GET)
	public String adminproductUpdate() {
		
		//DTO에 저장하여 상품 content.jsp?num=1 처리(getProduct)
		
		return "product/adminproductUpdate";
	}
	
	//상품수정(관리자)처리 
	@RequestMapping(value = "/product/adminproductUpdatePro", method = RequestMethod.GET)
	public String adminproductUpdatePro() {
		
		//수정할 상품품목,수량,기타 등 데이터 처리(updateProduct)
		
		//수정이 완료 되면 리스트로 이동
		return "redirect:/product/adminproductList";
	}
	
	//상품삭제(관리자)
	@RequestMapping(value = "/product/adminproductDelete", method = RequestMethod.GET)
	public String adminproductDelete() {
		
		//num 순으로 삭제 처리(deleteProduct)
		
		//삭제가 완료되면 리스트로 이동
		return "redirect:/product/adminproductList";
	}
	
	//<<<소비자>>>
	//상품목록
	//product/productList.jsp
	@RequestMapping(value = "/product/productList", method = RequestMethod.GET)
	public String productList(ProductDTO productDTO) {
		
		//productService.selectlist(productDTO);
		//list<product> product list =("list",list);
		
		//수강회원만 볼 수 있게 상품목록 데이터 처리(if문 활용)
			
		return "product/productList"; 
	}
	
	//상품 상세정보
	//product/productDetail.jsp(사이트에 장바구니 담기 구현)
	@RequestMapping(value = "/product/productDetail", method = RequestMethod.POST)
	public String productDetail() {
		
		//상품번호가 일치하면 주문 상세정보 보여주게 처리 
		
		return "product/productDetail"; 
	}
	
	// <<장바구니>
	//장바구니담기 (productBasketAddPro 추후 메소드를 호출할 지 고민 )
	//product/productBasketAdd.jsp(// 장바구니  기능 구현 - 각각의 링크 클릭시 해당 페이지로 정보를 가지고 이동 ) 
	@RequestMapping(value = "/product/productBasketAdd", method = RequestMethod.GET)
	public String productBasketAdd() {
		
		return "product/productBasketAdd";
	}
	
	//장바구니리스트(목록)
	//product/productBasketList.jsp
	@RequestMapping(value = "/product/productBasketList", method = RequestMethod.GET)
	public String productBasketList() {
		
		//장바구니 정보(옵션, 구매수량)+해당 상품정보(이름,이미지,가격) 가져오는 메서드 호출 
		
		return "product/productBasketList";
	}
	//장바구니 수량 수정
	@RequestMapping(value = "/product/productBasketUpdate", method = RequestMethod.POST)
	public String productBasketUpdate() {
		
		return "redirect:/product/productBasketList";
	}
	//장바구니삭제
	@RequestMapping(value = "/product/productBasketDelete", method = RequestMethod.POST)
	public String productBasketAddPro() {
		//num값을 받아와서 삭제 
		
		return "redirect:/product/productBasketList";
	}
//	//구매하기(장바구니 정보 가져와야함)
	//product/productOrders.jsp
	@RequestMapping(value = "/product/productOrders", method = RequestMethod.POST)
	public String productOrders() {
		
		//장바구니 정보 저장
		// 구배회원정보 저장 
		return "product/productOrders";
	}
	//상품 결제 
	
	
	
	
	
	
	
	
}
