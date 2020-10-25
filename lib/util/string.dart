class StringUtil {
  static bool equalIgnoreCase(String s1, String s2) =>
      (s1?.toLowerCase() == s2?.toLowerCase());
  static bool isNullOrEmpty(String s) => s == null || s.isEmpty;
  static bool isNotNullOrEmpty(String s) => !isNullOrEmpty(s);
}
