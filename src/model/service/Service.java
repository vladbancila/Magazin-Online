package model.service;

import java.util.ArrayList;
import java.util.List;

import model.domain.Articol;

public class Service {

	private static List<Articol> toateArticole;

	static {

		toateArticole = new ArrayList<Articol>();

		toateArticole.add(new Articol(1, "Addidas", "/poze/adidas1.jpg", 200.00));
		toateArticole.add(new Articol(2, "Addidas 2", "/poze/adidas2.jpg", 250.00));
		toateArticole.add(new Articol(3, "Minge Baschet", "/poze/mingiebaschet3.jpg", 100.00));
		toateArticole.add(new Articol(4, "Bicicleta Cool", "/poze/bicla4.jpg", 200.00));
		toateArticole.add(new Articol(5, "Sanie", "/poze/sanie5.jpg", 599.99));
		toateArticole.add(new Articol(6, "Tricicleta", "/poze/tricicleta6.jpg", 199.99));
		toateArticole.add(new Articol(7, "Trenulet", "/poze/trenulet7.jpg", 1599.99));
		toateArticole.add(new Articol(8, "Elicopter", "/poze/elicopter8.jpg", 800.99));
		toateArticole.add(new Articol(9, "Minge", "/poze/mingie9.jpg", 159.99));
	}

	public static List<Articol> getToateArticole() {
		return toateArticole;
	}

	public static Articol intoarceProdus(String id) {

		int nr = Integer.parseInt(id);

		return toateArticole.get(nr - 1);
	}
}
