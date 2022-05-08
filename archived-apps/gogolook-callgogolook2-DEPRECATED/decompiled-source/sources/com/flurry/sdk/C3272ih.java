package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.flurry.android.FlurryEventRecordStatus;
import com.flurry.sdk.C3267ie;
import com.flurry.sdk.C3425kq;
import com.flurry.sdk.C3438kv;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: com.flurry.sdk.ih */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ih.class */
public class C3272ih implements C3438kv.AbstractC3439a {

    /* renamed from: a */
    public static final String f5513a = "ih";

    /* renamed from: b */
    public static int f5514b = 100;

    /* renamed from: c */
    public static int f5515c = 10;

    /* renamed from: d */
    public static int f5516d = 1000;

    /* renamed from: e */
    public static int f5517e = 160000;

    /* renamed from: f */
    public static int f5518f = 50;

    /* renamed from: B */
    public long f5520B;

    /* renamed from: C */
    public String f5521C;

    /* renamed from: D */
    public String f5522D;

    /* renamed from: g */
    public WeakReference<C3423kp> f5529g;

    /* renamed from: h */
    public File f5530h;

    /* renamed from: i */
    public C3342jj<List<C3267ie>> f5531i;

    /* renamed from: j */
    public boolean f5532j;

    /* renamed from: k */
    public boolean f5533k;

    /* renamed from: l */
    public String f5534l;

    /* renamed from: m */
    public byte f5535m;

    /* renamed from: n */
    public Long f5536n;

    /* renamed from: o */
    public boolean f5537o;

    /* renamed from: r */
    public final AtomicInteger f5540r = new AtomicInteger(0);

    /* renamed from: s */
    public final AtomicInteger f5541s = new AtomicInteger(0);

    /* renamed from: t */
    public final List<C3267ie> f5542t = new ArrayList();

    /* renamed from: u */
    public final Map<String, List<String>> f5543u = new HashMap();

    /* renamed from: v */
    public final Map<String, String> f5544v = new HashMap();

    /* renamed from: w */
    public final Map<String, C3260ia> f5545w = new HashMap();

    /* renamed from: x */
    public final List<C3261ib> f5546x = new ArrayList();

    /* renamed from: y */
    public final List<C3258hz> f5547y = new ArrayList();

    /* renamed from: z */
    public final List<String> f5548z = new ArrayList();

    /* renamed from: A */
    public final C3183gr f5519A = new C3183gr();

    /* renamed from: E */
    public int f5523E = -1;

    /* renamed from: F */
    public boolean f5524F = true;

    /* renamed from: G */
    public int f5525G = 0;

    /* renamed from: H */
    public int f5526H = 0;

    /* renamed from: I */
    public int f5527I = 0;

    /* renamed from: p */
    public boolean f5538p = true;

