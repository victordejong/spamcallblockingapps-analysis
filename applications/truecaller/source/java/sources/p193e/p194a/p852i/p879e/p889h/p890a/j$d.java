package p193e.p194a.p852i.p879e.p889h.p890a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p193e.p194a.p852i.p879e.p889h.p891b.C15150c;
/* renamed from: e.a.i.e.h.a.j$d */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/j$d.class */
public class j$d implements Callable<List<C15150c>> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43137a;

    /* renamed from: b */
    public final /* synthetic */ j f43138b;

    public j$d(j jVar, C25686y c25686y) {
        this.f43138b = jVar;
        this.f43137a = c25686y;
    }

    @Override // java.util.concurrent.Callable
    public List<C15150c> call() throws Exception {
        Cursor m3090b = C25653b.m3090b(this.f43138b.a, this.f43137a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "lead_gen_id");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "form_response");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "form_submitted");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C15150c c15150c = new C15150c(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04) != 0);
                c15150c.f43185a = m3090b.getLong(m43237g0);
                arrayList.add(c15150c);
            }
            return arrayList;
        } finally {
            m3090b.close();
            this.f43137a.m3057l();
        }
    }
}
