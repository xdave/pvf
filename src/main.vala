public static int main(string[] args) {
	if (args.length < 2) {
		stdout.printf("Usage: %s <pkgname(s) ...>\n", args[0]);
		return 1;
	}
	var pvf = new PVersionFinder();
	for (int i = 1; i < args.length; i++) {
		stdout.printf("%d: %s\n", i, pvf.getVersion(args[i]));
	}
	return 0;
}
