package p193e.p194a.p852i.p870d0;

import android.net.Uri;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.i.d0.g */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/g.class */
public final class C15121g {

    /* renamed from: a */
    public static final C15121g f43083a = new C15121g();

    /* renamed from: a */
    public static String m19154a(C15121g c15121g, String str, String str2, String str3, String str4, String str5, int i) {
        String str6 = (i & 1) != 0 ? "postback" : null;
        Object obj = "install";
        String str7 = (i & 2) != 0 ? "install" : null;
        if ((i & 4) == 0) {
            obj = null;
        }
        l.e(str6, "type");
        l.e(str7, "subType");
        l.e(obj, "event");
        l.e(str4, "partnerId");
        l.e(str5, "trackerId");
        Map e0 = i.e0(new k[]{new k("type", str6), new k("subtype", str7), new k("event", obj), new k("partnerId", str4), new k("trackerId", str5)});
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry entry : ((LinkedHashMap) e0).entrySet()) {
            builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        Uri build = builder.build();
        l.d(build, "Uri.Builder().apply {\n  …alue) }\n        }.build()");
        String encodedQuery = build.getEncodedQuery();
        String str8 = null;
        if (encodedQuery != null) {
            str8 = URLEncoder.encode(encodedQuery, AbstractC22212i.PROTOCOL_CHARSET);
            l.d(str8, "URLEncoder.encode(this, \"utf-8\")");
        }
        return str8;
    }
}
