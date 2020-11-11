package jp.ken.dvdrental.dao;

import java.util.List;


import jp.ken.dvdrental.entity.Product;


public interface ProductDAO<T> {
	
	public Product idSearch(int pId);
	
	public Product nameSearch(String ename);
	
	public List<T> directorSearch(String director);
	
	public List<T> vagueNameList(String vague1);
	
	//public List<T> vagueDirectorList(String vague2);
	
	public List<T> allList();
	//在庫更新
	public void updateNum(Product product) ;
	
	public boolean insertProductData(Product product);
	
	//商品削除
		public int deleteProduct(int product_Id);
		
		//商品編集
		public int updateProduct(Product product);

}
