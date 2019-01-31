//package javaBean;
//
//import java.io.Serializable;
//import java.util.ArrayList;
//
//public class Cart implements Serializable {
//
//    private static ArrayList<Movie> movieList;
//
//    public Cart() {
//        movieList = new ArrayList<>();
//    }
//
//    public ArrayList<Movie> getItem() {
//        return movieList;
//    }
//
//    public int getCount() {
//        return movieList.size();
//    }
//
//    public void addMovie(Movie m) {
//        movieList.add(m);
//    }
//
//    public void removeMovie(Movie m) {
//        movieList.remove(m);
//    }
//
//    public static void display() {
//        for (int i = 0; i < movieList.size(); i++) {
//            System.out.println("title = " + movieList.get(i).getTitle() 
//                    + " Price = $4.99");
//
//        }
//    }
//}
