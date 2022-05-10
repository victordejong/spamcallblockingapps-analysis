package com.inmobi.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8047a;
import com.inmobi.ads.C8175bj;
import com.inmobi.ads.C8178bm;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.C8236e;
import com.inmobi.ads.C8298p;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.p500a.AbstractC8065g;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.ads.p500a.C8051b;
import com.inmobi.ads.p500a.C8055f;
import com.inmobi.ads.p501b.C8142a;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8406c;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.commons.p508a.C8326a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.h */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/h.class */
public class C8247h implements C8236e.AbstractC8237a {

    /* renamed from: f */
    public static final String f32161f = "h";

    /* renamed from: a */
    public final AbstractC8251a f32162a;

    /* renamed from: c */
    public C8240f f32164c;

    /* renamed from: d */
    public C8197c.C8201d f32165d;

    /* renamed from: e */
    public long f32166e = 0;

    /* renamed from: g */
    public final AbstractC8065g f32167g = new AbstractC8065g() { // from class: com.inmobi.ads.h.1
        @Override // com.inmobi.ads.p500a.AbstractC8065g
        /* renamed from: a */
        public final void mo5553a(C8051b bVar) {
            String unused = C8247h.f32161f;
            new StringBuilder("onAssetsFetchFailure of batch ").append(bVar == null ? null : bVar.toString());
            ArrayList<Long> arrayList = new ArrayList();
            if (bVar != null) {
                for (C8049a aVar : bVar.f31509a) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", aVar.f31492d);
                    hashMap.put("latency", Long.valueOf(aVar.f31489a));
                    hashMap.put("size", Long.valueOf(C8406c.m5651a(aVar.f31493e)));
                    C8247h.this.f32162a.m6104a("VideoAssetDownloadFailed", hashMap);
                    for (C8047a aVar2 : C8247h.this.f32163b.m6157b(aVar.f31492d, C8247h.this.f32164c.f32145c)) {
                        if (!arrayList.contains(Long.valueOf(aVar2.f31476d))) {
                            arrayList.add(Long.valueOf(aVar2.f31476d));
                        }
                    }
                }
            }
            if (!arrayList.contains(Long.valueOf(C8247h.this.f32164c.f32143a))) {
                arrayList.add(Long.valueOf(C8247h.this.f32164c.f32143a));
            }
            for (Long l : arrayList) {
                C8247h.this.f32162a.mo6088a(l.longValue(), false);
            }
        }

