package p193e.p194a.p852i.p907v;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: e.a.i.v.g$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/v/g$c.class */
public class g$c implements Callable<C15244i> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43364a;

    /* renamed from: b */
    public final /* synthetic */ g f43365b;

    public g$c(g gVar, C25686y c25686y) {
        this.f43365b = gVar;
        this.f43364a = c25686y;
    }

    @Override // java.util.concurrent.Callable
    public C15244i call() throws Exception {
        Throwable th;
        C15244i c15244i;
        Cursor m3090b = C25653b.m3090b(this.f43365b.a, this.f43364a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "ad_placement");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "ad_type");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "ad_html_content");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "ad_video_url");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "ad_logo");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "ad_image");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "ad_title");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "ad_body");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "ad_landing_url");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "ad_cta");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "ad_ecpm");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "ad_raw_ecpm");
            int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "ad_advertiser_name");
            int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "ad_height");
            try {
                int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "ad_width");
                int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "ad_click");
                int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "ad_impression");
                int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "ad_view_impression");
                int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "ad_video_impression");
                int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "ad_ttl");
                int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "ad_expiry");
                int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "ad_partner");
                int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "ad_campaign_type");
                int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "ad_publisher");
                int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "ad_partner_logo");
                int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "ad_partner_privacy");
                if (m3090b.moveToFirst()) {
                    try {
                        C15244i c15244i2 = new C15244i(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010), m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011), m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012), m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013), m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014), m3090b.isNull(m43237g015) ? null : Integer.valueOf(m3090b.getInt(m43237g015)), m3090b.isNull(m43237g016) ? null : Integer.valueOf(m3090b.getInt(m43237g016)), this.f43365b.c.m19002a(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017)), this.f43365b.c.m19002a(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018)), this.f43365b.c.m19002a(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019)), this.f43365b.c.m19002a(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020)), m3090b.getInt(m43237g021), m3090b.getLong(m43237g022), m3090b.isNull(m43237g023) ? null : m3090b.getString(m43237g023), m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024), m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025), m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026), m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027));
                        c15244i2.f43371a = m3090b.getLong(m43237g0);
                        c15244i = c15244i2;
                    } catch (Throwable th2) {
                        th = th2;
                        m3090b.close();
                        this.f43364a.m3057l();
                        throw th;
                    }
                } else {
                    c15244i = null;
                }
                m3090b.close();
                this.f43364a.m3057l();
                return c15244i;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
