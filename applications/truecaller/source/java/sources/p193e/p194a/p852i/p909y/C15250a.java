package p193e.p194a.p852i.p909y;

import android.net.Uri;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.y.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/y/a.class */
public final class C15250a {

    /* renamed from: a */
    public final g f43420a = C25225a.m3978P1(e.b);

    /* renamed from: a */
    public final List<String> m19002a(String str) {
        List<String> list;
        if (str != null) {
            k m19000c = m19000c();
            l.d(m19000c, "gson");
            Type type = new a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = m19000c.g(str, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            list = (List) g;
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: b */
    public final Uri m19001b(String str) {
        Uri uri;
        if (str != null) {
            k m19000c = m19000c();
            l.d(m19000c, "gson");
            Type type = new b().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = m19000c.g(str, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            uri = (Uri) g;
        } else {
            uri = null;
        }
        return uri;
    }

    /* renamed from: c */
    public final k m19000c() {
        return (k) this.f43420a.getValue();
    }

    /* renamed from: d */
    public final String m18999d(Uri uri) {
        String str;
        if (uri != null) {
            k m19000c = m19000c();
            l.d(m19000c, "gson");
            Type type = new d().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            str = m19000c.n(uri, type);
            l.d(str, "this.toJson(src, typeToken<T>())");
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: e */
    public final String m18998e(List<String> list) {
        String str;
        if (list != null) {
            k m19000c = m19000c();
            l.d(m19000c, "gson");
            Type type = new c().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            str = m19000c.n(list, type);
            l.d(str, "this.toJson(src, typeToken<T>())");
        } else {
            str = null;
        }
        return str;
    }
}