        @Override // com.inmobi.ads.p500a.AbstractC8065g
        /* renamed from: b */
        public final void mo5552b(C8051b bVar) {
            String unused = C8247h.f32161f;
            new StringBuilder("onAssetsFetchSuccess of batch ").append(bVar == null ? null : bVar.toString());
            ArrayList<Long> arrayList = new ArrayList();
            if (bVar != null) {
                for (C8049a aVar : bVar.f31509a) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", aVar.f31492d);
                    hashMap.put("latency", Long.valueOf(aVar.f31489a));
                    hashMap.put("size", Long.valueOf(C8406c.m5651a(aVar.f31493e)));
                    hashMap.put("clientRequestId", bVar.f31514f);
                    if (aVar.f31498j) {
                        C8247h.this.f32162a.m6104a("GotCachedVideoAsset", hashMap);
                    } else {
                        C8247h.this.f32162a.m6104a("VideoAssetDownloaded", hashMap);
                    }
                    List<C8047a> a = C8247h.this.f32163b.m6162a(aVar.f31492d, C8247h.this.f32164c.f32145c);
                    String unused2 = C8247h.f32161f;
                    StringBuilder sb = new StringBuilder("Found ");
                    sb.append(a.size());
                    sb.append(" ads mapping to this asset");
                    for (C8047a aVar2 : a) {
                        if (!arrayList.contains(Long.valueOf(aVar2.f31476d))) {
                            arrayList.add(Long.valueOf(aVar2.f31476d));
                        }
                    }
                }
            }
            if (!arrayList.contains(Long.valueOf(C8247h.this.f32164c.f32143a))) {
                arrayList.add(Long.valueOf(C8247h.this.f32164c.f32143a));
            }
            for (Long l : arrayList) {
                long longValue = l.longValue();
                String unused3 = C8247h.f32161f;
                StringBuilder sb2 = new StringBuilder("Notifying ad unit with placement ID (");
                sb2.append(longValue);
                sb2.append(")");
                C8247h.this.f32162a.mo6088a(longValue, true);
            }
        }
    };

    /* renamed from: b */
    public final C8223d f32163b = C8223d.m6169a();

    /* renamed from: com.inmobi.ads.h$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/h$a.class */
    public interface AbstractC8251a {
        /* renamed from: a */
        void mo6090a(long j, InMobiAdRequestStatus inMobiAdRequestStatus);

        /* renamed from: a */
        void mo6089a(long j, C8047a aVar);

        /* renamed from: a */
        void mo6088a(long j, boolean z);

        /* renamed from: a */
        void m6104a(String str, Map<String, Object> map);

        /* renamed from: b */
        void mo6062b(long j, C8047a aVar);
    }

    public C8247h(AbstractC8251a aVar, C8197c.C8201d dVar, C8240f fVar) {
        this.f32162a = aVar;
        this.f32165d = dVar;
        this.f32164c = fVar;
    }

    /* renamed from: a */
    private List<C8047a> m6118a(C8245g gVar, StringBuilder sb) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(gVar.f32157a.m5731b());
            sb.append(jSONObject.optString("winnerImpressionId").trim());
            JSONArray jSONArray = jSONObject.getJSONArray("ads");
            arrayList = arrayList2;
            if (jSONArray != null) {
                int min = Math.min(gVar.f32159c.f32146d, jSONArray.length());
                for (int i = 0; i < min; i++) {
                    C8047a a = C8047a.C8048a.m6620a(jSONArray.getJSONObject(i), gVar.f32159c.f32143a, gVar.f32159c.f32147e, gVar.f32159c.f32145c, gVar.f32159c.f32151i, gVar.f32159c.f32152j, gVar.f32159c.f32153k);
                    if (a != null) {
                        arrayList2.add(a);
                    }
                }
                arrayList = arrayList2;
                if (min > 0) {
                    arrayList = arrayList2;
                    if (arrayList2.isEmpty()) {
                        return null;
                    }
                }
            }
        } catch (JSONException e) {
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", "ParsingError");
            hashMap.put("reason", e.getLocalizedMessage());
            hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f32166e));
            hashMap.put("im-accid", C8326a.m5885e());
            this.f32162a.m6104a("ServerError", hashMap);
            arrayList = null;
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m6123a() {
        if (C8401e.m5678b()) {
            C8223d.m6156c();
        }
    }

    /* renamed from: a */
    private void m6114a(List<C8047a> list, String str) {
        char c;
        C8047a aVar = list.get(0);
        String upperCase = aVar.m6626e().toUpperCase(Locale.ENGLISH);
        int hashCode = upperCase.hashCode();
        if (hashCode != -598127114) {
            if (hashCode == 2228139 && upperCase.equals("HTML")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (upperCase.equals("INMOBIJSON")) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c == 1) {
                m6113a(list, str, null);
                if ("int".equals(this.f32164c.f32147e)) {
                    this.f32162a.mo6062b(this.f32164c.f32143a, aVar);
                } else if ("native".equals(this.f32164c.f32147e)) {
                    C8223d dVar = this.f32163b;
                    C8240f fVar = this.f32164c;
                    C8047a b = dVar.m6159b(fVar.f32143a, fVar.f32145c, fVar.f32152j, str);
                    C8047a aVar2 = aVar;
                    if (b != null) {
                        if (!aVar.m6631a(b)) {
                            list.add(0, b);
                        }
                        aVar2 = b;
                    }
                    this.f32162a.mo6089a(this.f32164c.f32143a, aVar2);
                    m6121a(this.f32164c);
                }
                m6115a(list);
            }
        } else if ("native".equals(this.f32164c.f32147e)) {
            this.f32162a.mo6090a(this.f32164c.f32143a, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        } else {
            m6113a(list.subList(1, list.size()), str, null);
            this.f32162a.mo6089a(this.f32164c.f32143a, aVar);
            m6121a(this.f32164c);
        }
    }

    /* renamed from: a */
    private void m6113a(List<C8047a> list, String str, String str2) {
        C8223d dVar = this.f32163b;
        C8240f fVar = this.f32164c;
        dVar.m6161a(list, fVar.f32143a, this.f32165d.f32016a, fVar.f32147e, fVar.f32152j, str, str2);
    }

    /* renamed from: b */
    public static void m6111b(C8240f fVar, boolean z) {
        if (fVar != null) {
            Map<String, String> map = fVar.f32150h;
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            map2.put("preload-request", String.valueOf(z ? 1 : 0));
            fVar.f32150h = map2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0155  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6108b(java.util.List<com.inmobi.ads.C8047a> r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8247h.m6108b(java.util.List, java.lang.String, java.lang.String):void");
    }

    /* renamed from: c */
    public static void m6107c() {
        C8141b.m6344b();
    }

    /* renamed from: a */
    public final String m6120a(C8240f fVar, boolean z) {
        m6111b(fVar, z);
        this.f32166e = SystemClock.elapsedRealtime();
        new C8236e(fVar, this).m6128a();
        HashMap hashMap = new HashMap();
        hashMap.put("isPreloaded", fVar.m6125c());
        hashMap.put("clientRequestId", fVar.f32151i);
        hashMap.put("im-accid", C8326a.m5885e());
        this.f32162a.m6104a("ServerCallInitiated", hashMap);
        return fVar.f32151i;
    }

    /* renamed from: a */
    public final void m6122a(final C8047a aVar) {
        new Thread() { // from class: com.inmobi.ads.h.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                C8223d unused = C8247h.this.f32163b;
                C8223d.m6165a(aVar);
            }
        }.start();
    }

    /* renamed from: a */
    public final void m6121a(final C8240f fVar) {
        C8141b.m6344b();
        int a = C8223d.m6167a(fVar.f32143a, fVar.f32145c, fVar.f32152j, C8224a.m6143a(fVar.f32149g));
        boolean equals = "int".equals(fVar.f32147e);
        if (a < this.f32165d.f32018c) {
            new StringBuilder("Cached ad count below threshold, firing ad request for Placement : ").append(fVar.f32143a);
            final C8224a a2 = C8224a.m6146a(fVar.f32147e);
            if (equals) {
                m6111b(fVar, true);
                try {
                    new C8178bm(new C8178bm.AbstractC8180a() { // from class: com.inmobi.ads.d.a.3
                        @Override // com.inmobi.ads.C8178bm.AbstractC8180a
                        /* renamed from: a */
                        public final void mo6091a(long j) {
                            String unused = C8224a.f32107d;
                        }

                        @Override // com.inmobi.ads.C8178bm.AbstractC8180a
                        /* renamed from: a */
                        public final void mo6067a(String str, Map<String, Object> map) {
                            C8224a.m6144a(str, map, fVar);
                        }

                        @Override // com.inmobi.ads.C8178bm.AbstractC8180a
                        /* renamed from: b */
                        public final void mo6063b(long j, InMobiAdRequestStatus inMobiAdRequestStatus) {
                            String unused = C8224a.f32107d;
                            new StringBuilder("Interstitial Prefetch failed with the message - ").append(inMobiAdRequestStatus.getMessage());
                        }
                    }, this.f32165d).m6248a(fVar, true, C8224a.f32106b.f31984c);
                } catch (C8142a e) {
                    e.getMessage();
                }
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.a.2

                    /* renamed from: c */
                    public AbstractC8252i.AbstractC8285e f32120c;

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            Context b = C8326a.m5891b();
                            if (b != null) {
                                C8175bj a3 = C8175bj.m6257a(fVar.f32143a, fVar.f32149g, fVar.f32147e, fVar.f32148f);
                                a3.f31899f = fVar.f32152j;
                                String unused = C8224a.f32107d;
                                StringBuilder sb = new StringBuilder("preFetchAdUnit. pid:");
                                sb.append(a3.f31894a);
                                sb.append(" tp:");
                                sb.append(a3.f31895b);
                                if (a3.f31896c == null && a3.f31895b != null) {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("tp", a3.f31895b);
                                    a3.f31896c = hashMap;
                                }
                                this.f32120c = new C8232a(a3);
                                AbstractC8252i b2 = C8224a.m6141b(a2.f32114c, b, a3);
                                if (b2 != null) {
                                    b2.f32197e = a3.f31897d;
                                    b2.f32198f = a3.f31896c;
                                    b2.f32206n = true;
                                    b2.f32209q = this.f32120c;
                                    if (a2.f32114c.equalsIgnoreCase("banner")) {
                                        ((C8298p) b2).f32296B = fVar.f32145c;
                                        ((C8298p) b2).f32299z = true;
                                    }
                                    b2.mo6066a(true);
                                }
                            }
                        } catch (Exception e2) {
                            String unused2 = C8224a.f32107d;
                            new StringBuilder("SDK encountered an unexpected error preloading ad units; ").append(e2.getMessage());
                            C8328a.m5878a().m5875a(new C8365a(e2));
                        }
                    }
                });
            }
        }
    }

    @Override // com.inmobi.ads.C8236e.AbstractC8237a
    /* renamed from: a */
    public final void mo6119a(C8245g gVar) {
        StringBuilder sb = new StringBuilder();
        List<C8047a> a = m6118a(gVar, sb);
        String sb2 = sb.toString();
        boolean isEmpty = TextUtils.isEmpty(sb2);
        if (a == null) {
            new StringBuilder("Could not parse ad response:").append(gVar.f32157a.m5731b());
            this.f32162a.mo6090a(this.f32164c.f32143a, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        } else if (a.size() != 0 || !isEmpty) {
            HashMap hashMap = new HashMap();
            hashMap.put("numberOfAdsReturned", Integer.valueOf(a.size()));
            hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f32166e));
            hashMap.put("isPreloaded", this.f32164c.m6125c());
            hashMap.put("im-accid", C8326a.m5885e());
            this.f32162a.m6104a("ServerFill", hashMap);
            for (C8047a aVar : a) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("ts", Long.valueOf(System.currentTimeMillis()));
                hashMap2.put("impId", aVar.f31479g);
                hashMap2.put("plId", Long.valueOf(aVar.f31476d));
                this.f32162a.m6104a("AdCacheImpressionInserted", hashMap2);
            }
            String a2 = C8224a.m6143a(this.f32164c.f32149g);
            if (isEmpty) {
                m6114a(a, a2);
            } else {
                m6108b(a, a2, sb2);
            }
        } else {
            new StringBuilder("Ad response received but no ad available:").append(gVar.f32157a.m5731b());
            HashMap hashMap3 = new HashMap();
            hashMap3.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f32166e));
            hashMap3.put("isPreloaded", this.f32164c.m6125c());
            hashMap3.put("im-accid", C8326a.m5885e());
            this.f32162a.m6104a("ServerNoFill", hashMap3);
            this.f32162a.mo6090a(this.f32164c.f32143a, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NO_FILL));
        }
    }

    /* renamed from: a */
    public final void m6116a(final String str) {
        new Thread() { // from class: com.inmobi.ads.h.3
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                C8223d unused = C8247h.this.f32163b;
                C8223d.m6164a(str);
            }
        }.start();
    }

    /* renamed from: a */
    public final void m6115a(List<C8047a> list) {
        if (list != null && list.size() > 0) {
            C8047a aVar = list.get(0);
            if (aVar != null) {
                Set<C8181bn> d = aVar.m6627d();
                if (d.size() == 0) {
                    this.f32162a.mo6088a(this.f32164c.f32143a, true);
                    return;
                }
                C8055f.m6593a().m6589a(new C8051b(UUID.randomUUID().toString(), aVar.f31480h, d, this.f32167g));
            }
            for (C8047a aVar2 : list.subList(1, list.size())) {
                if (aVar2 != null) {
                    Set<C8181bn> d2 = aVar2.m6627d();
                    if (d2.size() != 0) {
                        C8055f.m6593a().m6589a(new C8051b(UUID.randomUUID().toString(), aVar2.f31480h, d2, (AbstractC8065g) null));
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final String m6112b() {
        String str;
        String a = C8224a.m6143a(this.f32164c.f32149g);
        C8141b.m6344b();
        C8240f fVar = this.f32164c;
        C8047a aVar = null;
        if (C8223d.m6167a(fVar.f32143a, fVar.f32145c, fVar.f32152j, a) != 0) {
            C8223d dVar = this.f32163b;
            C8240f fVar2 = this.f32164c;
            C8047a b = dVar.m6159b(fVar2.f32143a, fVar2.f32145c, fVar2.f32152j, a);
            if (b != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("clientRequestId", b.f31480h);
                hashMap.put("im-accid", C8326a.m5885e());
                hashMap.put("isPreloaded", this.f32164c.m6125c());
                this.f32162a.m6104a("AdCacheHit", hashMap);
                m6121a(this.f32164c);
                aVar = b;
            }
        }
        if (aVar == null) {
            str = this.f32164c.m6125c().equals("1") ? m6120a(this.f32164c, true) : m6120a(this.f32164c, false);
        } else {
            String str2 = aVar.f31480h;
            this.f32162a.mo6089a(this.f32164c.f32143a, aVar);
            str = str2;
            if ("INMOBIJSON".equalsIgnoreCase(aVar.m6626e())) {
                m6115a(new ArrayList(Collections.singletonList(aVar)));
                str = str2;
            }
        }
        return str;
    }

    @Override // com.inmobi.ads.C8236e.AbstractC8237a
    /* renamed from: b */
    public final void mo6110b(C8245g gVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", String.valueOf(gVar.f32157a.f32624b.f32582a.getValue()));
        hashMap.put("reason", gVar.f32157a.f32624b.f32583b);
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f32166e));
        hashMap.put("im-accid", C8326a.m5885e());
        this.f32162a.m6104a("ServerError", hashMap);
        this.f32162a.mo6090a(this.f32164c.f32143a, gVar.f32158b);
    }
}
