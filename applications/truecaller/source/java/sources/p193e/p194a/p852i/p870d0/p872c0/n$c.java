package p193e.p194a.p852i.p870d0.p872c0;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.ads.adsrouter.p132ui.AdType;
import com.truecaller.ads.mediation.model.AdPartner;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import s1.z.c.l;
/* renamed from: e.a.i.d0.c0.n$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/c0/n$c.class */
public class n$c implements Callable<C15113p> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43062a;

    /* renamed from: b */
    public final /* synthetic */ n f43063b;

    public n$c(n nVar, C25686y c25686y) {
        this.f43063b = nVar;
        this.f43062a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public C15113p call() throws Exception {
        C15113p c15113p = null;
        String str = null;
        Cursor m3090b = C25653b.m3090b(this.f43063b.a, this.f43062a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "ad_placement");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "ad_partner");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "ad_type");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "ad_response");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "ad_ecpm");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "ad_raw_ecpm");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "ad_expiry");
            if (m3090b.moveToFirst()) {
                String string = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                String string2 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                Objects.requireNonNull(this.f43063b.c);
                l.e(string2, "value");
                AdPartner valueOf = AdPartner.valueOf(string2);
                String string3 = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                Objects.requireNonNull(this.f43063b.c);
                l.e(string3, "value");
                AdType valueOf2 = AdType.valueOf(string3);
                String string4 = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                String string5 = m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06);
                if (!m3090b.isNull(m43237g07)) {
                    str = m3090b.getString(m43237g07);
                }
                C15113p c15113p2 = new C15113p(string, valueOf, valueOf2, string4, string5, str, m3090b.getLong(m43237g08));
                c15113p2.f43066a = m3090b.getLong(m43237g0);
                c15113p = c15113p2;
            }
            m3090b.close();
            this.f43062a.m3057l();
            return c15113p;
        } catch (Throwable th) {
            m3090b.close();
            this.f43062a.m3057l();
            throw th;
        }
    }
}
