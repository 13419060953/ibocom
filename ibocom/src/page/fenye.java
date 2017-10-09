package page;

import java.util.List;

import ibocom.sulei.bean.articles;

public class fenye {

	private int index;//当前页
	private int indexleft;//上一页
	private int indexreight;//下一页
	
	private int size;//共多少页
	private int  count;//共多少条数据
	private List<articles> list;//获取的数据
	
	@Override
	public String toString() {
		return "fenye [index=" + index + ", indexleft=" + indexleft + ", indexreight=" + indexreight + ", size=" + size
				+ ", count=" + count + ", list=" + list + "]";
	}
	public List<articles> getList() {
		return list;
	}
	public void setList(List<articles> list) {
		this.list = list;
	}
	
	public fenye() {
		super();
	}
	
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getIndexleft() {
		return indexleft;
	}
	public void setIndexleft(int indexleft) {
		this.indexleft = indexleft;
	}
	public int getIndexreight() {
		return indexreight;
	}
	public void setIndexreight(int indexreight) {
		this.indexreight = indexreight;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
}
