package p193e.p194a.p852i.p879e.p889h.p890a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import e.a.i.y.b;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p193e.p194a.p852i.p879e.p889h.p891b.C15148a;
import p193e.p194a.p852i.p909y.C15250a;
import s1.z.c.l;
/* renamed from: e.a.i.e.h.a.c$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/c$b.class */
public class c$b implements Callable<C15148a> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43120a;

    /* renamed from: b */
    public final /* synthetic */ c f43121b;

    public c$b(c cVar, C25686y c25686y) {
        this.f43121b = cVar;
        this.f43120a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public C15148a call() throws Exception {
        List list;
        C15148a c15148a = null;
        String str = null;
        Cursor m3090b = C25653b.m3090b(this.f43121b.a, this.f43120a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "lead_gen_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "ui_config");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "ui_assets");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "pixels");
            if (m3090b.moveToFirst()) {
                String string = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                String string3 = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                C15250a c15250a = this.f43121b.c;
                Objects.requireNonNull(c15250a);
                if (string3 != null) {
                    k m19000c = c15250a.m19000c();
                    l.d(m19000c, "gson");
                    Type type = new b().getType();
                    l.d(type, "object : TypeToken<T>() {}.type");
                    Object g = m19000c.g(string3, type);
                    l.d(g, "this.fromJson(json, typeToken<T>())");
                    list = (List) g;
                } else {
                    list = null;
                }
                if (!m3090b.isNull(m43237g05)) {
                    str = m3090b.getString(m43237g05);
                }
                C15148a c15148a2 = new C15148a(string, string2, list, this.f43121b.c.m19002a(str));
                c15148a2.f43149a = m3090b.getLong(m43237g0);
                c15148a = c15148a2;
            }
            m3090b.close();
            this.f43120a.m3057l();
            return c15148a;
        } catch (Throwable th) {
            m3090b.close();
            this.f43120a.m3057l();
            throw th;
        }
    }
}
