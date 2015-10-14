package com.oneler.collection;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class HashMapTest {
	public static void main(String[] args) {
		HashMap<String,String> map=new HashMap<String,String>();
		Iterator<Entry<String, String>> iter=map.entrySet().iterator();
		for(iter.hasNext()){
		Map.Entry<String, String> map=	iter.next();
		Object value=map.getValue();
		
		
		}
		for(int i=0;i<100000;i++){
			map.put(i+"", "nihaoa");
		}

}
}
