package com.inmobi.commons.core.utilities.uid;

import android.util.Base64;
import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.utilities.uid.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/uid/d.class */
public class C8418d {

    /* renamed from: a */
    public Map<String, Boolean> f32708a;

    public C8418d(Map<String, Boolean> map) {
        this.f32708a = map;
    }

    /* renamed from: a */
    public static String m5621a(String str, String str2) {
        String str3;
        try {
            byte[] bytes = str.getBytes(Request.DEFAULT_PARAMS_ENCODING);
            byte[] bArr = new byte[bytes.length];
            byte[] bytes2 = str2.getBytes(Request.DEFAULT_PARAMS_ENCODING);
            for (int i = 0; i < bytes.length; i++) {
                bArr[i] = (byte) (bytes[i] ^ bytes2[i % bytes2.length]);
            }
            str3 = new String(Base64.encode(bArr, 2), Request.DEFAULT_PARAMS_ENCODING);
        } catch (UnsupportedEncodingException e) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: a */
    private void m5619a(String str, boolean z, Map<String, String> map, String str2) {
        try {
            if (this.f32708a.get("UM5").booleanValue() && str2 == null) {
                C8416c.m5632a();
                C8416c.m5632a();
                String a = C8416c.m5631a(C8416c.m5627e(), "MD5");
                String str3 = a;
                if (z) {
                    str3 = m5621a(a, str);
                }
                map.put("UM5", str3);
            }
            if (this.f32708a.get("O1").booleanValue() && str2 == null) {
                C8416c.m5632a();
                C8416c.m5632a();
                String a2 = C8416c.m5631a(C8416c.m5627e(), "SHA-1");
                String str4 = a2;
                if (z) {
                    str4 = m5621a(a2, str);
                }
                map.put("O1", str4);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final Map<String, String> m5620a(String str, boolean z) {
        HashMap hashMap = new HashMap();
        String str2 = null;
        String str3 = null;
        try {
            if (this.f32708a.get("GPID").booleanValue()) {
                C8416c.m5632a();
                C8414a f = C8416c.m5626f();
                str3 = null;
                if (f != null) {
                    String str4 = f.f32699a;
                    str3 = str4;
                    if (str4 != null) {
                        str3 = str4;
                        if (z) {
                            str3 = m5621a(str4, str);
                        }
                        hashMap.put("GPID", str3);
                    }
                }
            }
            str2 = str3;
            m5619a(str, z, hashMap, str3);
        } catch (Exception e) {
            m5619a(str, z, hashMap, str2);
        }
        return hashMap;
    }
}
