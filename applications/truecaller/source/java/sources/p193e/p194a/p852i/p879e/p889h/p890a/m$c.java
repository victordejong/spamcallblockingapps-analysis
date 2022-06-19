package p193e.p194a.p852i.p879e.p889h.p890a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p193e.p194a.p852i.p879e.p889h.p891b.C15151d;
/* renamed from: e.a.i.e.h.a.m$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/m$c.class */
public class m$c implements Callable<List<C15151d>> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43143a;

    /* renamed from: b */
    public final /* synthetic */ m f43144b;

    public m$c(m mVar, C25686y c25686y) {
        this.f43144b = mVar;
        this.f43143a = c25686y;
    }

    @Override // java.util.concurrent.Callable
    public List<C15151d> call() throws Exception {
        Cursor m3090b = C25653b.m3090b(this.f43144b.a, this.f43143a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "ad_pixel_type");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "ad_pixels");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C15151d c15151d = new C15151d(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03));
                c15151d.f43189a = m3090b.getLong(m43237g0);
                arrayList.add(c15151d);
            }
            return arrayList;
        } finally {
            m3090b.close();
            this.f43143a.m3057l();
        }
    }
}
