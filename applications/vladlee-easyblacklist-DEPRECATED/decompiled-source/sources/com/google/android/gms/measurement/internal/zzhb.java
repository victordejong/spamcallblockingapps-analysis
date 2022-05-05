package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.p026b.C0529a;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhb.class */
public final class zzhb extends AbstractC2713cu {

    /* renamed from: a */
    protected C2788fo f17234a;

    /* renamed from: c */
    private zzha f17236c;

    /* renamed from: e */
    private boolean f17238e;

    /* renamed from: d */
    private final Set<zzgz> f17237d = new CopyOnWriteArraySet();

    /* renamed from: b */
    protected boolean f17235b = true;

    /* renamed from: f */
    private final AtomicReference<String> f17239f = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public zzhb(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    private final String m1793a(long j) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            zzq().zza(new RunnableC2770ex(this, atomicReference));
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzr().zzi().zza("Interrupted waiting for app instance id");
                return null;
            }
        }
        return (String) atomicReference.get();
    }

    /* renamed from: a */
    private final ArrayList<Bundle> m1782a(String str, String str2, String str3) {
        if (zzq().zzg()) {
            zzr().zzf().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        } else if (zzw.zza()) {
            zzr().zzf().zza("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f16804x.zzq().m1838a(atomicReference, 5000L, "get conditional user properties", new RunnableC2778fe(this, atomicReference, str, str2, str3));
            List list = (List) atomicReference.get();
            if (list != null) {
                return zzkm.zzb(list);
            }
            zzr().zzi().zza("Timed out waiting for get conditional user properties", str);
            return new ArrayList<>();
        }
    }

    /* renamed from: a */
    private final Map<String, Object> m1780a(String str, String str2, String str3, boolean z) {
        zzey zzi;
        String str4;
        if (zzq().zzg()) {
            zzi = zzr().zzf();
            str4 = "Cannot get user properties from analytics worker thread";
        } else if (zzw.zza()) {
            zzi = zzr().zzf();
            str4 = "Cannot get user properties from main thread";
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f16804x.zzq().m1838a(atomicReference, 5000L, "get user properties", new RunnableC2780fg(this, atomicReference, str, str2, str3, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list == null) {
                zzi = zzr().zzi();
                str4 = "Timed out waiting for handle get user properties";
            } else {
                C0529a aVar = new C0529a(list.size());
                for (zzkl zzklVar : list) {
                    aVar.put(zzklVar.zza, zzklVar.zza());
                }
                return aVar;
            }
        }
        zzi.zza(str4);
        return Collections.emptyMap();
    }

    /* renamed from: a */
    private final void m1792a(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        zzgw.zza(bundle, "app_id", String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN));
        Preconditions.checkNotNull(bundle.get(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        Object obj = bundle.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (zzp().m1611c(string) != 0) {
            zzr().zzf().zza("Invalid conditional user property name", zzo().m1862c(string));
        } else if (zzp().m1615b(string, obj) != 0) {
            zzr().zzf().zza("Invalid conditional user property value", zzo().m1862c(string), obj);
        } else {
            zzp();
            Object c = zzkm.m1610c(string, obj);
            if (c == null) {
                zzr().zzf().zza("Unable to normalize conditional user property value", zzo().m1862c(string), obj);
                return;
            }
            zzgw.zza(bundle, c);
            long j2 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
            if (TextUtils.isEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME)) || (j2 <= 15552000000L && j2 >= 1)) {
                long j3 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
                if (j3 > 15552000000L || j3 < 1) {
                    zzr().zzf().zza("Invalid conditional user property time to live", zzo().m1862c(string), Long.valueOf(j3));
                } else {
                    zzq().zza(new RunnableC2776fc(this, bundle));
                }
            } else {
                zzr().zzf().zza("Invalid conditional user property timeout", zzo().m1862c(string), Long.valueOf(j2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1790a(zzhb zzhbVar, Bundle bundle) {
        zzhbVar.zzd();
        zzhbVar.m2146b();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN));
        Preconditions.checkNotNull(bundle.get(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        if (!zzhbVar.f16804x.zzab()) {
            zzhbVar.zzr().zzw().zza("Conditional property not sent since collection is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get(AppMeasurementSdk.ConditionalUserProperty.VALUE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN));
        try {
            zzan a = zzhbVar.zzp().m1625a(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), 0L);
            zzhbVar.zzh().m1761a(new zzv(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), zzklVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzhbVar.zzp().m1625a(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), 0L), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), a, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzhbVar.zzp().m1625a(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), 0L)));
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1789a(zzhb zzhbVar, boolean z) {
        zzhbVar.zzd();
        zzhbVar.zzb();
        zzhbVar.m2146b();
        zzhbVar.zzr().zzw().zza("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzhbVar.zzs().m2137b(z);
        zzhbVar.m1778e();
    }

    /* renamed from: a */
    private final void m1785a(String str, String str2, long j, Object obj) {
        zzq().zza(new RunnableC2768ev(this, str, str2, obj, j));
    }

    /* renamed from: a */
    private final void m1781a(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = zzm().currentTimeMillis();
        Preconditions.checkNotEmpty(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str3 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str3);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzq().zza(new RunnableC2775fb(this, bundle2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m1779b(zzhb zzhbVar, Bundle bundle) {
        zzhbVar.zzd();
        zzhbVar.m2146b();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        if (!zzhbVar.f16804x.zzab()) {
            zzhbVar.zzr().zzw().zza("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            zzhbVar.zzh().m1761a(new zzv(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), new zzkl(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, null), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzhbVar.zzp().m1625a(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP))));
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final void m1778e() {
        Long valueOf;
        if (zzt().zza(zzap.zzbb)) {
            zzd();
            String zza = zzs().f16690n.zza();
            if (zza != null) {
                if ("unset".equals(zza)) {
                    valueOf = null;
                } else {
                    valueOf = Long.valueOf("true".equals(zza) ? 1L : 0L);
                }
                m1783a("app", "_npa", valueOf, zzm().currentTimeMillis());
            }
        }
        if (!this.f16804x.zzab() || !this.f17235b) {
            zzr().zzw().zza("Updating Scion state (FE)");
            zzh().m1752e();
            return;
        }
        zzr().zzw().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzai();
        if (zzkt.zzb() && zzt().zza(zzap.zzcm)) {
            zzk().f17267a.m2029a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1788a(String str) {
        this.f17239f.set(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1787a(String str, String str2, long j, Bundle bundle) {
        zzb();
        zzd();
        m1786a(str, str2, j, bundle, true, this.f17236c == null || zzkm.m1605e(str2), false, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1786a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        List<String> k;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzd();
        m2146b();
        if (!this.f16804x.zzab()) {
            zzr().zzw().zza("Event not sent since app measurement is disabled");
        } else if (!zzt().zza(zzap.zzbk) || (k = zzg().m1876k()) == null || k.contains(str2)) {
            int i = 0;
            int i2 = 0;
            if (!this.f17238e) {
                this.f17238e = true;
                try {
                    try {
                        (!this.f16804x.zzt() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, zzn().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, zzn());
                    } catch (Exception e) {
                        zzr().zzi().zza("Failed to invoke Tag Manager's initialize() method", e);
                    }
                } catch (ClassNotFoundException e2) {
                    zzr().zzv().zza("Tag Manager is not found and thus will not be used");
                }
            }
            if (zzt().zza(zzap.zzbw) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
                m1783a("auto", "_lgclid", bundle.getString("gclid"), zzm().currentTimeMillis());
            }
            if (z3) {
                zzu();
                if (!"_iap".equals(str2)) {
                    zzkm zzi = this.f16804x.zzi();
                    int i3 = 2;
                    if (zzi.m1627a("event", str2)) {
                        if (!zzi.m1621a("event", zzgv.zza, str2)) {
                            i3 = 13;
                        } else if (zzi.m1629a("event", 40, str2)) {
                            i3 = 0;
                        }
                    }
                    if (i3 != 0) {
                        zzr().zzh().zza("Invalid public event name. Event will not be logged (FE)", zzo().m1866a(str2));
                        this.f16804x.zzi();
                        String zza = zzkm.zza(str2, 40, true);
                        if (str2 != null) {
                            i2 = str2.length();
                        }
                        this.f16804x.zzi().zza(i3, "_ev", zza, i2);
                        return;
                    }
                }
            }
            zzu();
            zzif zzab = zzi().zzab();
            if (zzab != null && !bundle.containsKey("_sc")) {
                zzab.f17249a = true;
            }
            zzii.zza(zzab, bundle, z && z3);
            boolean equals = "am".equals(str);
            boolean e3 = zzkm.m1605e(str2);
            if (z && this.f17236c != null && !e3 && !equals) {
                zzr().zzw().zza("Passing event to registered event handler (FE)", zzo().m1866a(str2), zzo().m1870a(bundle));
                this.f17236c.interceptEvent(str, str2, bundle, j);
            } else if (this.f16804x.m1801h()) {
                int b = zzp().m1616b(str2);
                if (b != 0) {
                    zzr().zzh().zza("Invalid event name. Event will not be logged (FE)", zzo().m1866a(str2));
                    zzp();
                    String zza2 = zzkm.zza(str2, 40, true);
                    if (str2 != null) {
                        i = str2.length();
                    }
                    this.f16804x.zzi().m1644a(b, "_ev", zza2, i);
                    return;
                }
                List<String> listOf = CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
                Bundle a = zzp().m1624a(str3, str2, bundle, listOf, z3, true);
                zzif zzifVar = (a == null || !a.containsKey("_sc") || !a.containsKey("_si")) ? null : new zzif(a.getString("_sn"), a.getString("_sc"), Long.valueOf(a.getLong("_si")).longValue());
                if (zzifVar != null) {
                    zzab = zzifVar;
                }
                String str4 = "_ae";
                if (zzt().zza(zzap.zzay)) {
                    zzu();
                    if (zzi().zzab() != null && "_ae".equals(str2)) {
                        long b2 = zzk().f17268b.m2034b();
                        if (b2 > 0) {
                            zzp().m1637a(a, b2);
                        }
                    }
                }
                if (zzkb.zzb() && zzt().zza(zzap.zzcl)) {
                    if (!"auto".equals(str) && "_ssr".equals(str2)) {
                        zzkm zzp = zzp();
                        String string = a.getString("_ffr");
                        String trim = Strings.isEmptyOrWhitespace(string) ? null : string.trim();
                        if (zzkm.m1609c(trim, zzp.zzs().f16699w.zza())) {
                            zzp.zzr().zzw().zza("Not logging duplicate session_start_with_rollout event");
                            z4 = false;
                        } else {
                            zzp.zzs().f16699w.zza(trim);
                            z4 = true;
                        }
                        if (!z4) {
                            return;
                        }
                    } else if ("_ae".equals(str2)) {
                        String zza3 = zzp().zzs().f16699w.zza();
                        if (!TextUtils.isEmpty(zza3)) {
                            a.putString("_ffr", zza3);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(a);
                long nextLong = zzp().m1613c().nextLong();
                if (zzt().zza(zzap.zzas) && zzs().f16693q.zza() > 0 && zzs().m2141a(j) && zzs().f16696t.zza()) {
                    zzr().zzx().zza("Current session is expired, remove the session number, ID, and engagement time");
                    if (zzt().zza(zzap.zzap)) {
                        m1783a("auto", "_sid", (Object) null, zzm().currentTimeMillis());
                    }
                    if (zzt().zza(zzap.zzaq)) {
                        m1783a("auto", "_sno", (Object) null, zzm().currentTimeMillis());
                    }
                    if (zzmj.zzb() && zzt().zza(zzap.zzbp)) {
                        m1783a("auto", "_se", (Object) null, zzm().currentTimeMillis());
                    }
                }
                if (zzt().zza(zzap.zzar) && a.getLong("extend_session", 0L) == 1) {
                    zzr().zzx().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    this.f16804x.zze().f17267a.m2028a(j, true);
                }
                String[] strArr = (String[]) a.keySet().toArray(new String[bundle.size()]);
                Arrays.sort(strArr);
                int i4 = 0;
                ArrayList arrayList2 = arrayList;
                for (String str5 : strArr) {
                    Object obj = a.get(str5);
                    zzp();
                    Bundle[] a2 = zzkm.m1632a(obj);
                    if (a2 != null) {
                        a.putInt(str5, a2.length);
                        for (int i5 = 0; i5 < a2.length; i5++) {
                            Bundle bundle2 = a2[i5];
                            zzii.zza(zzab, bundle2, true);
                            Bundle a3 = zzp().m1624a(str3, "_ep", bundle2, listOf, z3, false);
                            a3.putString("_en", str2);
                            a3.putLong("_eid", nextLong);
                            a3.putString("_gn", str5);
                            a3.putInt("_ll", a2.length);
                            a3.putInt("_i", i5);
                            arrayList2.add(a3);
                        }
                        i4 += a2.length;
                        arrayList2 = arrayList2;
                        zzab = zzab;
                        str4 = str4;
                    } else {
                        str4 = str4;
                        zzab = zzab;
                        arrayList2 = arrayList2;
                    }
                }
                if (i4 != 0) {
                    a.putLong("_eid", nextLong);
                    a.putInt("_epc", i4);
                }
                int i6 = 0;
                while (i6 < arrayList2.size()) {
                    Bundle bundle3 = (Bundle) arrayList2.get(i6);
                    String str6 = i6 != 0 ? "_ep" : str2;
                    bundle3.putString("_o", str);
                    Bundle bundle4 = bundle3;
                    if (z2) {
                        bundle4 = zzp().m1639a(bundle3);
                    }
                    zzr().zzw().zza("Logging event (FE)", zzo().m1866a(str2), zzo().m1870a(bundle4));
                    zzh().m1768a(new zzan(str6, new zzam(bundle4), str, j), str3);
                    if (!equals) {
                        for (zzgz zzgzVar : this.f17237d) {
                            zzgzVar.onEvent(str, str2, new Bundle(bundle4), j);
                        }
                    }
                    i6++;
                }
                zzu();
                if (zzi().zzab() != null && str4.equals(str2)) {
                    zzk().zza(true, true);
                }
            }
        } else {
            zzr().zzw().zza("Dropping non-safelisted event. event name, origin", str2, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1784a(String str, String str2, Bundle bundle) {
        zzb();
        zzd();
        m1787a(str, str2, zzm().currentTimeMillis(), bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1783a(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhb.m1783a(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: c */
    protected final boolean mo1734c() {
        return false;
    }

    public final ArrayList<Bundle> zza(String str, String str2) {
        zzb();
        return m1782a((String) null, str, str2);
    }

    public final ArrayList<Bundle> zza(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zza();
        return m1782a(str, str2, str3);
    }

    public final Map<String, Object> zza(String str, String str2, String str3, boolean z) {
        Preconditions.checkNotEmpty(str);
        zza();
        return m1780a(str, str2, str3, z);
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        zzb();
        return m1780a((String) null, str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j) {
        zzb();
        zzq().zza(new RunnableC2786fm(this, j));
    }

    public final void zza(Bundle bundle) {
        zza(bundle, zzm().currentTimeMillis());
    }

    public final void zza(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        zzb();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzr().zzi().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        m1792a(bundle2, j);
    }

    public final void zza(zzgz zzgzVar) {
        zzb();
        m2146b();
        Preconditions.checkNotNull(zzgzVar);
        if (!this.f17237d.add(zzgzVar)) {
            zzr().zzi().zza("OnEventListener already registered");
        }
    }

    public final void zza(zzha zzhaVar) {
        zzha zzhaVar2;
        zzd();
        zzb();
        m2146b();
        if (!(zzhaVar == null || zzhaVar == (zzhaVar2 = this.f17236c))) {
            Preconditions.checkState(zzhaVar2 == null, "EventInterceptor already set.");
        }
        this.f17236c = zzhaVar;
    }

    public final void zza(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        zza(str, str2, bundle, false, true, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zzb();
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        zzq().zza(new RunnableC2769ew(this, str, str2, j, zzkm.zzb(bundle), z2, !z2 || this.f17236c == null || zzkm.m1605e(str2), !z));
    }

    public final void zza(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z, long j) {
        String str3 = str;
        if (str == null) {
            str3 = "app";
        }
        int i = 6;
        int i2 = 0;
        int i3 = 0;
        if (z) {
            i = zzp().m1611c(str2);
        } else {
            zzkm zzp = zzp();
            if (zzp.m1627a("user property", str2)) {
                if (!zzp.m1621a("user property", zzgx.zza, str2)) {
                    i = 15;
                } else if (zzp.m1629a("user property", 24, str2)) {
                    i = 0;
                }
            }
        }
        if (i != 0) {
            zzp();
            String zza = zzkm.zza(str2, 24, true);
            if (str2 != null) {
                i3 = str2.length();
            }
            this.f16804x.zzi().zza(i, "_ev", zza, i3);
        } else if (obj != null) {
            int b = zzp().m1615b(str2, obj);
            zzp();
            if (b != 0) {
                String zza2 = zzkm.zza(str2, 24, true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i2 = String.valueOf(obj).length();
                }
                this.f16804x.zzi().zza(b, "_ev", zza2, i2);
                return;
            }
            Object c = zzkm.m1610c(str2, obj);
            if (c != null) {
                m1785a(str3, str2, j, c);
            }
        } else {
            m1785a(str3, str2, j, (Object) null);
        }
    }

    public final void zza(String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotEmpty(str);
        zza();
        m1781a(str, str2, str3, bundle);
    }

    public final void zza(boolean z) {
        m2146b();
        zzb();
        zzq().zza(new RunnableC2784fk(this, z));
    }

    public final void zzab() {
        if (zzn().getApplicationContext() instanceof Application) {
            ((Application) zzn().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f17234a);
        }
    }

    public final Boolean zzac() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzq().m1838a(atomicReference, 15000L, "boolean test flag value", new RunnableC2766et(this, atomicReference));
    }

    public final String zzad() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzq().m1838a(atomicReference, 15000L, "String test flag value", new RunnableC2777fd(this, atomicReference));
    }

    public final Long zzae() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzq().m1838a(atomicReference, 15000L, "long test flag value", new RunnableC2779ff(this, atomicReference));
    }

    public final Integer zzaf() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzq().m1838a(atomicReference, 15000L, "int test flag value", new RunnableC2782fi(this, atomicReference));
    }

    public final Double zzag() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzq().m1838a(atomicReference, 15000L, "double test flag value", new RunnableC2781fh(this, atomicReference));
    }

    public final String zzah() {
        zzb();
        return this.f17239f.get();
    }

    public final void zzai() {
        zzd();
        zzb();
        m2146b();
        if (this.f16804x.m1801h()) {
            if (zzt().zza(zzap.zzbu)) {
                zzx zzt = zzt();
                zzt.zzu();
                Boolean a = zzt.m1599a("google_analytics_deferred_deep_link_enabled");
                if (a != null && a.booleanValue()) {
                    zzr().zzw().zza("Deferred Deep Link feature enabled.");
                    zzq().zza(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.eu

                        /* renamed from: a */
                        private final zzhb f16815a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f16815a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzhb zzhbVar = this.f16815a;
                            zzhbVar.zzd();
                            if (zzhbVar.zzs().f16697u.zza()) {
                                zzhbVar.zzr().zzw().zza("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long zza = zzhbVar.zzs().f16698v.zza();
                            zzhbVar.zzs().f16698v.zza(1 + zza);
                            if (zza >= 5) {
                                zzhbVar.zzr().zzi().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                zzhbVar.zzs().f16697u.zza(true);
                                return;
                            }
                            zzhbVar.f16804x.zzah();
                        }
                    });
                }
            }
            zzh().m1748g();
            this.f17235b = false;
            String i = zzs().m2127i();
            if (!TextUtils.isEmpty(i)) {
                zzl().m2056l();
                if (!i.equals(Build.VERSION.RELEASE)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", i);
                    zza("auto", "_ou", bundle);
                }
            }
        }
    }

    public final String zzaj() {
        zzif zzac = this.f16804x.zzv().zzac();
        if (zzac != null) {
            return zzac.zza;
        }
        return null;
    }

    public final String zzak() {
        zzif zzac = this.f16804x.zzv().zzac();
        if (zzac != null) {
            return zzac.zzb;
        }
        return null;
    }

    public final String zzal() {
        if (this.f16804x.zzo() != null) {
            return this.f16804x.zzo();
        }
        try {
            return GoogleServices.getGoogleAppId();
        } catch (IllegalStateException e) {
            this.f16804x.zzr().zzf().zza("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(long j) {
        zzb();
        zzq().zza(new RunnableC2785fl(this, j));
    }

    public final void zzb(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString("app_id"));
        zza();
        m1792a(new Bundle(bundle), zzm().currentTimeMillis());
    }

    public final void zzb(zzgz zzgzVar) {
        zzb();
        m2146b();
        Preconditions.checkNotNull(zzgzVar);
        if (!this.f17237d.remove(zzgzVar)) {
            zzr().zzi().zza("OnEventListener had not been registered");
        }
    }

    public final void zzb(boolean z) {
        m2146b();
        zzb();
        zzq().zza(new RunnableC2783fj(this, z));
    }

    public final String zzc(long j) {
        zzey zzf;
        String str;
        if (zzq().zzg()) {
            zzf = zzr().zzf();
            str = "Cannot retrieve app instance id from analytics worker thread";
        } else if (zzw.zza()) {
            zzf = zzr().zzf();
            str = "Cannot retrieve app instance id from main thread";
        } else {
            long elapsedRealtime = zzm().elapsedRealtime();
            String a = m1793a(120000L);
            long elapsedRealtime2 = zzm().elapsedRealtime() - elapsedRealtime;
            String str2 = a;
            if (a == null) {
                str2 = a;
                if (elapsedRealtime2 < 120000) {
                    str2 = m1793a(120000 - elapsedRealtime2);
                }
            }
            return str2;
        }
        zzf.zza(str);
        return null;
    }

    public final List<zzkl> zzc(boolean z) {
        zzey zzi;
        String str;
        zzb();
        m2146b();
        zzr().zzw().zza("Fetching user attributes (FE)");
        if (zzq().zzg()) {
            zzi = zzr().zzf();
            str = "Cannot get all user properties from analytics worker thread";
        } else if (zzw.zza()) {
            zzi = zzr().zzf();
            str = "Cannot get all user properties from main thread";
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.f16804x.zzq().m1838a(atomicReference, 5000L, "get user properties", new RunnableC2771ey(this, atomicReference, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list != null) {
                return list;
            }
            zzi = zzr().zzi();
            str = "Timed out waiting for get user properties";
        }
        zzi.zza(str);
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    public final void zzc(String str, String str2, Bundle bundle) {
        zzb();
        m1781a((String) null, str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final void zzd(long j) {
        m1788a((String) null);
        zzq().zza(new RunnableC2774fa(this, j));
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
