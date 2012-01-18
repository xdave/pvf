using PropLib;

public class PVersionFinder {
	public PDict pkgd;
	public string val;
	public string pkgname;
	public bool found;
	public bool done;

	public PVersionFinder() {}
	
	private void init(string pkg) {
		string file = "/var/db/xbps/metadata/" + pkg + "/props.plist";
		pkgd = prop_dictionary_internalize_from_zfile(file);
	}
	
	public string getVersion(string pkg = pkgname) {
		string msg;
		if (pkg != pkgname) { init(pkg); } 
		found = prop_dictionary_get_cstring_nocopy(pkgd, "pkgver", out val);
		if (!found) {
			msg = "Can't find 'pkgver' object for: '" + pkg + "'!!";
			return msg;
		}
		return val;
	}
	
	~PVersionFinder() {
		if (found) {
			prop_object_release((PObject)pkgd);
		}
	}
}
