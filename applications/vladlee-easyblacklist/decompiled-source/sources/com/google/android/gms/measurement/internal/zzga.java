package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzv;
import java.net.URL;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzga.class */
public class zzga implements AbstractC2763eq {

    /* renamed from: a */
    private static volatile zzga f17198a;

    /* renamed from: A */
    private long f17199A;

    /* renamed from: B */
    private volatile Boolean f17200B;

    /* renamed from: C */
    private Boolean f17201C;

    /* renamed from: D */
    private Boolean f17202D;

    /* renamed from: E */
    private int f17203E;

    /* renamed from: G */
    private final long f17205G;

    /* renamed from: b */
    private final Context f17206b;

    /* renamed from: c */
    private final String f17207c;

    /* renamed from: d */
    private final String f17208d;

    /* renamed from: e */
    private final String f17209e;

    /* renamed from: f */
    private final boolean f17210f;

    /* renamed from: h */
    private final zzx f17212h;

    /* renamed from: i */
    private final C2734do f17213i;

    /* renamed from: j */
    private final zzew f17214j;

    /* renamed from: k */
    private final zzft f17215k;

    /* renamed from: l */
    private final zzjo f17216l;

    /* renamed from: m */
    private final zzkm f17217m;

    /* renamed from: n */
    private final zzeu f17218n;

    /* renamed from: o */
    private final Clock f17219o;

    /* renamed from: p */
    private final zzii f17220p;

    /* renamed from: q */
    private final zzhb f17221q;

    /* renamed from: r */
    private final zzb f17222r;

    /* renamed from: s */
    private final zzhz f17223s;

    /* renamed from: t */
    private zzes f17224t;

    /* renamed from: u */
    private zzij f17225u;

    /* renamed from: v */
    private zzah f17226v;

    /* renamed from: w */
    private zzep f17227w;

    /* renamed from: x */
    private zzfl f17228x;

    /* renamed from: z */
    private Boolean f17230z;

    /* renamed from: y */
    private boolean f17229y = false;

    /* renamed from: F */
    private AtomicInteger f17204F = new AtomicInteger(0);

    /* renamed from: g */
    private final zzw f17211g = new zzw();

