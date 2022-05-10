package p131c.p135b.p136a.p137a;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.p483a.C6902j;
import com.applovin.impl.p483a.C6905k;
import com.applovin.impl.p483a.EnumC6899d;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p152q.C2363d;
import p131c.p135b.p136a.p148e.p152q.C2365e;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: c.b.a.a.f */
/* loaded from: classes-dex2jar.jar:c/b/a/a/f.class */
public class C2036f {

    /* renamed from: a */
    public static DateFormat f7941a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: b */
    public static Random f7942b = new Random(System.currentTimeMillis());

    /* renamed from: a */
    public static Uri m31217a(String str, long j, Uri uri, EnumC6899d dVar, C2341l lVar) {
        if (URLUtil.isValidUrl(str)) {
            try {
                String replace = str.replace("[ERRORCODE]", Integer.toString(dVar.m19427a()));
                String str2 = replace;
                if (j >= 0) {
                    str2 = replace.replace("[CONTENTPLAYHEAD]", m31225a(j));
                }
                String str3 = str2;
                if (uri != null) {
                    str3 = str2.replace("[ASSETURI]", uri.toString());
                }
                return Uri.parse(str3.replace("[CACHEBUSTING]", m31226a()).replace("[TIMESTAMP]", m31211b()));
            } catch (Throwable th) {
                C2374t d0 = lVar.m30262d0();
                d0.m30043b("VastUtils", "Unable to replace macros in URL string " + str, th);
                return null;
            }
        } else {
            lVar.m30262d0().m30039e("VastUtils", "Unable to replace macros in invalid URL string.");
            return null;
        }
    }

    /* renamed from: a */
    public static EnumC6899d m31218a(C6894a aVar) {
        if (m31209b(aVar) || m31208c(aVar)) {
            return null;
        }
        return EnumC6899d.GENERAL_WRAPPER_ERROR;
    }

    /* renamed from: a */
    public static String m31226a() {
        return Integer.toString(f7942b.nextInt(89999999) + 10000000);
    }

