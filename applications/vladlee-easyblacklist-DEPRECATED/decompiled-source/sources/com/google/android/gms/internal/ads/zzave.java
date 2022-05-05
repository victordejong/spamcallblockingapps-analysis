package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzave.class */
public final class zzave {

    /* renamed from: b */
    private zzpp f11399b;

    /* renamed from: f */
    private Context f11403f;

    /* renamed from: g */
    private zzazb f11404g;

    /* renamed from: m */
    private zzdhe<ArrayList<String>> f11410m;

    /* renamed from: a */
    private final Object f11398a = new Object();

    /* renamed from: c */
    private final zzavx f11400c = new zzavx();

    /* renamed from: d */
    private final zzavp f11401d = new zzavp(zzve.zzoz(), this.f11400c);

    /* renamed from: e */
    private boolean f11402e = false;

    /* renamed from: h */
    private zzzu f11405h = null;

    /* renamed from: i */
    private Boolean f11406i = null;

    /* renamed from: j */
    private final AtomicInteger f11407j = new AtomicInteger(0);

    /* renamed from: k */
    private final C1850eo f11408k = new C1850eo((byte) 0);

    /* renamed from: l */
    private final Object f11409l = new Object();

    /* renamed from: a */
    private static ArrayList<String> m4268a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(context.getApplicationInfo().packageName, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            if (!(packageInfo.requestedPermissions == null || packageInfo.requestedPermissionsFlags == null)) {
                for (int i = 0; i < packageInfo.requestedPermissions.length; i++) {
                    if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(packageInfo.requestedPermissions[i]);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ ArrayList m4269a() {
        return m4268a(zzarf.zzaa(this.f11403f));
    }

    public final Context getApplicationContext() {
        return this.f11403f;
    }

    public final Resources getResources() {
        if (this.f11404g.zzdwb) {
            return this.f11403f.getResources();
        }
        try {
            zzayx.zzbp(this.f11403f).getResources();
            return null;
        } catch (zzayz e) {
            zzavs.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void zza(Boolean bool) {
        synchronized (this.f11398a) {
            this.f11406i = bool;
        }
    }

    public final void zza(Throwable th, String str) {
        zzapn.zzc(this.f11403f, this.f11404g).zza(th, str);
    }

    public final void zzb(Throwable th, String str) {
        zzapn.zzc(this.f11403f, this.f11404g).zza(th, str, zzabi.zzcup.get().floatValue());
    }

    public final void zzd(Context context, zzazb zzazbVar) {
        synchronized (this.f11398a) {
            if (!this.f11402e) {
                this.f11403f = context.getApplicationContext();
                this.f11404g = zzazbVar;
                zzq.zzkt().zza(this.f11401d);
                zzzu zzzuVar = null;
                this.f11400c.zza(this.f11403f, (String) null, true);
                zzapn.zzc(this.f11403f, this.f11404g);
                this.f11399b = new zzpp(context.getApplicationContext(), this.f11404g);
                zzq.zzkz();
                if (!zzaav.zzcsw.get().booleanValue()) {
                    zzavs.zzed("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                } else {
                    zzzuVar = new zzzu();
                }
                this.f11405h = zzzuVar;
                if (this.f11405h != null) {
                    zzazh.zza(new C1847el(this).zzvr(), "AppState.registerCsiReporter");
                }
                this.f11402e = true;
                zzvg();
            }
        }
        zzq.zzkq().zzr(context, zzazbVar.zzbma);
    }

    public final zzzu zzuz() {
        zzzu zzzuVar;
        synchronized (this.f11398a) {
            zzzuVar = this.f11405h;
        }
        return zzzuVar;
    }

    public final Boolean zzva() {
        Boolean bool;
        synchronized (this.f11398a) {
            bool = this.f11406i;
        }
        return bool;
    }

    public final void zzvb() {
        this.f11408k.m4728a();
    }

    public final void zzvc() {
        this.f11407j.incrementAndGet();
    }

    public final void zzvd() {
        this.f11407j.decrementAndGet();
    }

    public final int zzve() {
        return this.f11407j.get();
    }

    public final zzavu zzvf() {
        zzavx zzavxVar;
        synchronized (this.f11398a) {
            zzavxVar = this.f11400c;
        }
        return zzavxVar;
    }

    public final zzdhe<ArrayList<String>> zzvg() {
        if (PlatformVersion.isAtLeastJellyBean() && this.f11403f != null) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzclf)).booleanValue()) {
                synchronized (this.f11409l) {
                    if (this.f11410m != null) {
                        return this.f11410m;
                    }
                    zzdhe<ArrayList<String>> zzd = zzazd.zzdwe.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.em

                        /* renamed from: a */
                        private final zzave f8427a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8427a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f8427a.m4269a();
                        }
                    });
                    this.f11410m = zzd;
                    return zzd;
                }
            }
        }
        return zzdgs.zzaj(new ArrayList());
    }

    public final zzavp zzvh() {
        return this.f11401d;
    }
}
