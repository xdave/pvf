/*
 * Copyright (c) 2012 Juan Romero Pardines.
 * Copyright (c) 2012 Dave Elusive <davehome@redthumb.info.tm>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

using PropLib;

public class PVersionFinder {
	private PDict pkgd;
	private string val;
	public string pkgname;
	public bool found;

	public PVersionFinder() {}

	private void init(string pkg) {
		string file = "/var/db/xbps/metadata/%s/props.plist".printf(pkg);
		pkgd = prop_dictionary_internalize_from_zfile(file);
	}

	public string getVersion(string pkg = pkgname) {
		if (pkg != pkgname) { init(pkg); }
		found = prop_dictionary_get_cstring_nocopy(pkgd, "pkgver", out val);
		if (!found) {
			val = "Can't find 'pkgver' object for: '%s'!!".printf(pkg);
			return val;
		}
		return val;
	}

	~PVersionFinder() {
		if (found) {
			prop_object_release((PObject)pkgd);
		}
	}
}
