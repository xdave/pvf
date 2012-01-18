/* 
 * Copyright (c) 2012 Juan Romero Pardines.
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

namespace PropLib {
	/*
	 * Portable proplib API.
	 */
	[SimpleType]
	[CCode (cname = "prop_array_t", cheader_filename = "proplib.h")]
	public struct PArray {
	}
	[SimpleType]
	[CCode (cname = "prop_bool_t", cheader_filename = "proplib.h")]
	public struct PBool {
	}
	[SimpleType]
	[CCode (cname = "prop_data_t", cheader_filename = "proplib.h")]
	public struct PData {
	}
	[SimpleType]
	[CCode (cname = "prop_dictionary_keysym_t", cheader_filename = "proplib.h")]
	public struct PDictKeySym {
	}
	[SimpleType]
	[CCode (cname = "prop_dictionary_t", cheader_filename = "proplib.h")]
	public struct PDict {
	}
	[SimpleType]
	[CCode (cname = "prop_number_t", cheader_filename = "proplib.h")]
	public struct PNumber {
	}
	[SimpleType]
	[CCode (cname = "prop_object_iterator_t", cheader_filename = "proplib.h")]
	public struct PObjectIter {
	}
	[SimpleType]
	[CCode (cname = "prop_object_t", cheader_filename = "proplib.h")]
	public struct PObject {
	}
	[SimpleType]
	[CCode (cname = "prop_string_t", cheader_filename = "proplib.h")]
	public struct PString {
	}
	[CCode (cheader_filename = "proplib.h", cprefix = "PROP_TYPE_", has_type_id = false)]
	public enum PObjType {
		UNKNOWN,
		BOOL,
		NUMBER,
		STRING,
		DATA,
		ARRAY,
		DICTIONARY,
		DICT_KEYSYM
	}
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add")]
	public static bool prop_array_add (PropLib.PArray p1, PropLib.PObject p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_and_rel")]
	public static bool prop_array_add_and_rel (PropLib.PArray p1, PropLib.PObject p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_cstring")]
	public static bool prop_array_add_cstring (PropLib.PArray p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_cstring_nocopy")]
	public static bool prop_array_add_cstring_nocopy (PropLib.PArray p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_int16")]
	public static bool prop_array_add_int16 (PropLib.PArray p1, int16 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_int32")]
	public static bool prop_array_add_int32 (PropLib.PArray p1, int32 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_int64")]
	public static bool prop_array_add_int64 (PropLib.PArray p1, int64 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_int8")]
	public static bool prop_array_add_int8 (PropLib.PArray p1, char p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_uint16")]
	public static bool prop_array_add_uint16 (PropLib.PArray p1, uint16 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_uint32")]
	public static bool prop_array_add_uint32 (PropLib.PArray p1, uint32 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_uint64")]
	public static bool prop_array_add_uint64 (PropLib.PArray p1, uint64 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_add_uint8")]
	public static bool prop_array_add_uint8 (PropLib.PArray p1, uchar p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_capacity")]
	public static uint prop_array_capacity (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_copy")]
	public static unowned PropLib.PArray prop_array_copy (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_copy_mutable")]
	public static unowned PropLib.PArray prop_array_copy_mutable (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_count")]
	public static uint prop_array_count (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_create")]
	public static unowned PropLib.PArray prop_array_create ();
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_create_with_capacity")]
	public static unowned PropLib.PArray prop_array_create_with_capacity (uint p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_ensure_capacity")]
	public static bool prop_array_ensure_capacity (PropLib.PArray p1, uint p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_equals")]
	public static bool prop_array_equals (PropLib.PArray p1, PropLib.PArray p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_externalize")]
	public static unowned string prop_array_externalize (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_externalize_to_file")]
	public static bool prop_array_externalize_to_file (PropLib.PArray p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_externalize_to_zfile")]
	public static bool prop_array_externalize_to_zfile (PropLib.PArray p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get")]
	public static unowned PropLib.PObject prop_array_get (PropLib.PArray p1, uint p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_bool")]
	public static bool prop_array_get_bool (PropLib.PArray p1, uint p2, bool p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_cstring")]
	public static bool prop_array_get_cstring (PropLib.PArray p1, uint p2, out unowned string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_cstring_nocopy")]
	public static bool prop_array_get_cstring_nocopy (PropLib.PArray p1, uint p2, out unowned string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_int16")]
	public static bool prop_array_get_int16 (PropLib.PArray p1, uint p2, int16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_int32")]
	public static bool prop_array_get_int32 (PropLib.PArray p1, uint p2, int32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_int64")]
	public static bool prop_array_get_int64 (PropLib.PArray p1, uint p2, int64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_int8")]
	public static bool prop_array_get_int8 (PropLib.PArray p1, uint p2, char p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_uint16")]
	public static bool prop_array_get_uint16 (PropLib.PArray p1, uint p2, uint16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_uint32")]
	public static bool prop_array_get_uint32 (PropLib.PArray p1, uint p2, uint32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_uint64")]
	public static bool prop_array_get_uint64 (PropLib.PArray p1, uint p2, uint64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_get_uint8")]
	public static bool prop_array_get_uint8 (PropLib.PArray p1, uint p2, uchar p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_internalize")]
	public static unowned PropLib.PArray prop_array_internalize (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_internalize_from_file")]
	public static unowned PropLib.PArray prop_array_internalize_from_file (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_internalize_from_zfile")]
	public static unowned PropLib.PArray prop_array_internalize_from_zfile (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_iterator")]
	public static unowned PropLib.PObjectIter prop_array_iterator (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_make_immutable")]
	public static void prop_array_make_immutable (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_mutable")]
	public static bool prop_array_mutable (PropLib.PArray p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_remove")]
	public static void prop_array_remove (PropLib.PArray p1, uint p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set")]
	public static bool prop_array_set (PropLib.PArray p1, uint p2, PropLib.PObject p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_bool")]
	public static bool prop_array_set_bool (PropLib.PArray p1, uint p2, bool p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_cstring")]
	public static bool prop_array_set_cstring (PropLib.PArray p1, uint p2, string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_cstring_nocopy")]
	public static bool prop_array_set_cstring_nocopy (PropLib.PArray p1, uint p2, string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_int16")]
	public static bool prop_array_set_int16 (PropLib.PArray p1, uint p2, int16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_int32")]
	public static bool prop_array_set_int32 (PropLib.PArray p1, uint p2, int32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_int64")]
	public static bool prop_array_set_int64 (PropLib.PArray p1, uint p2, int64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_int8")]
	public static bool prop_array_set_int8 (PropLib.PArray p1, uint p2, char p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_uint16")]
	public static bool prop_array_set_uint16 (PropLib.PArray p1, uint p2, uint16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_uint32")]
	public static bool prop_array_set_uint32 (PropLib.PArray p1, uint p2, uint32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_uint64")]
	public static bool prop_array_set_uint64 (PropLib.PArray p1, uint p2, uint64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_array_set_uint8")]
	public static bool prop_array_set_uint8 (PropLib.PArray p1, uint p2, uchar p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_bool_copy")]
	public static unowned PropLib.PBool prop_bool_copy (PropLib.PBool p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_bool_create")]
	public static unowned PropLib.PBool prop_bool_create (bool p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_bool_equals")]
	public static bool prop_bool_equals (PropLib.PBool p1, PropLib.PBool p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_PBoolrue")]
	public static bool prop_PBoolrue (PropLib.PBool p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_copy")]
	public static unowned PropLib.PData prop_data_copy (PropLib.PData p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_create_data")]
	public static unowned PropLib.PData prop_data_create_data (void* p1, size_t p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_create_data_nocopy")]
	public static unowned PropLib.PData prop_data_create_data_nocopy (void* p1, size_t p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_data")]
	public static void* prop_data_data (PropLib.PData p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_data_nocopy")]
	public static void* prop_data_data_nocopy (PropLib.PData p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_equals")]
	public static bool prop_data_equals (PropLib.PData p1, PropLib.PData p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_equals_data")]
	public static bool prop_data_equals_data (PropLib.PData p1, void* p2, size_t p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_data_size")]
	public static size_t prop_data_size (PropLib.PData p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_all_keys")]
	public static unowned PropLib.PArray prop_dictionary_all_keys (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_copy")]
	public static unowned PropLib.PDict prop_dictionary_copy (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_copy_mutable")]
	public static unowned PropLib.PDict prop_dictionary_copy_mutable (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_count")]
	public static uint prop_dictionary_count (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_create")]
	public static unowned PropLib.PDict prop_dictionary_create ();
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_create_with_capacity")]
	public static unowned PropLib.PDict prop_dictionary_create_with_capacity (uint p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_ensure_capacity")]
	public static bool prop_dictionary_ensure_capacity (PropLib.PDict p1, uint p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_equals")]
	public static bool prop_dictionary_equals (PropLib.PDict p1, PropLib.PDict p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_externalize")]
	public static unowned string prop_dictionary_externalize (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_externalize_to_file")]
	public static bool prop_dictionary_externalize_to_file (PropLib.PDict p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_externalize_to_zfile")]
	public static bool prop_dictionary_externalize_to_zfile (PropLib.PDict p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get")]
	public static unowned PropLib.PObject prop_dictionary_get (PropLib.PDict p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_bool")]
	public static bool prop_dictionary_get_bool (PropLib.PDict p1, string p2, bool p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_cstring")]
	public static bool prop_dictionary_get_cstring (PropLib.PDict p1, string p2, out unowned string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_cstring_nocopy")]
	public static bool prop_dictionary_get_cstring_nocopy (PropLib.PDict p1, string p2, out unowned string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_dict")]
	public static bool prop_dictionary_get_dict (PropLib.PDict p1, string p2, PropLib.PDict p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_int16")]
	public static bool prop_dictionary_get_int16 (PropLib.PDict p1, string p2, int16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_int32")]
	public static bool prop_dictionary_get_int32 (PropLib.PDict p1, string p2, int32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_int64")]
	public static bool prop_dictionary_get_int64 (PropLib.PDict p1, string p2, int64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_int8")]
	public static bool prop_dictionary_get_int8 (PropLib.PDict p1, string p2, char p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_keysym")]
	public static unowned PropLib.PObject prop_dictionary_get_keysym (PropLib.PDict p1, PropLib.PDictKeySym p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_uint16")]
	public static bool prop_dictionary_get_uint16 (PropLib.PDict p1, string p2, uint16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_uint32")]
	public static bool prop_dictionary_get_uint32 (PropLib.PDict p1, string p2, uint32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_uint64")]
	public static bool prop_dictionary_get_uint64 (PropLib.PDict p1, string p2, uint64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_get_uint8")]
	public static bool prop_dictionary_get_uint8 (PropLib.PDict p1, string p2, uchar p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_internalize")]
	public static unowned PropLib.PDict prop_dictionary_internalize (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_internalize_from_file")]
	public static unowned PropLib.PDict prop_dictionary_internalize_from_file (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_internalize_from_zfile")]
	public static unowned PropLib.PDict prop_dictionary_internalize_from_zfile (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_iterator")]
	public static unowned PropLib.PObjectIter prop_dictionary_iterator (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_keysym_cstring_nocopy")]
	public static unowned string prop_dictionary_keysym_cstring_nocopy (PropLib.PDictKeySym p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_keysym_equals")]
	public static bool prop_dictionary_keysym_equals (PropLib.PDictKeySym p1, PropLib.PDictKeySym p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_make_immutable")]
	public static void prop_dictionary_make_immutable (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_mutable")]
	public static bool prop_dictionary_mutable (PropLib.PDict p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_remove")]
	public static void prop_dictionary_remove (PropLib.PDict p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_remove_keysym")]
	public static void prop_dictionary_remove_keysym (PropLib.PDict p1, PropLib.PDictKeySym p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set")]
	public static bool prop_dictionary_set (PropLib.PDict p1, string p2, PropLib.PObject p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_and_rel")]
	public static bool prop_dictionary_set_and_rel (PropLib.PDict p1, string p2, PropLib.PObject p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_bool")]
	public static bool prop_dictionary_set_bool (PropLib.PDict p1, string p2, bool p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_cstring")]
	public static bool prop_dictionary_set_cstring (PropLib.PDict p1, string p2, string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_cstring_nocopy")]
	public static bool prop_dictionary_set_cstring_nocopy (PropLib.PDict p1, string p2, string p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_int16")]
	public static bool prop_dictionary_set_int16 (PropLib.PDict p1, string p2, int16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_int32")]
	public static bool prop_dictionary_set_int32 (PropLib.PDict p1, string p2, int32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_int64")]
	public static bool prop_dictionary_set_int64 (PropLib.PDict p1, string p2, int64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_int8")]
	public static bool prop_dictionary_set_int8 (PropLib.PDict p1, string p2, char p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_keysym")]
	public static bool prop_dictionary_set_keysym (PropLib.PDict p1, PropLib.PDictKeySym p2, PropLib.PObject p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_uint16")]
	public static bool prop_dictionary_set_uint16 (PropLib.PDict p1, string p2, uint16 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_uint32")]
	public static bool prop_dictionary_set_uint32 (PropLib.PDict p1, string p2, uint32 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_uint64")]
	public static bool prop_dictionary_set_uint64 (PropLib.PDict p1, string p2, uint64 p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_dictionary_set_uint8")]
	public static bool prop_dictionary_set_uint8 (PropLib.PDict p1, string p2, uchar p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_copy")]
	public static unowned PropLib.PNumber prop_number_copy (PropLib.PNumber p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_create_integer")]
	public static unowned PropLib.PNumber prop_number_create_integer (int64 p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_create_unsigned_integer")]
	public static unowned PropLib.PNumber prop_number_create_unsigned_integer (uint64 p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_equals")]
	public static bool prop_number_equals (PropLib.PNumber p1, PropLib.PNumber p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_equals_integer")]
	public static bool prop_number_equals_integer (PropLib.PNumber p1, int64 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_equals_unsigned_integer")]
	public static bool prop_number_equals_unsigned_integer (PropLib.PNumber p1, uint64 p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_integer_value")]
	public static int64 prop_number_integer_value (PropLib.PNumber p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_size")]
	public static int prop_number_size (PropLib.PNumber p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_unsigned")]
	public static bool prop_number_unsigned (PropLib.PNumber p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_number_unsigned_integer_value")]
	public static uint64 prop_number_unsigned_integer_value (PropLib.PNumber p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_equals")]
	public static bool prop_object_equals (PropLib.PObject p1, PropLib.PObject p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_equals_with_error")]
	public static bool prop_object_equals_with_error (PropLib.PObject p1, PropLib.PObject p2, bool p3);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_iterator_next")]
	public static unowned PropLib.PObject prop_object_iterator_next (PropLib.PObjectIter p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_iterator_release")]
	public static void prop_object_iterator_release (PropLib.PObjectIter p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_iterator_reset")]
	public static void prop_object_iterator_reset (PropLib.PObjectIter p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_release")]
	public static void prop_object_release (PropLib.PObject p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_retain")]
	public static void prop_object_retain (PropLib.PObject p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_object_type")]
	public static PropLib.PObjType prop_object_type (PropLib.PObject p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_append")]
	public static bool prop_string_append (PropLib.PString p1, PropLib.PString p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_append_cstring")]
	public static bool prop_string_append_cstring (PropLib.PString p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_copy")]
	public static unowned PropLib.PString prop_string_copy (PropLib.PString p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_copy_mutable")]
	public static unowned PropLib.PString prop_string_copy_mutable (PropLib.PString p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_create")]
	public static unowned PropLib.PString prop_string_create ();
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_create_cstring")]
	public static unowned PropLib.PString prop_string_create_cstring (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_create_cstring_nocopy")]
	public static unowned PropLib.PString prop_string_create_cstring_nocopy (string p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_cstring")]
	public static unowned string prop_string_cstring (PropLib.PString p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_cstring_nocopy")]
	public static unowned string prop_string_cstring_nocopy (PropLib.PString p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_equals")]
	public static bool prop_string_equals (PropLib.PString p1, PropLib.PString p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_equals_cstring")]
	public static bool prop_string_equals_cstring (PropLib.PString p1, string p2);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_mutable")]
	public static bool prop_string_mutable (PropLib.PString p1);
	[CCode (cheader_filename = "proplib.h", cname = "prop_string_size")]
	public static size_t prop_string_size (PropLib.PString p1);
}
