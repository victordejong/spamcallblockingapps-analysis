package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.p026b.C0529a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcu.class */
public final class zzcu implements AbstractC2486av {

    /* renamed from: a */
    private static final Map<String, zzcu> f16188a = new C0529a();

    /* renamed from: b */
    private final SharedPreferences f16189b;

    /* renamed from: e */
    private volatile Map<String, ?> f16192e;

    /* renamed from: c */
    private final SharedPreferences.OnSharedPreferenceChangeListener f16190c = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.be

        /* renamed from: a */
        private final zzcu f15876a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f15876a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f15876a.m2316b();
        }
    };

    /* renamed from: d */
    private final Object f16191d = new Object();

    /* renamed from: f */
    private final List<zzcc> f16193f = new ArrayList();

    private zzcu(SharedPreferences sharedPreferences) {
        this.f16189b = sharedPreferences;
        this.f16189b.registerOnSharedPreferenceChangeListener(this.f16190c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzcu m2317a(Context context) {
        zzcu zzcuVar;
        if (zzby.zza()) {
            throw new NullPointerException();
        } else if (1 == 0) {
            return null;
        } else {
            synchronized (zzcu.class) {
                try {
                    zzcuVar = f16188a.get(null);
                    if (zzcuVar == null) {
                        throw new NullPointerException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzcuVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2318a() {
        synchronized (zzcu.class) {
            try {
                for (zzcu zzcuVar : f16188a.values()) {
                    zzcuVar.f16189b.unregisterOnSharedPreferenceChangeListener(zzcuVar.f16190c);
                }
                f16188a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m2316b() {
        synchronized (this.f16191d) {
            this.f16192e = null;
            zzcl.m2326a();
        }
        synchronized (this) {
            for (zzcc zzccVar : this.f16193f) {
                zzccVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2486av
    public final Object zza(String str) {
        Map<String, ?> map = this.f16192e;
        Map<String, ?> map2 = map;
        if (map == null) {
            synchronized (this.f16191d) {
                Map<String, ?> map3 = this.f16192e;
                map2 = map3;
                if (map3 == null) {
                    map2 = this.f16189b.getAll();
                    this.f16192e = map2;
                }
            }
        }
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }
}
