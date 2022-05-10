package com.inmobi.ads;

import android.content.ContentValues;
import android.text.TextUtils;
import com.inmobi.ads.C8047a;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p513e.C8366b;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.inmobi.ads.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/d.class */
public class C8223d {

    /* renamed from: a */
    public static final String f32101a = "d";

    /* renamed from: b */
    public static C8223d f32102b;

    /* renamed from: c */
    public static final Object f32103c = new Object();

    /* renamed from: d */
    public static final String[] f32104d = {"id", "ad_content", BaseVideoPlayerActivity.VIDEO_URL, "video_track_duration", "click_url", "video_trackers", "companion_ads", "web_vast", "preload_webView", "asset_urls", "ad_type", "ad_size", "placement_id", "tp_key", "insertion_ts", "expiry_duration", "imp_id", "m10_context", "client_request_id", "bid", "bidInfo", "marked"};

    public C8223d() {
        C8363b a = C8363b.m5815a();
        a.m5811a(C8078ad.f31587d, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, placement_id INTEGER NOT NULL, ad_content TEXT NOT NULL, ad_type TEXT NOT NULL, ad_size TEXT, asset_urls TEXT, video_url TEXT, video_track_duration TEXT, click_url TEXT, video_trackers TEXT, companion_ads TEXT, web_vast TEXT, preload_webView INTEGER DEFAULT 0, insertion_ts INTEGER NOT NULL, imp_id TEXT NOT NULL UNIQUE, m10_context TEXT NOT NULL, tp_key TEXT, expiry_duration INTEGER NOT NULL, client_request_id TEXT NOT NULL,bid INTEGER NOT NULL,bidInfo TEXT,marked INTEGER DEFAULT 0)");
        m6153d();
        a.m5808b();
    }

    /* renamed from: a */
    public static int m6167a(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2) {
        C8363b a = C8363b.m5815a();
        int b = (str == null || str.trim().length() == 0) ? a.m5806b(C8078ad.f31587d, "placement_id=? AND m10_context=? AND tp_key=? AND marked=?", m6168a(j, monetizationContext, str2)) : a.m5806b(C8078ad.f31587d, "placement_id=? AND ad_size=? AND m10_context=? AND tp_key=? AND marked=?", m6151e(j, str, monetizationContext, str2));
        a.m5808b();
        return b;
    }

    /* renamed from: a */
    public static int m6165a(C8047a aVar) {
        return m6164a(aVar.f31479g);
    }

    /* renamed from: a */
    public static int m6164a(String str) {
        C8363b a = C8363b.m5815a();
        int a2 = a.m5810a(C8078ad.f31587d, "imp_id = ?", new String[]{String.valueOf(str)});
        a.m5808b();
        return a2;
    }

    /* renamed from: a */
    public static C8223d m6169a() {
        C8223d dVar = f32102b;
        C8223d dVar2 = dVar;
        if (dVar == null) {
            synchronized (f32103c) {
                C8223d dVar3 = f32102b;
                dVar2 = dVar3;
                if (dVar3 == null) {
                    dVar2 = new C8223d();
                    f32102b = dVar2;
                }
            }
        }
        return dVar2;
    }

