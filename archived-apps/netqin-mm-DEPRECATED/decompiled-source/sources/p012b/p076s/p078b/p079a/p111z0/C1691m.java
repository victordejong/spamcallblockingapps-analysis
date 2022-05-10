package p012b.p076s.p078b.p079a.p111z0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.facebook.ads.AdError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1168e;
import p012b.p076s.p078b.p079a.p080a1.C1189u;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
import p012b.p076s.p078b.p079a.p111z0.C1691m;
/* renamed from: b.s.b.a.z0.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/m.class */
public final class C1691m implements AbstractC1679c, AbstractC1704x {

    /* renamed from: a */
    public final Context f6904a;

    /* renamed from: b */
    public final SparseArray<Long> f6905b;

    /* renamed from: c */
    public final C1168e<AbstractC1679c.AbstractC1680a> f6906c;

    /* renamed from: d */
    public final C1189u f6907d;

    /* renamed from: e */
    public final AbstractC1162b f6908e;

    /* renamed from: f */
    public int f6909f;

    /* renamed from: g */
    public long f6910g;

    /* renamed from: h */
    public long f6911h;

    /* renamed from: i */
    public int f6912i;

    /* renamed from: j */
    public long f6913j;

    /* renamed from: k */
    public long f6914k;

    /* renamed from: l */
    public long f6915l;

    /* renamed from: m */
    public long f6916m;

    /* renamed from: n */
    public boolean f6917n;

    /* renamed from: o */
    public int f6918o;

    /* renamed from: b.s.b.a.z0.m$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/z0/m$a.class */
    public static class C1692a extends BroadcastReceiver {

        /* renamed from: c */
        public static C1692a f6919c;

        /* renamed from: a */
        public final Handler f6920a = new Handler(Looper.getMainLooper());

        /* renamed from: b */
        public final ArrayList<WeakReference<C1691m>> f6921b = new ArrayList<>();

        /* renamed from: a */
        public static C1692a m32361a(Context context) {
            C1692a aVar;
            synchronized (C1692a.class) {
                try {
                    if (f6919c == null) {
                        f6919c = new C1692a();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        context.registerReceiver(f6919c, intentFilter);
                    }
                    aVar = f6919c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return aVar;
        }

        /* renamed from: a */
        public final void m32362a() {
            for (int size = this.f6921b.size() - 1; size >= 0; size--) {
                if (this.f6921b.get(size).get() == null) {
                    this.f6921b.remove(size);
                }
            }
        }

        /* renamed from: b */
        public void m32359b(final C1691m mVar) {
            synchronized (this) {
                m32362a();
                this.f6921b.add(new WeakReference<>(mVar));
                this.f6920a.post(new Runnable(this, mVar) { // from class: b.s.b.a.z0.l

                    /* renamed from: a */
                    public final C1691m.C1692a f6902a;

                    /* renamed from: b */
                    public final C1691m f6903b;

                    {
                        this.f6902a = this;
                        this.f6903b = mVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6902a.m32360a(this.f6903b);
                    }
                });
            }
        }

        /* renamed from: c */
        public final void m32360a(C1691m mVar) {
            mVar.m32364c();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                if (!isInitialStickyBroadcast()) {
                    m32362a();
                    for (int i = 0; i < this.f6921b.size(); i++) {
                        C1691m mVar = this.f6921b.get(i).get();
                        if (mVar != null) {
                            m32360a(mVar);
                        }
                    }
                }
            }
        }
    }

    static {
        m32363d();
    }

    @Deprecated
    public C1691m() {
        this(null, new SparseArray(), AdError.SERVER_ERROR_CODE, AbstractC1162b.f4682a, false);
    }

    public C1691m(Context context, SparseArray<Long> sparseArray, int i, AbstractC1162b bVar, boolean z) {
        this.f6904a = context == null ? null : context.getApplicationContext();
        this.f6905b = sparseArray;
        this.f6906c = new C1168e<>();
        this.f6907d = new C1189u(i);
        this.f6908e = bVar;
        int a = context == null ? 0 : C1167d0.m34488a(context);
        this.f6912i = a;
        this.f6915l = m32371a(a);
        if (context != null && z) {
            C1692a.m32361a(context).m32359b(this);
        }
    }

