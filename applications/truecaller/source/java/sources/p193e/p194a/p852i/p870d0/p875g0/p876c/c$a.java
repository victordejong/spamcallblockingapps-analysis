package p193e.p194a.p852i.p870d0.p875g0.p876c;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: e.a.i.d0.g0.c.c$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/g0/c/c$a.class */
public class c$a implements Callable<C15124e> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43084a;

    /* renamed from: b */
    public final /* synthetic */ c f43085b;

    public c$a(c cVar, C25686y c25686y) {
        this.f43085b = cVar;
        this.f43084a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public C15124e call() throws Exception {
        C15124e c15124e = null;
        Cursor m3090b = C25653b.m3090b(this.f43085b.a, this.f43084a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, FacebookMediationAdapter.RTB_PLACEMENT_PARAMETER);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "partner_id");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "pricing_model");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "pricing_ecpm");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "ad_types");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "floor_price");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, RemoteMessageConst.TTL);
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "expires_at");
            if (m3090b.moveToFirst()) {
                C15124e c15124e2 = new C15124e(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), this.f43085b.c.m19002a(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06)), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.getLong(m43237g08), m3090b.getLong(m43237g09));
                c15124e2.f43091a = m3090b.getLong(m43237g0);
                c15124e = c15124e2;
            }
            m3090b.close();
            this.f43084a.m3057l();
            return c15124e;
        } catch (Throwable th) {
            m3090b.close();
            this.f43084a.m3057l();
            throw th;
        }
    }
}