    /* renamed from: a */
    public static List<C8047a> m6166a(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2, boolean z) {
        ArrayList arrayList = new ArrayList();
        C8363b a = C8363b.m5815a();
        List<ContentValues> a2 = (str == null || str.trim().length() == 0) ? a.m5809a(C8078ad.f31587d, f32104d, "placement_id=? AND m10_context=? AND tp_key=? AND marked=?", m6168a(j, monetizationContext, str2), null, null, z ? "bid" : "insertion_ts", null) : a.m5809a(C8078ad.f31587d, f32104d, "placement_id=? AND ad_size=? AND m10_context=? AND tp_key=? AND marked=?", m6151e(j, str, monetizationContext, str2), null, null, z ? "bid" : "insertion_ts", null);
        for (ContentValues contentValues : a2) {
            arrayList.add(C8047a.C8048a.m6622a(contentValues));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<C8047a> m6163a(String str, long j) {
        long j2;
        long j3;
        ArrayList arrayList = new ArrayList();
        C8363b a = C8363b.m5815a();
        int i = 0;
        List<ContentValues> a2 = a.m5809a(C8078ad.f31587d, f32104d, "ad_type=?", new String[]{str}, null, null, null, null);
        if (a2.size() == 0) {
            a.m5808b();
            return arrayList;
        }
        for (ContentValues contentValues : a2) {
            C8047a a3 = C8047a.C8048a.m6622a(contentValues);
            if (a3.m6628c() == -1) {
                j3 = a3.f31477e + TimeUnit.SECONDS.toMillis(j);
                j2 = System.currentTimeMillis();
            } else {
                j3 = a3.m6628c();
                j2 = System.currentTimeMillis();
            }
            if (j3 - j2 < 0) {
                i += m6164a(a3.f31479g);
                arrayList.add(a3);
            }
        }
        StringBuilder sb = new StringBuilder("Deleted ");
        sb.append(i);
        sb.append(" expired ads from cache of type: ");
        sb.append(str);
        a.m5808b();
        return arrayList;
    }

    /* renamed from: a */
    public static String[] m6168a(long j, InMobiAdRequest.MonetizationContext monetizationContext, String str) {
        return new String[]{String.valueOf(j), monetizationContext.f31294a, str, "0"};
    }

    /* renamed from: b */
    public static List<C8047a> m6160b() {
        ArrayList arrayList = new ArrayList();
        for (ContentValues contentValues : C8363b.m5815a().m5809a(C8078ad.f31587d, f32104d, null, null, null, null, null, null)) {
            arrayList.add(C8047a.C8048a.m6622a(contentValues));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static void m6158b(String str) {
        C8363b a = C8363b.m5815a();
        C8047a c = m6154c(str);
        if (c != null) {
            ContentValues a2 = c.mo6341a();
            a2.put("marked", "1");
            a.m5807b(C8078ad.f31587d, a2, "imp_id=?", new String[]{str});
        }
    }

    /* renamed from: c */
    public static C8047a m6154c(String str) {
        List<ContentValues> a = C8363b.m5815a().m5809a(C8078ad.f31587d, f32104d, "imp_id=?", new String[]{str}, null, null, null, "1");
        if (a.size() == 0) {
            return null;
        }
        return C8047a.C8048a.m6622a(a.get(0));
    }

    /* renamed from: c */
    public static void m6156c() {
        C8363b a = C8363b.m5815a();
        a.m5810a(C8078ad.f31587d, null, null);
        a.m5808b();
    }

    /* renamed from: d */
    public static void m6153d() {
        C8363b a = C8363b.m5815a();
        for (ContentValues contentValues : a.m5809a(C8078ad.f31587d, f32104d, "marked=?", new String[]{"1"}, null, null, null, null)) {
            contentValues.put("marked", "0");
            a.m5812a(C8078ad.f31587d, contentValues, "imp_id=?", new String[]{contentValues.getAsString("imp_id")});
        }
        a.m5808b();
    }

    /* renamed from: e */
    public static String[] m6151e(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2) {
        return new String[]{String.valueOf(j), str, monetizationContext.f31294a, str2, "0"};
    }

    /* renamed from: f */
    private C8047a m6150f(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2) {
        synchronized (this) {
            C8363b a = C8363b.m5815a();
            List<ContentValues> a2 = (str == null || str.trim().length() == 0) ? a.m5809a(C8078ad.f31587d, f32104d, "placement_id=? AND m10_context=? AND tp_key=? AND marked=?", m6168a(j, monetizationContext, str2), null, null, "insertion_ts", "1") : a.m5809a(C8078ad.f31587d, f32104d, "placement_id=? AND ad_size=? AND m10_context=? AND tp_key=? AND marked=?", m6151e(j, str, monetizationContext, str2), null, null, "insertion_ts", "1");
            if (a2.size() == 0) {
                return null;
            }
            return C8047a.C8048a.m6622a(a2.get(0));
        }
    }

    /* renamed from: a */
    public final List<C8047a> m6162a(String str, String str2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            C8363b a = C8363b.m5815a();
            for (ContentValues contentValues : (str2 == null || str2.trim().length() == 0) ? a.m5809a(C8078ad.f31587d, f32104d, "video_url=?", new String[]{str}, null, null, "insertion_ts", null) : a.m5809a(C8078ad.f31587d, f32104d, "video_url=? AND ad_size=?", new String[]{str, str2}, null, null, "insertion_ts", null)) {
                arrayList.add(C8047a.C8048a.m6622a(contentValues));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m6161a(List<C8047a> list, long j, int i, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2, String str3) {
        synchronized (this) {
            boolean isEmpty = TextUtils.isEmpty(str3);
            if ((!isEmpty || i != 0) && list.size() != 0) {
                C8363b a = C8363b.m5815a();
                for (C8047a aVar : list) {
                    aVar.f31477e = System.currentTimeMillis();
                    ContentValues a2 = aVar.mo6341a();
                    a2.put("tp_key", str2);
                    a.m5813a(C8078ad.f31587d, a2);
                }
                if (!isEmpty) {
                    m6158b(str3);
                }
                int a3 = m6167a(j, null, monetizationContext, str2) - i;
                if (a3 > 0) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", str);
                    hashMap.put("count", Integer.valueOf(a3));
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "DbSpaceOverflow", hashMap);
                    List<ContentValues> a4 = a.m5809a(C8078ad.f31587d, new String[]{"id"}, "placement_id=? AND m10_context=? AND tp_key=? AND marked=?", m6168a(j, monetizationContext, str2), null, null, "insertion_ts ASC", String.valueOf(a3));
                    String[] strArr = new String[a4.size()];
                    for (int i2 = 0; i2 < a4.size(); i2++) {
                        strArr[i2] = String.valueOf(a4.get(i2).getAsInteger("id"));
                    }
                    String replace = Arrays.toString(strArr).replace("[", "(").replace("]", ")");
                    a.m5810a(C8078ad.f31587d, "id IN " + replace, null);
                }
                a.m5808b();
            }
        }
    }

    /* renamed from: b */
    public final C8047a m6159b(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2) {
        C8047a f;
        synchronized (this) {
            f = m6150f(j, str, monetizationContext, str2);
            if (f != null) {
                C8363b.m5815a().m5810a(C8078ad.f31587d, "id=?", new String[]{String.valueOf(f.f31473a)});
            }
        }
        return f;
    }

    /* renamed from: b */
    public final List<C8047a> m6157b(String str, String str2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            C8363b a = C8363b.m5815a();
            for (ContentValues contentValues : (str2 == null || str2.trim().length() == 0) ? a.m5809a(C8078ad.f31587d, f32104d, "video_url=?", new String[]{str}, null, null, "insertion_ts", null) : a.m5809a(C8078ad.f31587d, f32104d, "video_url=? AND ad_size=?", new String[]{str, str2}, null, null, "insertion_ts", null)) {
                a.m5810a(C8078ad.f31587d, "id=?", new String[]{String.valueOf(contentValues.getAsInteger("id").intValue())});
                arrayList.add(C8047a.C8048a.m6622a(contentValues));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<C8047a> m6155c(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2) {
        List<C8047a> a;
        synchronized (this) {
            a = m6166a(j, str, monetizationContext, str2, false);
        }
        return a;
    }

    /* renamed from: d */
    public final List<C8047a> m6152d(long j, String str, InMobiAdRequest.MonetizationContext monetizationContext, String str2) {
        List<C8047a> a;
        synchronized (this) {
            a = m6166a(j, str, monetizationContext, str2, true);
        }
        return a;
    }
}
