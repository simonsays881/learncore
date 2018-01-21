package ta.simon.learncore.java;

import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ScrambleArray {

  public static void main(String[] args) {
    final String[] array = args;// {39, 46, 91, 11, 4, 0, 2};

    System.out.println("Before the shuffle: " + Arrays.toString(array));
    System.out.println("....");
    System.out.println("After the shuffle: " + shuffle(array));
  }

  private static String shuffle(String[] array) {
    final List<String> shuffled = shuffle(asList(array));
    return shuffled.toString();
  }

  private static List<String> asList(String[] array) {
    final List<String> list = new ArrayList<>();

    for (int i = 0; i < array.length; i++) {
      list.add(array[i]);
    }
    return list;
  }

  private static List<String> shuffle(List<String> list) {
    final Random rand = new Random();
    final int length = list.size();
    final List<String> shuffled = new ArrayList<>();

    for (int i = 0; i < length; i++) {
    final int n = rand.nextInt(list.size());
    final String index = list.remove(n);

    shuffled.add(index);
    }
    return shuffled;
  }
}