    /* renamed from: a */
    public static String m31225a(long j) {
        if (j <= 0) {
            return "00:00:00.000";
        }
        return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(TimeUnit.SECONDS.toHours(j)), Long.valueOf(TimeUnit.SECONDS.toMinutes(j) % TimeUnit.MINUTES.toSeconds(1L)), Long.valueOf(j % TimeUnit.MINUTES.toSeconds(1L)));
    }

    /* renamed from: a */
    public static String m31224a(C2032b bVar) {
        C2429t c;
        if (bVar != null) {
            List<C2429t> b = bVar.m31240b();
            int size = bVar.m31240b().size();
            if (size <= 0 || (c = b.get(size - 1).m29761c("VASTAdTagURI")) == null) {
                return null;
            }
            return c.m29762c();
        }
        throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
    }

    /* renamed from: a */
    public static String m31220a(C2429t tVar, String str, String str2) {
        C2429t b = tVar.m29763b(str);
        if (b != null) {
            String c = b.m29762c();
            if (C2422o.m29851b(c)) {
                return c;
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static Set<C2034d> m31223a(C2032b bVar, C2341l lVar) {
        if (bVar == null) {
            return null;
        }
        List<C2429t> b = bVar.m31240b();
        HashSet hashSet = new HashSet(b.size());
        for (C2429t tVar : b) {
            C2429t c = tVar.m29761c("Wrapper");
            if (c == null) {
                c = tVar.m29761c("InLine");
            }
            m31212a(hashSet, c != null ? c.m29765a("Error") : tVar.m29765a("Error"), bVar, lVar);
        }
        C2374t d0 = lVar.m30262d0();
        d0.m30044b("VastUtils", "Retrieved " + hashSet.size() + " top level error trackers: " + hashSet);
        return hashSet;
    }

    /* renamed from: a */
    public static Set<C2034d> m31212a(Set<C2034d> set, List<C2429t> list, C2032b bVar, C2341l lVar) {
        if (list != null) {
            for (C2429t tVar : list) {
                C2034d a = C2034d.m31229a(tVar, bVar, lVar);
                if (a != null) {
                    set.add(a);
                }
            }
        }
        return set;
    }

    /* renamed from: a */
    public static void m31222a(C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, EnumC6899d dVar, int i, C2341l lVar) {
        if (lVar != null) {
            AbstractC2426r.m29813a(appLovinAdLoadListener, bVar.m31235g(), i, lVar);
            m31213a(m31223a(bVar, lVar), dVar, lVar);
            return;
        }
        throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
    }

    /* renamed from: a */
    public static void m31219a(C2429t tVar, Map<String, Set<C2034d>> map, C2032b bVar, C2341l lVar) {
        List<C2429t> a;
        C2374t d0;
        String str;
        if (lVar != null) {
            if (tVar == null) {
                d0 = lVar.m30262d0();
                str = "Unable to render event trackers; null node provided";
            } else if (map == null) {
                d0 = lVar.m30262d0();
                str = "Unable to render event trackers; null event trackers provided";
            } else {
                C2429t b = tVar.m29763b("TrackingEvents");
                if (!(b == null || (a = b.m29765a("Tracking")) == null)) {
                    for (C2429t tVar2 : a) {
                        String str2 = tVar2.m29764b().get("event");
                        if (C2422o.m29851b(str2)) {
                            C2034d a2 = C2034d.m31229a(tVar2, bVar, lVar);
                            if (a2 != null) {
                                Set<C2034d> set = map.get(str2);
                                if (set != null) {
                                    set.add(a2);
                                } else {
                                    HashSet hashSet = new HashSet();
                                    hashSet.add(a2);
                                    map.put(str2, hashSet);
                                }
                            }
                        } else {
                            C2374t d02 = lVar.m30262d0();
                            d02.m30039e("VastUtils", "Could not find event for tracking node = " + tVar2);
                        }
                    }
                    return;
                }
                return;
            }
            d0.m30039e("VastUtils", str);
            return;
        }
        throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
    }

    /* renamed from: a */
    public static void m31216a(List<C2429t> list, Set<C2034d> set, C2032b bVar, C2341l lVar) {
        C2374t d0;
        String str;
        if (lVar != null) {
            if (list == null) {
                d0 = lVar.m30262d0();
                str = "Unable to render trackers; null nodes provided";
            } else if (set == null) {
                d0 = lVar.m30262d0();
                str = "Unable to render trackers; null trackers provided";
            } else {
                for (C2429t tVar : list) {
                    C2034d a = C2034d.m31229a(tVar, bVar, lVar);
                    if (a != null) {
                        set.add(a);
                    }
                }
                return;
            }
            d0.m30039e("VastUtils", str);
            return;
        }
        throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
    }

    /* renamed from: a */
    public static void m31215a(Set<C2034d> set, long j, Uri uri, EnumC6899d dVar, C2341l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
        } else if (set != null && !set.isEmpty()) {
            for (C2034d dVar2 : set) {
                Uri a = m31217a(dVar2.m31227b(), j, uri, dVar, lVar);
                if (a != null) {
                    C2363d l = lVar.m30247l();
                    C2365e.C2367b l2 = C2365e.m30125l();
                    l2.m30122a(a.toString());
                    l2.m30120a(false);
                    l.m30147a(l2.m30124a(), false);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m31214a(Set<C2034d> set, C2341l lVar) {
        m31215a(set, -1L, (Uri) null, EnumC6899d.UNSPECIFIED, lVar);
    }

    /* renamed from: a */
    public static void m31213a(Set<C2034d> set, EnumC6899d dVar, C2341l lVar) {
        m31215a(set, -1L, (Uri) null, dVar, lVar);
    }

    /* renamed from: a */
    public static boolean m31221a(C2429t tVar) {
        if (tVar != null) {
            return tVar.m29761c("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    /* renamed from: b */
    public static String m31211b() {
        f7941a.setTimeZone(TimeZone.getDefault());
        return f7941a.format(new Date());
    }

    /* renamed from: b */
    public static boolean m31210b(C2429t tVar) {
        if (tVar != null) {
            return tVar.m29761c("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }

    /* renamed from: b */
    public static boolean m31209b(C6894a aVar) {
        if (aVar == null) {
            return false;
        }
        C6902j W0 = aVar.m19460W0();
        boolean z = false;
        if (W0 != null) {
            List<C6905k> a = W0.m19419a();
            z = false;
            if (a != null) {
                z = false;
                if (!a.isEmpty()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (p131c.p135b.p136a.p148e.p153y.C2422o.m29851b(r0.m19420c()) != false) goto L_0x0031;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m31208c(com.applovin.impl.p483a.C6894a r2) {
        /*
            r0 = 0
            r3 = r0
            r0 = r2
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r2
            c.b.a.a.a r0 = r0.m19458Y0()
            r2 = r0
            r0 = r3
            r4 = r0
            r0 = r2
            if (r0 == 0) goto L_0x0033
            r0 = r2
            com.applovin.impl.a.e r0 = r0.m31244b()
            r2 = r0
            r0 = r3
            r4 = r0
            r0 = r2
            if (r0 == 0) goto L_0x0033
            r0 = r2
            android.net.Uri r0 = r0.m19421b()
            if (r0 != 0) goto L_0x0031
            r0 = r3
            r4 = r0
            r0 = r2
            java.lang.String r0 = r0.m19420c()
            boolean r0 = p131c.p135b.p136a.p148e.p153y.C2422o.m29851b(r0)
            if (r0 == 0) goto L_0x0033
        L_0x0031:
            r0 = 1
            r4 = r0
        L_0x0033:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p137a.C2036f.m31208c(com.applovin.impl.a.a):boolean");
    }
}
