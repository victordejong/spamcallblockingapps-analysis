package p193e.p194a.p852i.p879e.p889h.p890a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p193e.p194a.p852i.p879e.p889h.p891b.C15149b;
/* renamed from: e.a.i.e.h.a.f$e */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/a/f$e.class */
public class f$e implements Callable<C15149b> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f43127a;

    /* renamed from: b */
    public final /* synthetic */ f f43128b;

    public f$e(f fVar, C25686y c25686y) {
        this.f43128b = fVar;
        this.f43127a = c25686y;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public C15149b call() throws Exception {
        C15149b c15149b;
        Cursor m3090b = C25653b.m3090b(this.f43128b.a, this.f43127a, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "ad_type");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "ad_html_content");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "ad_video_uri");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "ad_logo_uri");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "ad_image_uri");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "ad_title");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "ad_body");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "ad_landing_url");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "ad_external_landing_url");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "ad_cta");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "ad_ecpm");
            int m43237g013 = MediaSessionCompat.m43237g0(m3090b, "ad_raw_ecpm");
            int m43237g014 = MediaSessionCompat.m43237g0(m3090b, "ad_advertiser_name");
            int m43237g015 = MediaSessionCompat.m43237g0(m3090b, "ad_height");
            int m43237g016 = MediaSessionCompat.m43237g0(m3090b, "ad_width");
            int m43237g017 = MediaSessionCompat.m43237g0(m3090b, "ad_click");
            int m43237g018 = MediaSessionCompat.m43237g0(m3090b, "ad_impression");
            int m43237g019 = MediaSessionCompat.m43237g0(m3090b, "ad_view_impression");
            int m43237g020 = MediaSessionCompat.m43237g0(m3090b, "ad_video_impression");
            int m43237g021 = MediaSessionCompat.m43237g0(m3090b, "ad_thank_you_pixels");
            int m43237g022 = MediaSessionCompat.m43237g0(m3090b, "ad_ttl");
            int m43237g023 = MediaSessionCompat.m43237g0(m3090b, "ad_expiry");
            int m43237g024 = MediaSessionCompat.m43237g0(m3090b, "ad_partner");
            int m43237g025 = MediaSessionCompat.m43237g0(m3090b, "ad_campaign_type");
            int m43237g026 = MediaSessionCompat.m43237g0(m3090b, "ad_publisher");
            int m43237g027 = MediaSessionCompat.m43237g0(m3090b, "ad_partner_logo");
            int m43237g028 = MediaSessionCompat.m43237g0(m3090b, "ad_partner_privacy");
            int m43237g029 = MediaSessionCompat.m43237g0(m3090b, "ad_ui_config_available");
            int m43237g030 = MediaSessionCompat.m43237g0(m3090b, "ad_imp_per_user");
            int m43237g031 = MediaSessionCompat.m43237g0(m3090b, "ad_click_per_user");
            if (m3090b.moveToFirst()) {
                C15149b c15149b2 = new C15149b(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), this.f43128b.c.m19001b(m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04)), this.f43128b.c.m19001b(m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05)), this.f43128b.c.m19001b(m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06)), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010), m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011), m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012), m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013), m3090b.isNull(m43237g014) ? null : m3090b.getString(m43237g014), m3090b.isNull(m43237g015) ? null : Integer.valueOf(m3090b.getInt(m43237g015)), m3090b.isNull(m43237g016) ? null : Integer.valueOf(m3090b.getInt(m43237g016)), this.f43128b.c.m19002a(m3090b.isNull(m43237g017) ? null : m3090b.getString(m43237g017)), this.f43128b.c.m19002a(m3090b.isNull(m43237g018) ? null : m3090b.getString(m43237g018)), this.f43128b.c.m19002a(m3090b.isNull(m43237g019) ? null : m3090b.getString(m43237g019)), this.f43128b.c.m19002a(m3090b.isNull(m43237g020) ? null : m3090b.getString(m43237g020)), this.f43128b.c.m19002a(m3090b.isNull(m43237g021) ? null : m3090b.getString(m43237g021)), m3090b.getInt(m43237g022), m3090b.getLong(m43237g023), m3090b.isNull(m43237g024) ? null : m3090b.getString(m43237g024), m3090b.isNull(m43237g025) ? null : m3090b.getString(m43237g025), m3090b.isNull(m43237g026) ? null : m3090b.getString(m43237g026), m3090b.isNull(m43237g027) ? null : m3090b.getString(m43237g027), m3090b.isNull(m43237g028) ? null : m3090b.getString(m43237g028), m3090b.getInt(m43237g029) != 0, m3090b.isNull(m43237g030) ? null : Integer.valueOf(m3090b.getInt(m43237g030)), m3090b.isNull(m43237g031) ? null : Integer.valueOf(m3090b.getInt(m43237g031)));
                c15149b2.f43159a = m3090b.getLong(m43237g0);
                c15149b = c15149b2;
            } else {
                c15149b = null;
            }
            m3090b.close();
            this.f43127a.m3057l();
            return c15149b;
        } catch (Throwable th) {
            m3090b.close();
            this.f43127a.m3057l();
            throw th;
        }
    }
}