    private zzga(zzhc zzhcVar) {
        zzey zzeyVar;
        String str;
        Preconditions.checkNotNull(zzhcVar);
        C2725df.f16650a = this.f17211g;
        this.f17206b = zzhcVar.f17240a;
        this.f17207c = zzhcVar.f17241b;
        this.f17208d = zzhcVar.f17242c;
        this.f17209e = zzhcVar.f17243d;
        this.f17210f = zzhcVar.f17247h;
        this.f17200B = zzhcVar.f17244e;
        zzv zzvVar = zzhcVar.f17246g;
        if (!(zzvVar == null || zzvVar.zzg == null)) {
            Object obj = zzvVar.zzg.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f17201C = (Boolean) obj;
            }
            Object obj2 = zzvVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f17202D = (Boolean) obj2;
            }
        }
        zzcl.zza(this.f17206b);
        this.f17219o = DefaultClock.getInstance();
        this.f17205G = this.f17219o.currentTimeMillis();
        this.f17212h = new zzx(this);
        C2734do doVar = new C2734do(this);
        doVar.zzab();
        this.f17213i = doVar;
        zzew zzewVar = new zzew(this);
        zzewVar.zzab();
        this.f17214j = zzewVar;
        zzkm zzkmVar = new zzkm(this);
        zzkmVar.zzab();
        this.f17217m = zzkmVar;
        zzeu zzeuVar = new zzeu(this);
        zzeuVar.zzab();
        this.f17218n = zzeuVar;
        this.f17222r = new zzb(this);
        zzii zziiVar = new zzii(this);
        zziiVar.zzx();
        this.f17220p = zziiVar;
        zzhb zzhbVar = new zzhb(this);
        zzhbVar.zzx();
        this.f17221q = zzhbVar;
        zzjo zzjoVar = new zzjo(this);
        zzjoVar.zzx();
        this.f17216l = zzjoVar;
        zzhz zzhzVar = new zzhz(this);
        zzhzVar.zzab();
        this.f17223s = zzhzVar;
        zzft zzftVar = new zzft(this);
        zzftVar.zzab();
        this.f17215k = zzftVar;
        boolean z = (zzhcVar.f17246g == null || zzhcVar.f17246g.zzb == 0) ? false : true;
        if (this.f17206b.getApplicationContext() instanceof Application) {
            zzhb zzh = zzh();
            if (zzh.zzn().getApplicationContext() instanceof Application) {
                Application application = (Application) zzh.zzn().getApplicationContext();
                if (zzh.f17234a == null) {
                    zzh.f17234a = new C2788fo(zzh, (byte) 0);
                }
                if (!z) {
                    application.unregisterActivityLifecycleCallbacks(zzh.f17234a);
                    application.registerActivityLifecycleCallbacks(zzh.f17234a);
                    zzeyVar = zzh.zzr().zzx();
                    str = "Registered activity lifecycle callback";
                }
            }
            this.f17215k.zza(new RunnableC2745dz(this, zzhcVar));
        }
        zzeyVar = zzr().zzi();
        str = "Application context is not an Application";
        zzeyVar.zza(str);
        this.f17215k.zza(new RunnableC2745dz(this, zzhcVar));
    }

    /* renamed from: a */
    private static void m1812a(AbstractC2713cu cuVar) {
        if (cuVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!cuVar.m2147a()) {
            String valueOf = String.valueOf(cuVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: a */
    private static void m1811a(C2761eo eoVar) {
        if (eoVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: a */
    private static void m1810a(AbstractC2764er erVar) {
        if (erVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!erVar.m2057k()) {
            String valueOf = String.valueOf(erVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1809a(zzga zzgaVar, zzhc zzhcVar) {
        zzey zzeyVar;
        String str;
        zzgaVar.zzq().zzd();
        zzah zzahVar = new zzah(zzgaVar);
        zzahVar.zzab();
        zzgaVar.f17226v = zzahVar;
        zzep zzepVar = new zzep(zzgaVar, zzhcVar.f17245f);
        zzepVar.zzx();
        zzgaVar.f17227w = zzepVar;
        zzes zzesVar = new zzes(zzgaVar);
        zzesVar.zzx();
        zzgaVar.f17224t = zzesVar;
        zzij zzijVar = new zzij(zzgaVar);
        zzijVar.zzx();
        zzgaVar.f17225u = zzijVar;
        zzgaVar.f17217m.zzac();
        zzgaVar.f17213i.zzac();
        zzgaVar.f17228x = new zzfl(zzgaVar);
        zzgaVar.f17227w.zzy();
        zzgaVar.zzr().zzv().zza("App measurement is starting up, version", Long.valueOf(zzgaVar.f17212h.zze()));
        zzgaVar.zzr().zzv().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String e = zzepVar.m1882e();
        if (TextUtils.isEmpty(zzgaVar.f17207c)) {
            if (zzgaVar.zzi().m1604f(e)) {
                zzeyVar = zzgaVar.zzr().zzv();
                str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzeyVar = zzgaVar.zzr().zzv();
                String valueOf = String.valueOf(e);
                str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzeyVar.zza(str);
        }
        zzgaVar.zzr().zzw().zza("Debug-level message logging enabled");
        if (zzgaVar.f17203E != zzgaVar.f17204F.get()) {
            zzgaVar.zzr().zzf().zza("Not all components initialized", Integer.valueOf(zzgaVar.f17203E), Integer.valueOf(zzgaVar.f17204F.get()));
        }
        zzgaVar.f17229y = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m1805d() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: i */
    private final zzhz m1800i() {
        m1810a((AbstractC2764er) this.f17223s);
        return this.f17223s;
    }

    /* renamed from: j */
    private final void m1799j() {
        if (!this.f17229y) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r13.zzf == null) goto L_0x0016;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.measurement.internal.zzga zza(android.content.Context r12, com.google.android.gms.internal.measurement.zzv r13) {
        /*
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0034
            r0 = r13
            java.lang.String r0 = r0.zze
            if (r0 == 0) goto L_0x0016
            r0 = r13
            r14 = r0
            r0 = r13
            java.lang.String r0 = r0.zzf
            if (r0 != 0) goto L_0x0034
        L_0x0016:
            com.google.android.gms.internal.measurement.zzv r0 = new com.google.android.gms.internal.measurement.zzv
            r1 = r0
            r2 = r13
            long r2 = r2.zza
            r3 = r13
            long r3 = r3.zzb
            r4 = r13
            boolean r4 = r4.zzc
            r5 = r13
            java.lang.String r5 = r5.zzd
            r6 = 0
            r7 = 0
            r8 = r13
            android.os.Bundle r8 = r8.zzg
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r14 = r0
        L_0x0034:
            r0 = r12
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            r0 = r12
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.f17198a
            if (r0 != 0) goto L_0x0073
            java.lang.Class<com.google.android.gms.measurement.internal.zzga> r0 = com.google.android.gms.measurement.internal.zzga.class
            monitor-enter(r0)
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.f17198a     // Catch: all -> 0x006d
            if (r0 != 0) goto L_0x0067
            com.google.android.gms.measurement.internal.zzhc r0 = new com.google.android.gms.measurement.internal.zzhc     // Catch: all -> 0x006d
            r13 = r0
            r0 = r13
            r1 = r12
            r2 = r14
            r0.<init>(r1, r2)     // Catch: all -> 0x006d
            com.google.android.gms.measurement.internal.zzga r0 = new com.google.android.gms.measurement.internal.zzga     // Catch: all -> 0x006d
            r12 = r0
            r0 = r12
            r1 = r13
            r0.<init>(r1)     // Catch: all -> 0x006d
            r0 = r12
            com.google.android.gms.measurement.internal.zzga.f17198a = r0     // Catch: all -> 0x006d
        L_0x0067:
            java.lang.Class<com.google.android.gms.measurement.internal.zzga> r0 = com.google.android.gms.measurement.internal.zzga.class
            monitor-exit(r0)     // Catch: all -> 0x006d
            goto L_0x009b
        L_0x006d:
            r12 = move-exception
            java.lang.Class<com.google.android.gms.measurement.internal.zzga> r0 = com.google.android.gms.measurement.internal.zzga.class
            monitor-exit(r0)     // Catch: all -> 0x006d
            r0 = r12
            throw r0
        L_0x0073:
            r0 = r14
            if (r0 == 0) goto L_0x009b
            r0 = r14
            android.os.Bundle r0 = r0.zzg
            if (r0 == 0) goto L_0x009b
            r0 = r14
            android.os.Bundle r0 = r0.zzg
            java.lang.String r1 = "dataCollectionDefaultEnabled"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x009b
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.f17198a
            r1 = r14
            android.os.Bundle r1 = r1.zzg
            java.lang.String r2 = "dataCollectionDefaultEnabled"
            boolean r1 = r1.getBoolean(r2)
            r0.m1808a(r1)
        L_0x009b:
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.f17198a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzga.zza(android.content.Context, com.google.android.gms.internal.measurement.zzv):com.google.android.gms.measurement.internal.zzga");
    }

    public static zzga zza(Context context, String str, String str2, Bundle bundle) {
        return zza(context, new zzv(0L, 0L, true, null, null, null, bundle));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1814a() {
        zzq().zzd();
        if (zzc().f16679c.zza() == 0) {
            zzc().f16679c.zza(this.f17219o.currentTimeMillis());
        }
        if (zzc().f16684h.zza() == 0) {
            zzr().zzx().zza("Persisting first open", Long.valueOf(this.f17205G));
            zzc().f16684h.zza(this.f17205G);
        }
        if (m1801h()) {
            if (!TextUtils.isEmpty(zzy().m1881f()) || !TextUtils.isEmpty(zzy().m1880g())) {
                zzi();
                if (zzkm.m1622a(zzy().m1881f(), zzc().m2133d(), zzy().m1880g(), zzc().m2131e())) {
                    zzr().zzv().zza("Rechecking which service to use due to a GMP App Id change");
                    zzc().m2129g();
                    zzk().zzab();
                    this.f17225u.zzah();
                    this.f17225u.m1747h();
                    zzc().f16684h.zza(this.f17205G);
                    zzc().f16686j.zza(null);
                }
                zzc().m2135c(zzy().m1881f());
                zzc().m2132d(zzy().m1880g());
            }
            zzh().m1788a(zzc().f16686j.zza());
            if (zzkb.zzb() && this.f17212h.zza(zzap.zzcl) && !zzi().zzv() && !TextUtils.isEmpty(zzc().f16699w.zza())) {
                zzr().zzi().zza("Remote config removed with active feature rollouts");
                zzc().f16699w.zza(null);
            }
            if (!TextUtils.isEmpty(zzy().m1881f()) || !TextUtils.isEmpty(zzy().m1880g())) {
                boolean zzab = zzab();
                if (!zzc().m2126j() && !this.f17212h.zzg()) {
                    zzc().m2134c(!zzab);
                }
                if (zzab) {
                    zzh().zzai();
                }
                zze().f17267a.m2029a();
                zzw().zza(new AtomicReference<>());
            }
        } else if (zzab()) {
            if (!zzi().m1607d("android.permission.INTERNET")) {
                zzr().zzf().zza("App is missing INTERNET permission");
            }
            if (!zzi().m1607d("android.permission.ACCESS_NETWORK_STATE")) {
                zzr().zzf().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!Wrappers.packageManager(this.f17206b).isCallerInstantApp() && !this.f17212h.m1601a()) {
                if (!zzfq.zza(this.f17206b)) {
                    zzr().zzf().zza("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzkm.m1643a(this.f17206b)) {
                    zzr().zzf().zza("AppMeasurementService not registered/enabled");
                }
            }
            zzr().zzf().zza("Uploading is not possible. App measurement disabled");
        }
        zzc().f16691o.zza(this.f17212h.zza(zzap.zzbh));
        zzc().f16692p.zza(this.f17212h.zza(zzap.zzbi));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m1813a(int i, Throwable th, byte[] bArr) {
        List<ResolveInfo> queryIntentActivities;
        boolean z = true;
        if (!((i == 200 || i == 204 || i == 304) && th == null)) {
            zzr().zzi().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        zzc().f16697u.zza(true);
        if (bArr.length == 0) {
            zzr().zzw().zza("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            double optDouble = jSONObject.optDouble("timestamp", 0.0d);
            if (TextUtils.isEmpty(optString)) {
                zzr().zzw().zza("Deferred Deep Link is empty.");
                return;
            }
            zzkm zzi = zzi();
            zzi.zzb();
            if (TextUtils.isEmpty(optString) || (queryIntentActivities = zzi.zzn().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) == null || queryIntentActivities.isEmpty()) {
                z = false;
            }
            if (!z) {
                zzr().zzi().zza("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.f17221q.zza("auto", "_cmp", bundle);
            zzkm zzi2 = zzi();
            if (!TextUtils.isEmpty(optString) && zzi2.m1630a(optString, optDouble)) {
                zzi2.zzn().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
            }
        } catch (JSONException e) {
            zzr().zzf().zza("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1808a(boolean z) {
        this.f17200B = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final zzft m1807b() {
        return this.f17215k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final long m1806c() {
        Long valueOf = Long.valueOf(zzc().f16684h.zza());
        return valueOf.longValue() == 0 ? this.f17205G : Math.min(this.f17205G, valueOf.longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m1804e() {
        this.f17203E++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m1803f() {
        this.f17203E++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m1802g() {
        this.f17204F.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m1801h() {
        m1799j();
        zzq().zzd();
        Boolean bool = this.f17230z;
        if (bool == null || this.f17199A == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.f17219o.elapsedRealtime() - this.f17199A) > 1000)) {
            this.f17199A = this.f17219o.elapsedRealtime();
            this.f17230z = Boolean.valueOf(zzi().m1607d("android.permission.INTERNET") && zzi().m1607d("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.f17206b).isCallerInstantApp() || this.f17212h.m1601a() || (zzfq.zza(this.f17206b) && zzkm.m1643a(this.f17206b))));
            if (this.f17230z.booleanValue()) {
                boolean z = true;
                if (!zzi().m1623a(zzy().m1881f(), zzy().m1880g(), zzy().m1879h())) {
                    z = !TextUtils.isEmpty(zzy().m1880g());
                }
                this.f17230z = Boolean.valueOf(z);
            }
        }
        return this.f17230z.booleanValue();
    }

    public final boolean zzaa() {
        return this.f17200B != null && this.f17200B.booleanValue();
    }

    public final boolean zzab() {
        zzq().zzd();
        m1799j();
        if (this.f17212h.zzg()) {
            return false;
        }
        Boolean bool = this.f17202D;
        if (bool != null && bool.booleanValue()) {
            return false;
        }
        Boolean h = zzc().m2128h();
        if (h != null) {
            return h.booleanValue();
        }
        Boolean zzh = this.f17212h.zzh();
        if (zzh != null) {
            return zzh.booleanValue();
        }
        Boolean bool2 = this.f17201C;
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        if (GoogleServices.isMeasurementExplicitlyDisabled()) {
            return false;
        }
        if (!this.f17212h.zza(zzap.zzax) || this.f17200B == null) {
            return true;
        }
        return this.f17200B.booleanValue();
    }

    public final void zzah() {
        zzq().zzd();
        m1810a((AbstractC2764er) m1800i());
        String e = zzy().m1882e();
        Pair<String, Boolean> a = zzc().m2140a(e);
        if (!this.f17212h.zzi().booleanValue() || ((Boolean) a.second).booleanValue() || TextUtils.isEmpty((CharSequence) a.first)) {
            zzr().zzw().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        } else if (!m1800i().zzg()) {
            zzr().zzi().zza("Network is not available for Deferred Deep Link request. Skipping");
        } else {
            URL zza = zzi().zza(zzy().zzt().zze(), e, (String) a.first, zzc().f16698v.zza() - 1);
            zzhz i = m1800i();
            AbstractC2791fr dxVar = new AbstractC2791fr(this) { // from class: com.google.android.gms.measurement.internal.dx

                /* renamed from: a */
                private final zzga f16725a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16725a = this;
                }

                @Override // com.google.android.gms.measurement.internal.AbstractC2791fr
                /* renamed from: a */
                public final void mo2046a(int i2, Throwable th, byte[] bArr) {
                    this.f16725a.m1813a(i2, th, bArr);
                }
            };
            i.zzd();
            i.m2056l();
            Preconditions.checkNotNull(zza);
            Preconditions.checkNotNull(dxVar);
            i.zzq().zzb(new RunnableC2790fq(i, e, zza, dxVar));
        }
    }

    public final zzx zzb() {
        return this.f17212h;
    }

    public final C2734do zzc() {
        m1811a((C2761eo) this.f17213i);
        return this.f17213i;
    }

    public final zzew zzd() {
        zzew zzewVar = this.f17214j;
        if (zzewVar == null || !zzewVar.m2057k()) {
            return null;
        }
        return this.f17214j;
    }

    public final zzjo zze() {
        m1812a((AbstractC2713cu) this.f17216l);
        return this.f17216l;
    }

    public final zzfl zzf() {
        return this.f17228x;
    }

    public final zzhb zzh() {
        m1812a((AbstractC2713cu) this.f17221q);
        return this.f17221q;
    }

    public final zzkm zzi() {
        m1811a((C2761eo) this.f17217m);
        return this.f17217m;
    }

    public final zzeu zzj() {
        m1811a((C2761eo) this.f17218n);
        return this.f17218n;
    }

    public final zzes zzk() {
        m1812a((AbstractC2713cu) this.f17224t);
        return this.f17224t;
    }

    public final boolean zzl() {
        return TextUtils.isEmpty(this.f17207c);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final Clock zzm() {
        return this.f17219o;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final Context zzn() {
        return this.f17206b;
    }

    public final String zzo() {
        return this.f17207c;
    }

    public final String zzp() {
        return this.f17208d;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final zzft zzq() {
        m1810a((AbstractC2764er) this.f17215k);
        return this.f17215k;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final zzew zzr() {
        m1810a((AbstractC2764er) this.f17214j);
        return this.f17214j;
    }

    public final String zzs() {
        return this.f17209e;
    }

    public final boolean zzt() {
        return this.f17210f;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final zzw zzu() {
        return this.f17211g;
    }

    public final zzii zzv() {
        m1812a((AbstractC2713cu) this.f17220p);
        return this.f17220p;
    }

    public final zzij zzw() {
        m1812a((AbstractC2713cu) this.f17225u);
        return this.f17225u;
    }

    public final zzah zzx() {
        m1810a((AbstractC2764er) this.f17226v);
        return this.f17226v;
    }

    public final zzep zzy() {
        m1812a((AbstractC2713cu) this.f17227w);
        return this.f17227w;
    }

    public final zzb zzz() {
        zzb zzbVar = this.f17222r;
        if (zzbVar != null) {
            return zzbVar;
        }
        throw new IllegalStateException("Component not created");
    }
}
