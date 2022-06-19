package p193e.p194a.p852i.p856b0.p857c.p858c;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p193e.p194a.p852i.p856b0.p857c.p859d.C14994a;
/* renamed from: e.a.i.b0.c.c.b$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/b0/c/c/b$b.class */
public class b$b implements Callable<List<C14994a>> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f42777a;

    /* renamed from: b */
    public final /* synthetic */ b f42778b;

    public b$b(b bVar, C25686y c25686y) {
        this.f42778b = bVar;
        this.f42777a = c25686y;
    }

    @Override // java.util.concurrent.Callable
    public List<C14994a> call() throws Exception {
        Throwable th;
        int m43237g0;
        int m43237g02;
        int m43237g03;
        int m43237g04;
        int m43237g05;
        int m43237g06;
        int m43237g07;
        int m43237g08;
        int m43237g09;
        int m43237g010;
        int m43237g011;
        int m43237g012;
        int m43237g013;
        Cursor m3090b = C25653b.m3090b(this.f42778b.a, this.f42777a, false, null);
        try {
            m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
            m43237g02 = MediaSessionCompat.m43237g0(m3090b, "campaign_id");
            m43237g03 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
            m43237g04 = MediaSessionCompat.m43237g0(m3090b, "placement_name");
            m43237g05 = MediaSessionCompat.m43237g0(m3090b, "expires_at");
            m43237g06 = MediaSessionCompat.m43237g0(m3090b, "main_color");
            m43237g07 = MediaSessionCompat.m43237g0(m3090b, "light_color");
            m43237g08 = MediaSessionCompat.m43237g0(m3090b, "button_color");
            m43237g09 = MediaSessionCompat.m43237g0(m3090b, "banner_background_color");
            m43237g010 = MediaSessionCompat.m43237g0(m3090b, "image_url");
            m43237g011 = MediaSessionCompat.m43237g0(m3090b, "brand_name");
            m43237g012 = MediaSessionCompat.m43237g0(m3090b, "cta_text_color");
            m43237g013 = MediaSessionCompat.m43237g0(m3090b, "cta_background_color");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C14994a c14994a = new C14994a(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.getLong(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010), m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011), m3090b.isNull(m43237g012) ? null : m3090b.getString(m43237g012), m3090b.isNull(m43237g013) ? null : m3090b.getString(m43237g013));
                c14994a.f42786a = m3090b.getLong(m43237g0);
                arrayList.add(c14994a);
            }
            m3090b.close();
            this.f42777a.m3057l();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m3090b.close();
            this.f42777a.m3057l();
            throw th;
        }
    }
}