    /* renamed from: d */
    public static Map<String, int[]> m32363d() {
        HashMap hashMap = new HashMap();
        hashMap.put("AD", new int[]{1, 0, 0, 1});
        hashMap.put("AE", new int[]{1, 4, 4, 4});
        hashMap.put("AF", new int[]{4, 4, 3, 3});
        hashMap.put("AG", new int[]{3, 2, 1, 1});
        hashMap.put("AI", new int[]{1, 0, 1, 3});
        hashMap.put("AL", new int[]{1, 2, 1, 1});
        hashMap.put("AM", new int[]{2, 2, 3, 2});
        hashMap.put("AO", new int[]{3, 4, 2, 0});
        hashMap.put("AQ", new int[]{4, 2, 2, 2});
        hashMap.put("AR", new int[]{2, 3, 2, 2});
        hashMap.put("AS", new int[]{3, 3, 4, 1});
        hashMap.put("AT", new int[]{0, 2, 0, 0});
        hashMap.put("AU", new int[]{0, 1, 1, 1});
        hashMap.put("AW", new int[]{1, 1, 0, 2});
        hashMap.put("AX", new int[]{0, 2, 1, 0});
        hashMap.put("AZ", new int[]{3, 3, 2, 2});
        hashMap.put("BA", new int[]{1, 1, 1, 2});
        hashMap.put("BB", new int[]{0, 1, 0, 0});
        hashMap.put("BD", new int[]{2, 2, 3, 2});
        hashMap.put("BE", new int[]{0, 0, 0, 1});
        hashMap.put("BF", new int[]{4, 4, 3, 1});
        hashMap.put("BG", new int[]{0, 1, 0, 0});
        hashMap.put("BH", new int[]{2, 1, 3, 4});
        hashMap.put("BI", new int[]{4, 3, 4, 4});
        hashMap.put("BJ", new int[]{4, 3, 4, 4});
        hashMap.put("BL", new int[]{1, 0, 2, 3});
        hashMap.put("BM", new int[]{1, 0, 0, 0});
        hashMap.put("BN", new int[]{4, 2, 3, 3});
        hashMap.put("BO", new int[]{2, 2, 3, 2});
        hashMap.put("BQ", new int[]{1, 0, 3, 4});
        hashMap.put("BR", new int[]{2, 3, 3, 2});
        hashMap.put("BS", new int[]{2, 0, 1, 4});
        hashMap.put("BT", new int[]{3, 0, 2, 1});
        hashMap.put("BW", new int[]{4, 4, 1, 2});
        hashMap.put("BY", new int[]{0, 1, 1, 2});
        hashMap.put("BZ", new int[]{2, 2, 3, 1});
        hashMap.put("CA", new int[]{0, 3, 3, 3});
        hashMap.put("CD", new int[]{4, 4, 3, 2});
        hashMap.put("CF", new int[]{4, 3, 3, 4});
        hashMap.put("CG", new int[]{4, 4, 4, 4});
        hashMap.put("CH", new int[]{0, 0, 1, 1});
        hashMap.put("CI", new int[]{3, 4, 3, 3});
        hashMap.put("CK", new int[]{2, 4, 1, 0});
        hashMap.put("CL", new int[]{2, 2, 2, 3});
        hashMap.put("CM", new int[]{3, 4, 2, 1});
        hashMap.put("CN", new int[]{2, 2, 2, 3});
        hashMap.put("CO", new int[]{2, 3, 2, 2});
        hashMap.put("CR", new int[]{2, 2, 4, 4});
        hashMap.put("CU", new int[]{4, 4, 3, 1});
        hashMap.put("CV", new int[]{2, 3, 2, 4});
        hashMap.put("CW", new int[]{1, 0, 0, 0});
        hashMap.put("CX", new int[]{2, 2, 2, 2});
        hashMap.put("CY", new int[]{1, 1, 1, 1});
        hashMap.put("CZ", new int[]{0, 1, 0, 0});
        hashMap.put("DE", new int[]{0, 2, 2, 2});
        hashMap.put("DJ", new int[]{3, 3, 4, 0});
        hashMap.put("DK", new int[]{0, 0, 0, 0});
        hashMap.put("DM", new int[]{1, 0, 0, 3});
        hashMap.put("DO", new int[]{3, 3, 4, 4});
        hashMap.put("DZ", new int[]{3, 3, 4, 4});
        hashMap.put("EC", new int[]{2, 4, 4, 2});
        hashMap.put("EE", new int[]{0, 0, 0, 0});
        hashMap.put("EG", new int[]{3, 4, 2, 2});
        hashMap.put("EH", new int[]{2, 0, 3, 3});
        hashMap.put("ER", new int[]{4, 2, 2, 2});
        hashMap.put("ES", new int[]{0, 1, 1, 1});
        hashMap.put("ET", new int[]{4, 4, 4, 0});
        hashMap.put("FI", new int[]{0, 0, 1, 0});
        hashMap.put("FJ", new int[]{3, 1, 3, 3});
        hashMap.put("FK", new int[]{4, 2, 2, 3});
        hashMap.put("FM", new int[]{4, 2, 4, 0});
        hashMap.put("FO", new int[]{0, 0, 0, 0});
        hashMap.put("FR", new int[]{1, 0, 3, 1});
        hashMap.put("GA", new int[]{3, 3, 2, 1});
        hashMap.put("GB", new int[]{0, 1, 3, 3});
        hashMap.put("GD", new int[]{2, 0, 4, 4});
        hashMap.put("GE", new int[]{1, 1, 0, 3});
        hashMap.put("GF", new int[]{1, 2, 4, 4});
        hashMap.put("GG", new int[]{0, 0, 0, 0});
        hashMap.put("GH", new int[]{3, 3, 3, 2});
        hashMap.put("GI", new int[]{0, 0, 0, 1});
        hashMap.put("GL", new int[]{2, 2, 3, 4});
        hashMap.put("GM", new int[]{4, 3, 3, 2});
        hashMap.put("GN", new int[]{4, 4, 4, 0});
        hashMap.put("GP", new int[]{2, 2, 1, 3});
        hashMap.put("GQ", new int[]{4, 3, 3, 0});
        hashMap.put("GR", new int[]{1, 1, 0, 1});
        hashMap.put("GT", new int[]{3, 3, 3, 4});
        hashMap.put("GU", new int[]{1, 2, 4, 4});
        hashMap.put("GW", new int[]{4, 4, 4, 0});
        hashMap.put("GY", new int[]{3, 4, 1, 0});
        hashMap.put("HK", new int[]{0, 1, 4, 4});
        hashMap.put("HN", new int[]{3, 3, 2, 2});
        hashMap.put("HR", new int[]{1, 0, 0, 2});
        hashMap.put("HT", new int[]{3, 4, 4, 3});
        hashMap.put("HU", new int[]{0, 0, 1, 0});
        hashMap.put("ID", new int[]{3, 2, 3, 4});
        hashMap.put("IE", new int[]{0, 0, 3, 2});
        hashMap.put("IL", new int[]{0, 1, 2, 3});
        hashMap.put("IM", new int[]{0, 0, 0, 1});
        hashMap.put("IN", new int[]{2, 2, 4, 4});
        hashMap.put("IO", new int[]{4, 4, 2, 2});
        hashMap.put("IQ", new int[]{3, 3, 4, 4});
        hashMap.put("IR", new int[]{1, 0, 1, 0});
        hashMap.put("IS", new int[]{0, 0, 0, 0});
        hashMap.put("IT", new int[]{1, 0, 1, 1});
        hashMap.put("JE", new int[]{1, 0, 0, 1});
        hashMap.put("JM", new int[]{3, 2, 2, 1});
        hashMap.put("JO", new int[]{1, 1, 1, 2});
        hashMap.put("JP", new int[]{0, 2, 2, 2});
        hashMap.put("KE", new int[]{3, 3, 3, 3});
        hashMap.put("KG", new int[]{1, 1, 2, 3});
        hashMap.put("KH", new int[]{2, 0, 4, 4});
        hashMap.put("KI", new int[]{4, 4, 4, 4});
        hashMap.put("KM", new int[]{4, 4, 3, 3});
        hashMap.put("KN", new int[]{1, 0, 1, 4});
        hashMap.put("KP", new int[]{1, 2, 0, 2});
        hashMap.put("KR", new int[]{0, 3, 0, 2});
        hashMap.put("KW", new int[]{2, 2, 1, 2});
        hashMap.put("KY", new int[]{1, 1, 0, 2});
        hashMap.put("KZ", new int[]{1, 2, 2, 2});
        hashMap.put("LA", new int[]{2, 1, 1, 0});
        hashMap.put("LB", new int[]{3, 2, 0, 0});
        hashMap.put("LC", new int[]{2, 1, 0, 0});
        hashMap.put("LI", new int[]{0, 0, 2, 2});
        hashMap.put("LK", new int[]{1, 1, 2, 2});
        hashMap.put("LR", new int[]{3, 4, 4, 1});
        hashMap.put("LS", new int[]{3, 3, 2, 0});
        hashMap.put("LT", new int[]{0, 0, 0, 0});
        hashMap.put("LU", new int[]{0, 1, 0, 0});
        hashMap.put("LV", new int[]{0, 0, 0, 0});
        hashMap.put("LY", new int[]{4, 3, 4, 4});
        hashMap.put("MA", new int[]{2, 1, 2, 2});
        hashMap.put("MC", new int[]{1, 0, 1, 0});
        hashMap.put("MD", new int[]{1, 1, 0, 0});
        hashMap.put("ME", new int[]{1, 2, 2, 3});
        hashMap.put("MF", new int[]{1, 4, 2, 1});
        hashMap.put("MG", new int[]{3, 4, 1, 3});
        hashMap.put("MH", new int[]{4, 0, 2, 3});
        hashMap.put("MK", new int[]{1, 0, 0, 0});
        hashMap.put("ML", new int[]{4, 4, 4, 3});
        hashMap.put("MM", new int[]{2, 3, 1, 2});
        hashMap.put("MN", new int[]{2, 3, 2, 4});
        hashMap.put("MO", new int[]{0, 0, 4, 4});
        hashMap.put("MP", new int[]{0, 2, 4, 4});
        hashMap.put("MQ", new int[]{1, 1, 1, 3});
        hashMap.put("MR", new int[]{4, 4, 4, 4});
        hashMap.put("MS", new int[]{1, 4, 0, 3});
        hashMap.put("MT", new int[]{0, 1, 0, 0});
        hashMap.put("MU", new int[]{2, 2, 3, 4});
        hashMap.put("MV", new int[]{3, 2, 1, 1});
        hashMap.put("MW", new int[]{4, 2, 1, 1});
        hashMap.put("MX", new int[]{2, 4, 3, 2});
        hashMap.put("MY", new int[]{2, 2, 2, 3});
        hashMap.put("MZ", new int[]{3, 4, 2, 2});
        hashMap.put("NA", new int[]{3, 2, 2, 1});
        hashMap.put("NC", new int[]{2, 1, 3, 2});
        hashMap.put("NE", new int[]{4, 4, 4, 3});
        hashMap.put("NF", new int[]{1, 2, 2, 2});
        hashMap.put("NG", new int[]{3, 4, 3, 2});
        hashMap.put("NI", new int[]{3, 3, 3, 4});
        hashMap.put("NL", new int[]{0, 2, 4, 3});
        hashMap.put("NO", new int[]{0, 1, 0, 0});
        hashMap.put("NP", new int[]{3, 3, 2, 2});
        hashMap.put("NR", new int[]{4, 0, 4, 0});
        hashMap.put("NU", new int[]{2, 2, 2, 1});
        hashMap.put("NZ", new int[]{0, 0, 0, 1});
        hashMap.put("OM", new int[]{2, 2, 1, 3});
        hashMap.put("PA", new int[]{1, 3, 3, 4});
        hashMap.put("PE", new int[]{2, 3, 4, 4});
        hashMap.put("PF", new int[]{3, 1, 0, 1});
        hashMap.put("PG", new int[]{4, 3, 1, 1});
        hashMap.put("PH", new int[]{3, 0, 4, 4});
        hashMap.put("PK", new int[]{3, 3, 3, 3});
        hashMap.put("PL", new int[]{1, 1, 1, 3});
        hashMap.put("PM", new int[]{0, 2, 0, 0});
        hashMap.put("PR", new int[]{2, 1, 3, 3});
        hashMap.put("PS", new int[]{3, 3, 1, 4});
        hashMap.put("PT", new int[]{1, 1, 0, 1});
        hashMap.put("PW", new int[]{2, 2, 1, 1});
        hashMap.put("PY", new int[]{3, 1, 3, 3});
        hashMap.put("QA", new int[]{2, 3, 0, 1});
        hashMap.put("RE", new int[]{1, 0, 2, 2});
        hashMap.put("RO", new int[]{0, 1, 1, 2});
        hashMap.put("RS", new int[]{1, 2, 0, 0});
        hashMap.put("RU", new int[]{0, 1, 1, 1});
        hashMap.put("RW", new int[]{3, 4, 2, 4});
        hashMap.put("SA", new int[]{2, 2, 1, 2});
        hashMap.put("SB", new int[]{4, 4, 3, 0});
        hashMap.put("SC", new int[]{4, 2, 0, 1});
        hashMap.put("SD", new int[]{4, 4, 4, 2});
        hashMap.put("SE", new int[]{0, 1, 0, 0});
        hashMap.put("SG", new int[]{1, 2, 3, 3});
        hashMap.put("SH", new int[]{4, 4, 2, 3});
        hashMap.put("SI", new int[]{0, 1, 0, 1});
        hashMap.put("SJ", new int[]{0, 0, 2, 0});
        hashMap.put("SK", new int[]{0, 1, 0, 1});
        hashMap.put("SL", new int[]{4, 3, 2, 4});
        hashMap.put("SM", new int[]{0, 0, 1, 3});
        hashMap.put("SN", new int[]{4, 4, 4, 3});
        hashMap.put("SO", new int[]{4, 4, 4, 4});
        hashMap.put("SR", new int[]{3, 2, 2, 4});
        hashMap.put("SS", new int[]{4, 2, 4, 2});
        hashMap.put("ST", new int[]{3, 4, 2, 2});
        hashMap.put("SV", new int[]{2, 3, 3, 4});
        hashMap.put("SX", new int[]{2, 4, 1, 0});
        hashMap.put("SY", new int[]{4, 4, 1, 0});
        hashMap.put("SZ", new int[]{3, 4, 2, 3});
        hashMap.put("TC", new int[]{1, 1, 3, 1});
        hashMap.put("TD", new int[]{4, 4, 4, 3});
        hashMap.put("TG", new int[]{3, 3, 1, 0});
        hashMap.put("TH", new int[]{1, 3, 4, 4});
        hashMap.put("TJ", new int[]{4, 4, 4, 4});
        hashMap.put("TL", new int[]{4, 2, 4, 4});
        hashMap.put("TM", new int[]{4, 1, 2, 3});
        hashMap.put("TN", new int[]{2, 1, 1, 1});
        hashMap.put("TO", new int[]{3, 3, 3, 1});
        hashMap.put("TR", new int[]{1, 2, 0, 1});
        hashMap.put("TT", new int[]{2, 3, 1, 2});
        hashMap.put("TV", new int[]{4, 2, 2, 4});
        hashMap.put("TW", new int[]{0, 0, 0, 1});
        hashMap.put("TZ", new int[]{3, 3, 4, 3});
        hashMap.put("UA", new int[]{0, 2, 1, 2});
        hashMap.put("UG", new int[]{4, 3, 2, 3});
        hashMap.put("US", new int[]{0, 1, 3, 3});
        hashMap.put("UY", new int[]{2, 2, 2, 2});
        hashMap.put("UZ", new int[]{3, 2, 2, 2});
        hashMap.put("VA", new int[]{1, 2, 2, 2});
        hashMap.put("VC", new int[]{2, 1, 0, 0});
        hashMap.put("VE", new int[]{4, 4, 4, 3});
        hashMap.put("VG", new int[]{2, 1, 1, 2});
        hashMap.put("VI", new int[]{1, 0, 2, 4});
        hashMap.put("VN", new int[]{0, 2, 4, 4});
        hashMap.put("VU", new int[]{4, 1, 3, 1});
        hashMap.put("WS", new int[]{3, 2, 3, 1});
        hashMap.put("XK", new int[]{1, 2, 1, 0});
        hashMap.put("YE", new int[]{4, 4, 4, 2});
        hashMap.put("YT", new int[]{2, 0, 2, 3});
        hashMap.put("ZA", new int[]{2, 3, 2, 2});
        hashMap.put("ZM", new int[]{3, 3, 2, 1});
        hashMap.put("ZW", new int[]{3, 3, 3, 1});
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public final long m32371a(int i) {
        Long l = this.f6905b.get(i);
        Long l2 = l;
        if (l == null) {
            l2 = this.f6905b.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1679c
    /* renamed from: a */
    public AbstractC1704x mo32372a() {
        return this;
    }

    /* renamed from: a */
    public final void m32370a(final int i, final long j, final long j2) {
        if (i != 0 || j != 0 || j2 != this.f6916m) {
            this.f6916m = j2;
            this.f6906c.m34429a(new C1168e.AbstractC1169a(i, j, j2) { // from class: b.s.b.a.z0.k

                /* renamed from: a */
                public final int f6899a;

                /* renamed from: b */
                public final long f6900b;

                /* renamed from: c */
                public final long f6901c;

                {
                    this.f6899a = i;
                    this.f6900b = j;
                    this.f6901c = j2;
                }

                @Override // p012b.p076s.p078b.p079a.p080a1.C1168e.AbstractC1169a
                /* renamed from: a */
                public void mo32373a(Object obj) {
                    ((AbstractC1679c.AbstractC1680a) obj).mo32394a(this.f6899a, this.f6900b, this.f6901c);
                }
            });
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1679c
    /* renamed from: a */
    public void mo32368a(Handler handler, AbstractC1679c.AbstractC1680a aVar) {
        this.f6906c.m34430a(handler, aVar);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1679c
    /* renamed from: a */
    public void mo32367a(AbstractC1679c.AbstractC1680a aVar) {
        this.f6906c.m34428a((C1168e<AbstractC1679c.AbstractC1680a>) aVar);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1704x
    /* renamed from: a */
    public void mo32321a(AbstractC1684g gVar, C1687i iVar, boolean z) {
        synchronized (this) {
            if (z) {
                if (this.f6909f == 0) {
                    this.f6910g = this.f6908e.mo34313a();
                }
                this.f6909f++;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1704x
    /* renamed from: a */
    public void mo32320a(AbstractC1684g gVar, C1687i iVar, boolean z, int i) {
        synchronized (this) {
            if (z) {
                this.f6911h += i;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1679c
    /* renamed from: b */
    public long mo32365b() {
        long j;
        synchronized (this) {
            j = this.f6915l;
        }
        return j;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1704x
    /* renamed from: b */
    public void mo32319b(AbstractC1684g gVar, C1687i iVar, boolean z) {
    }

    /* renamed from: c */
    public final void m32364c() {
        synchronized (this) {
            int a = this.f6917n ? this.f6918o : this.f6904a == null ? 0 : C1167d0.m34488a(this.f6904a);
            if (this.f6912i != a) {
                this.f6912i = a;
                if (a != 1 && a != 0 && a != 8) {
                    this.f6915l = m32371a(a);
                    long a2 = this.f6908e.mo34313a();
                    m32370a(this.f6909f > 0 ? (int) (a2 - this.f6910g) : 0, this.f6911h, this.f6915l);
                    this.f6910g = a2;
                    this.f6911h = 0L;
                    this.f6914k = 0L;
                    this.f6913j = 0L;
                    this.f6907d.m34317c();
                }
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1704x
    /* renamed from: c */
    public void mo32318c(AbstractC1684g gVar, C1687i iVar, boolean z) {
        synchronized (this) {
            if (z) {
                C1160a.m34518b(this.f6909f > 0);
                long a = this.f6908e.mo34313a();
                int i = (int) (a - this.f6910g);
                this.f6913j += i;
                this.f6914k += this.f6911h;
                if (i > 0) {
                    this.f6907d.m34321a((int) Math.sqrt(this.f6911h), (((float) this.f6911h) * 8000.0f) / i);
                    if (this.f6913j >= 2000 || this.f6914k >= 524288) {
                        this.f6915l = this.f6907d.m34322a(0.5f);
                    }
                    m32370a(i, this.f6911h, this.f6915l);
                    this.f6910g = a;
                    this.f6911h = 0L;
                }
                this.f6909f--;
            }
        }
    }
}