    /* renamed from: q */
    public final AbstractC3344jl<C3303im> f5539q = new AbstractC3344jl<C3303im>() { // from class: com.flurry.sdk.ih.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3303im imVar) {
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.1.1
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3272ih ihVar = C3272ih.this;
                    C3294ij.m32755a();
                    ihVar.m32770a(true, C3294ij.m32752d());
                }
            });
        }
    };

    /* renamed from: J */
    public final AbstractC3344jl<C3425kq> f5528J = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.sdk.ih.9
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3425kq kqVar) {
            C3425kq kqVar2 = kqVar;
            if (C3272ih.this.f5529g == null || kqVar2.f5860b == C3272ih.this.f5529g.get()) {
                int i = C32898.f5569a[kqVar2.f5861c - 1];
                if (i == 1) {
                    final C3272ih ihVar = C3272ih.this;
                    C3423kp kpVar = kqVar2.f5860b;
                    Context context = kqVar2.f5859a.get();
                    ihVar.f5529g = new WeakReference<>(kpVar);
                    C3437ku a = C3437ku.m32494a();
                    ihVar.f5533k = ((Boolean) a.m32493a("LogEvents")).booleanValue();
                    a.m32492a("LogEvents", (C3438kv.AbstractC3439a) ihVar);
                    String str = C3272ih.f5513a;
                    C3356jq.m32615a(4, str, "initSettings, LogEvents = " + ihVar.f5533k);
                    ihVar.f5534l = (String) a.m32493a("UserId");
                    a.m32492a("UserId", (C3438kv.AbstractC3439a) ihVar);
                    String str2 = C3272ih.f5513a;
                    C3356jq.m32615a(4, str2, "initSettings, UserId = " + ihVar.f5534l);
                    ihVar.f5535m = ((Byte) a.m32493a("Gender")).byteValue();
                    a.m32492a("Gender", (C3438kv.AbstractC3439a) ihVar);
                    String str3 = C3272ih.f5513a;
                    C3356jq.m32615a(4, str3, "initSettings, Gender = " + ((int) ihVar.f5535m));
                    ihVar.f5536n = (Long) a.m32493a("Age");
                    a.m32492a("Age", (C3438kv.AbstractC3439a) ihVar);
                    String str4 = C3272ih.f5513a;
                    C3356jq.m32615a(4, str4, "initSettings, BirthDate = " + ihVar.f5536n);
                    ihVar.f5538p = ((Boolean) a.m32493a("analyticsEnabled")).booleanValue();
                    a.m32492a("analyticsEnabled", (C3438kv.AbstractC3439a) ihVar);
                    String str5 = C3272ih.f5513a;
                    C3356jq.m32615a(4, str5, "initSettings, AnalyticsEnabled = " + ihVar.f5538p);
                    ihVar.f5530h = context.getFileStreamPath(".flurryagent." + Integer.toString(C3331jb.m32681a().f5682d.hashCode(), 16));
                    ihVar.f5531i = new C3342jj<>(context.getFileStreamPath(".yflurryreport." + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurryreport.", 1, new AbstractC3422ko<List<C3267ie>>(ihVar) { // from class: com.flurry.sdk.ih.10
                        @Override // com.flurry.sdk.AbstractC3422ko
                        /* renamed from: a */
                        public final AbstractC3417kl<List<C3267ie>> mo32339a(int i2) {
                            return new C3414kk(new C3267ie.C3268a());
                        }
                    });
                    ihVar.f5537o = C3423kp.m32524a();
                    ihVar.m32778a(context);
                    ihVar.m32771a(true);
                    if (C3180gq.m32933a().f5243a != null) {
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(ihVar) { // from class: com.flurry.sdk.ih.11
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C3180gq.m32933a().f5243a.m32911a();
                            }
                        });
                    }
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.12
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3272ih.this.m32765d();
                        }
                    });
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.13
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3272ih.m32764d(C3272ih.this);
                        }
                    });
                    if (C3296il.m32745a().m32742b()) {
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.14
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C3272ih ihVar2 = C3272ih.this;
                                C3294ij.m32755a();
                                ihVar2.m32770a(true, C3294ij.m32752d());
                            }
                        });
                    } else {
                        C3345jm.m32636a().m32632a("com.flurry.android.sdk.IdProviderFinishedEvent", ihVar.f5539q);
                    }
                } else if (i == 2) {
                    C3272ih ihVar2 = C3272ih.this;
                    kqVar2.f5859a.get();
                    ihVar2.m32781a();
                } else if (i == 3) {
                    C3272ih ihVar3 = C3272ih.this;
                    kqVar2.f5859a.get();
                    ihVar3.m32769b();
                } else if (i == 4) {
                    C3345jm.m32636a().m32630b("com.flurry.android.sdk.FlurrySessionEvent", C3272ih.this.f5528J);
                    C3272ih.this.m32780a(kqVar2.f5862d);
                }
            }
        }
    };

    /* renamed from: com.flurry.sdk.ih$8 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ih$8.class */
    public static final /* synthetic */ class C32898 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5569a = new int[C3425kq.EnumC3426a.m32518a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            try {
                f5569a[C3425kq.EnumC3426a.f5863a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5569a[C3425kq.EnumC3426a.f5865c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5569a[C3425kq.EnumC3426a.f5866d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5569a[C3425kq.EnumC3426a.f5867e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C3272ih() {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", this.f5528J);
    }

    /* renamed from: a */
    public static /* synthetic */ void m32775a(C3272ih ihVar, long j, long j2, long j3, int i) {
        C3267ie a = ihVar.m32779a(j, j2, j3, i);
        ihVar.f5542t.clear();
        ihVar.f5542t.add(a);
        ihVar.m32761f();
    }

    /* renamed from: d */
    public static /* synthetic */ void m32764d(C3272ih ihVar) {
        SharedPreferences sharedPreferences = C3331jb.m32681a().f5679a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        ihVar.f5532j = sharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
        C3294ij.m32755a();
        ihVar.f5520B = sharedPreferences.getLong("com.flurry.sdk.initial_run_time", C3294ij.m32752d());
        ihVar.f5521C = sharedPreferences.getString("com.flurry.sdk.api_key", "");
        ihVar.f5522D = sharedPreferences.getString("com.flurry.sdk.variant_ids", null);
        if (TextUtils.isEmpty(ihVar.f5521C) && ihVar.f5520B > 0) {
            ihVar.f5521C = C3331jb.m32681a().f5682d;
        } else if (!ihVar.f5521C.equals(C3331jb.m32681a().f5682d)) {
            C3294ij.m32755a();
            ihVar.f5520B = C3294ij.m32752d();
        }
    }

    /* renamed from: a */
    public final FlurryEventRecordStatus m32772a(String str, Map<String, String> map, boolean z, int i) {
        synchronized (this) {
            FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
            if (!this.f5538p) {
                FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventAnalyticsDisabled;
                C3356jq.m32602e(f5513a, "Analytics has been disabled, not logging event.");
                return flurryEventRecordStatus2;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C3294ij.m32755a();
            long e = C3294ij.m32751e();
            final String b = C3445la.m32458b(str);
            if (b.length() == 0) {
                return FlurryEventRecordStatus.kFlurryEventFailed;
            }
            C3260ia iaVar = this.f5545w.get(b);
            if (iaVar != null) {
                iaVar.f5466a++;
                C3356jq.m32602e(f5513a, "Event count incremented: " + b);
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
            } else if (this.f5545w.size() < f5514b) {
                C3260ia iaVar2 = new C3260ia();
                iaVar2.f5466a = 1;
                this.f5545w.put(b, iaVar2);
                C3356jq.m32602e(f5513a, "Event count started: " + b);
            } else {
                C3356jq.m32602e(f5513a, "Too many different events. Event not counted: " + b);
                flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;
            }
            if (!this.f5533k || this.f5546x.size() >= f5516d || this.f5525G >= f5517e) {
                this.f5524F = false;
            } else {
                final Map<String, String> emptyMap = map == null ? Collections.emptyMap() : map;
                if (emptyMap.size() - i > f5515c) {
                    C3356jq.m32602e(f5513a, "MaxEventParams exceeded: " + (emptyMap.size() - i));
                    flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;
                } else {
                    C3261ib ibVar = new C3261ib(this.f5540r.incrementAndGet(), b, emptyMap, elapsedRealtime - e, z);
                    if (ibVar.m32787b().length + this.f5525G <= f5517e) {
                        this.f5546x.add(ibVar);
                        this.f5525G += ibVar.m32787b().length;
                        flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
                        if ("Flurry.purchase".equals(b)) {
                            Map<String, String> a = ibVar.m32790a();
                            String str2 = a.get("fl.OrderJSON");
                            String str3 = a.get("fl.OrderJSONSignature");
                            if (!(str2 == null || str3 == null)) {
                                a.remove("fl.OrderJSON");
                                a.remove("fl.OrderJSONSignature");
                                ibVar.m32786b(a);
                                this.f5548z.add(str3 + '\n' + str2);
                            }
                        }
                        if (this.f5538p && C3180gq.m32933a().f5243a != null) {
                            C3331jb.m32681a().m32674b(new Runnable(this) { // from class: com.flurry.sdk.ih.7
                                @Override // java.lang.Runnable
                                public final void run() {
                                    C3180gq.m32933a().f5243a.m32901a(b, emptyMap);
                                }
                            });
                        }
                    } else {
                        this.f5525G = f5517e;
                        this.f5524F = false;
                        C3356jq.m32602e(f5513a, "Event Log size exceeded. No more event details logged.");
                        flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventLogCountExceeded;
                    }
                }
            }
            return flurryEventRecordStatus;
        }
    }

    /* renamed from: a */
    public final C3267ie m32779a(long j, long j2, long j3, int i) {
        C3267ie ieVar;
        synchronized (this) {
            C3271if ifVar = new C3271if();
            ifVar.f5505s = ((Boolean) C3437ku.m32494a().m32493a("IncludeBackgroundSessionsInMetrics")).booleanValue();
            ifVar.f5504r = this.f5537o;
            ifVar.f5487a = C3314iu.m32707a().m32700g();
            ifVar.f5488b = j;
            ifVar.f5489c = j2;
            ifVar.f5490d = j3;
            ifVar.f5491e = this.f5544v;
            C3294ij.m32755a();
            C3326ja c = C3294ij.m32753c();
            ifVar.f5492f = c != null ? c.m32684d() : null;
            C3294ij.m32755a();
            C3326ja c2 = C3294ij.m32753c();
            ifVar.f5493g = c2 != null ? c2.m32683e() : null;
            C3294ij.m32755a();
            C3326ja c3 = C3294ij.m32753c();
            ifVar.f5494h = c3 != null ? c3.m32682f() : null;
            C3305io.m32733a();
            ifVar.f5495i = C3305io.m32732b();
            C3305io.m32733a();
            ifVar.f5496j = TimeZone.getDefault().getID();
            ifVar.f5497k = i;
            ifVar.f5498l = this.f5523E != -1 ? this.f5523E : C3442ky.m32482c();
            ifVar.f5499m = this.f5534l == null ? "" : this.f5534l;
            ifVar.f5500n = C3306ip.m32731a().m32718g();
            ifVar.f5501o = this.f5527I;
            ifVar.f5510x = C3448ld.m32441a(C3331jb.m32681a().f5679a).f5940i;
            ifVar.f5502p = this.f5535m;
            ifVar.f5503q = this.f5536n;
            ifVar.f5506t = this.f5545w;
            List<C3261ib> list = this.f5546x;
            String str = f5513a;
            C3356jq.m32615a(3, str, "Total events in session report: " + list.size());
            ifVar.f5507u = list;
            ifVar.f5509w = this.f5524F;
            ifVar.f5512z = this.f5547y;
            ifVar.f5511y = this.f5526H;
            String str2 = f5513a;
            C3356jq.m32615a(3, str2, "Total errors in session report: " + this.f5526H);
            ifVar.f5508v = this.f5548z;
            ifVar.f5486A = this.f5522D;
            try {
                ieVar = new C3267ie(ifVar);
            } catch (IOException e) {
                String str3 = f5513a;
                C3356jq.m32615a(5, str3, "Error creating analytics session report: " + e);
                ieVar = null;
            }
            if (ieVar == null) {
                C3356jq.m32602e(f5513a, "New session report wasn't created");
            }
        }
        return ieVar;
    }

    /* renamed from: a */
    public final void m32781a() {
        synchronized (this) {
            this.f5523E = C3442ky.m32482c();
            if (C3180gq.m32933a().f5245c != null) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.ih.15
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3180gq.m32933a().f5245c.m32558c();
                    }
                });
            }
            if (this.f5538p && C3180gq.m32933a().f5243a != null) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.ih.16
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3180gq.m32933a().f5243a.m32900b();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m32780a(final long j) {
        synchronized (this) {
            C3345jm.m32636a().m32634a(this.f5539q);
            C3294ij.m32755a();
            m32768b(C3294ij.m32750f());
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.5
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    if (C3272ih.this.f5538p && C3180gq.m32933a().f5243a != null) {
                        C3180gq.m32933a().f5243a.m32894c();
                    }
                    if (C3180gq.m32933a().f5245c != null) {
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.ih.5.1
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C3180gq.m32933a().f5245c.f5804c = true;
                            }
                        });
                    }
                }
            });
            if (C3296il.m32745a().m32742b()) {
                C3294ij.m32755a();
                final long f = C3294ij.m32750f();
                C3294ij.m32755a();
                final long h = C3294ij.m32748h();
                C3294ij.m32755a();
                final int i = C3294ij.m32747i() - 1;
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.6
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3272ih.m32775a(C3272ih.this, j, f, h, i);
                        C3272ih.this.m32770a(false, j);
                    }
                });
            }
            C3437ku.m32494a().m32490b("Gender", this);
            C3437ku.m32494a().m32490b("UserId", this);
            C3437ku.m32494a().m32490b("Age", this);
            C3437ku.m32494a().m32490b("LogEvents", this);
        }
    }

    /* renamed from: a */
    public final void m32778a(Context context) {
        Bundle extras;
        if ((context instanceof Activity) && (extras = ((Activity) context).getIntent().getExtras()) != null) {
            String str = f5513a;
            C3356jq.m32615a(3, str, "Launch Options Bundle is present " + extras.toString());
            for (String str2 : extras.keySet()) {
                if (str2 != null) {
                    Object obj = extras.get(str2);
                    String obj2 = obj != null ? obj.toString() : C14247d.f31851f;
                    this.f5543u.put(str2, Collections.singletonList(obj2));
                    String str3 = f5513a;
                    C3356jq.m32615a(3, str3, "Launch options Key: " + str2 + ". Its value: " + obj2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m32777a(C3178go goVar) {
        C3258hz hzVar;
        synchronized (this) {
            boolean z = goVar.f5232a != null && "uncaught".equals(goVar.f5232a);
            this.f5526H++;
            if (this.f5547y.size() < f5518f) {
                this.f5547y.add(new C3258hz(this.f5541s.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), goVar.f5232a, goVar.f5233b, goVar.f5234c, goVar.f5235d, goVar.f5236e, goVar.f5237f));
                C3356jq.m32602e(f5513a, "Error logged: " + hzVar.f5456a);
            } else if (z) {
                for (int i = 0; i < this.f5547y.size(); i++) {
                    C3258hz hzVar2 = this.f5547y.get(i);
                    if (hzVar2.f5456a != null && !"uncaught".equals(hzVar2.f5456a)) {
                        this.f5547y.set(i, new C3258hz(this.f5541s.incrementAndGet(), Long.valueOf(System.currentTimeMillis()).longValue(), goVar.f5232a, goVar.f5233b, goVar.f5234c, goVar.f5235d, goVar.f5236e, goVar.f5237f));
                        return;
                    }
                }
            } else {
                C3356jq.m32602e(f5513a, "Max errors logged. No more errors logged.");
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        char c;
        switch (str.hashCode()) {
            case -1752163738:
                if (str.equals("UserId")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1720015653:
                if (str.equals("analyticsEnabled")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -738063011:
                if (str.equals("LogEvents")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 65759:
                if (str.equals("Age")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2129321697:
                if (str.equals("Gender")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            this.f5533k = ((Boolean) obj).booleanValue();
            String str2 = f5513a;
            C3356jq.m32615a(4, str2, "onSettingUpdate, LogEvents = " + this.f5533k);
        } else if (c == 1) {
            this.f5534l = (String) obj;
            String str3 = f5513a;
            C3356jq.m32615a(4, str3, "onSettingUpdate, UserId = " + this.f5534l);
        } else if (c == 2) {
            this.f5535m = ((Byte) obj).byteValue();
            String str4 = f5513a;
            C3356jq.m32615a(4, str4, "onSettingUpdate, Gender = " + ((int) this.f5535m));
        } else if (c == 3) {
            this.f5536n = (Long) obj;
            String str5 = f5513a;
            C3356jq.m32615a(4, str5, "onSettingUpdate, Birthdate = " + this.f5536n);
        } else if (c != 4) {
            C3356jq.m32615a(6, f5513a, "onSettingUpdate internal error!");
        } else {
            this.f5538p = ((Boolean) obj).booleanValue();
            String str6 = f5513a;
            C3356jq.m32615a(4, str6, "onSettingUpdate, AnalyticsEnabled = " + this.f5538p);
        }
    }

    /* renamed from: a */
    public final void m32773a(String str, Map<String, String> map) {
        C3261ib next;
        synchronized (this) {
            Iterator<C3261ib> it = this.f5546x.iterator();
            do {
                if (it.hasNext()) {
                    next = it.next();
                } else {
                    return;
                }
            } while (!(next.f5468b && next.f5470d == 0 && next.f5467a.equals(str)));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C3294ij.m32755a();
            long e = C3294ij.m32751e();
            if (map != null && map.size() > 0 && this.f5525G < f5517e) {
                int length = this.f5525G - next.m32787b().length;
                HashMap hashMap = new HashMap(next.m32790a());
                next.m32788a(map);
                if (next.m32787b().length + length > f5517e) {
                    next.m32786b(hashMap);
                    this.f5524F = false;
                    this.f5525G = f5517e;
                    C3356jq.m32602e(f5513a, "Event Log size exceeded. No more event details logged.");
                } else if (next.m32790a().size() > f5515c) {
                    String str2 = f5513a;
                    C3356jq.m32602e(str2, "MaxEventParams exceeded on endEvent: " + next.m32790a().size());
                    next.m32786b(hashMap);
                } else {
                    this.f5525G = length + next.m32787b().length;
                }
            }
            next.m32789a(elapsedRealtime - e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02c6  */
    @android.annotation.TargetApi(18)
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32771a(boolean r8) {
        /*
            Method dump skipped, instructions count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3272ih.m32771a(boolean):void");
    }

    /* renamed from: a */
    public final void m32770a(boolean z, long j) {
        synchronized (this) {
            if (!this.f5538p) {
                C3356jq.m32615a(3, f5513a, "Analytics disabled, not sending agent report.");
            } else if (z || !this.f5542t.isEmpty()) {
                C3356jq.m32615a(3, f5513a, "generating agent report");
                byte[] bArr = null;
                try {
                    bArr = new C3262ic(C3331jb.m32681a().f5682d, C3314iu.m32707a().m32700g(), this.f5532j, C3296il.m32745a().m32740c(), this.f5520B, j, this.f5542t, Collections.unmodifiableMap(C3296il.m32745a().f5577a), this.f5519A.m32921a(), this.f5543u, C3333jd.m32671a().m32669b(), System.currentTimeMillis(), C3437ku.m32494a(), this.f5537o).f5475a;
                } catch (Exception e) {
                    String str = f5513a;
                    C3356jq.m32602e(str, "Exception while generating report: " + e);
                }
                if (bArr == null) {
                    C3356jq.m32602e(f5513a, "Error generating report");
                } else {
                    String str2 = f5513a;
                    C3356jq.m32615a(3, str2, "generated report of size " + bArr.length + " with " + this.f5542t.size() + " reports.");
                    C3263id idVar = C3180gq.m32933a().f5244b;
                    StringBuilder sb = new StringBuilder();
                    sb.append(C3332jc.m32672b());
                    idVar.m32547b(bArr, C3331jb.m32681a().f5682d, sb.toString());
                }
                this.f5542t.clear();
                this.f5531i.m32639b();
            }
        }
    }

    /* renamed from: b */
    public final void m32769b() {
        synchronized (this) {
            m32759g();
        }
    }

    /* renamed from: b */
    public final void m32768b(long j) {
        synchronized (this) {
            for (C3261ib ibVar : this.f5546x) {
                if (ibVar.f5468b && !ibVar.f5469c) {
                    ibVar.m32789a(j);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32765d() {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = 4
            java.lang.String r1 = com.flurry.sdk.C3272ih.f5513a     // Catch: all -> 0x009a
            java.lang.String r2 = "Loading persistent session report data."
            com.flurry.sdk.C3356jq.m32615a(r0, r1, r2)     // Catch: all -> 0x009a
            r0 = r5
            com.flurry.sdk.jj<java.util.List<com.flurry.sdk.ie>> r0 = r0.f5531i     // Catch: all -> 0x009a
            java.lang.Object r0 = r0.m32641a()     // Catch: all -> 0x009a
            java.util.List r0 = (java.util.List) r0     // Catch: all -> 0x009a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0029
            r0 = r5
            java.util.List<com.flurry.sdk.ie> r0 = r0.f5542t     // Catch: all -> 0x009a
            r1 = r6
            boolean r0 = r0.addAll(r1)     // Catch: all -> 0x009a
            r0 = r5
            monitor-exit(r0)
            return
        L_0x0029:
            r0 = r5
            java.io.File r0 = r0.f5530h     // Catch: all -> 0x009a
            boolean r0 = r0.exists()     // Catch: all -> 0x009a
            if (r0 == 0) goto L_0x0097
            r0 = 4
            java.lang.String r1 = com.flurry.sdk.C3272ih.f5513a     // Catch: all -> 0x009a
            java.lang.String r2 = "Legacy persistent agent data found, converting."
            com.flurry.sdk.C3356jq.m32615a(r0, r1, r2)     // Catch: all -> 0x009a
            r0 = r5
            java.io.File r0 = r0.f5530h     // Catch: all -> 0x009a
            com.flurry.sdk.ii r0 = com.flurry.sdk.C3185gt.m32915a(r0)     // Catch: all -> 0x009a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x008b
            r0 = r6
            boolean r0 = r0.f5572b     // Catch: all -> 0x009a
            r7 = r0
            r0 = r6
            long r0 = r0.f5573c     // Catch: all -> 0x009a
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0065
            com.flurry.sdk.ij r0 = com.flurry.sdk.C3294ij.m32755a()     // Catch: all -> 0x009a
            long r0 = com.flurry.sdk.C3294ij.m32752d()     // Catch: all -> 0x009a
            r10 = r0
        L_0x0065:
            r0 = r5
            r1 = r7
            r0.f5532j = r1     // Catch: all -> 0x009a
            r0 = r5
            r1 = r10
            r0.f5520B = r1     // Catch: all -> 0x009a
            r0 = r5
            r0.m32763e()     // Catch: all -> 0x009a
            r0 = r6
            java.util.List<com.flurry.sdk.ie> r0 = r0.f5571a     // Catch: all -> 0x009a
            java.util.List r0 = java.util.Collections.unmodifiableList(r0)     // Catch: all -> 0x009a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x008b
            r0 = r5
            java.util.List<com.flurry.sdk.ie> r0 = r0.f5542t     // Catch: all -> 0x009a
            r1 = r6
            boolean r0 = r0.addAll(r1)     // Catch: all -> 0x009a
        L_0x008b:
            r0 = r5
            java.io.File r0 = r0.f5530h     // Catch: all -> 0x009a
            boolean r0 = r0.delete()     // Catch: all -> 0x009a
            r0 = r5
            r0.m32761f()     // Catch: all -> 0x009a
        L_0x0097:
            r0 = r5
            monitor-exit(r0)
            return
        L_0x009a:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3272ih.m32765d():void");
    }

    /* renamed from: e */
    public final void m32763e() {
        SharedPreferences.Editor edit = C3331jb.m32681a().f5679a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putBoolean("com.flurry.sdk.previous_successful_report", this.f5532j);
        edit.putLong("com.flurry.sdk.initial_run_time", this.f5520B);
        edit.putString("com.flurry.sdk.api_key", C3331jb.m32681a().f5682d);
        edit.apply();
    }

    /* renamed from: f */
    public final void m32761f() {
        synchronized (this) {
            C3356jq.m32615a(4, f5513a, "Saving persistent agent data.");
            this.f5531i.m32640a(this.f5542t);
        }
    }

    /* renamed from: g */
    public final void m32759g() {
        synchronized (this) {
            m32771a(false);
            C3294ij.m32755a();
            final long d = C3294ij.m32752d();
            C3294ij.m32755a();
            final long f = C3294ij.m32750f();
            C3294ij.m32755a();
            final long h = C3294ij.m32748h();
            C3294ij.m32755a();
            int i = C3294ij.m32747i();
            if (this.f5538p && C3180gq.m32933a().f5243a != null) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.ih.2
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3180gq.m32933a().f5243a.m32910a(d);
                    }
                });
            }
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.3
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3272ih.this.m32763e();
                }
            });
            if (C3296il.m32745a().m32742b()) {
                final int i2 = i - 1;
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ih.4
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3272ih.m32775a(C3272ih.this, d, f, h, i2);
                    }
                });
            }
        }
    }
}
