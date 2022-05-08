package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakz.class */
public final class zzakz extends zzalb {

    /* renamed from: b */
    private static final zzano f11021b = new zzano();

    /* renamed from: a */
    private Map<Class<? extends NetworkExtras>, NetworkExtras> f11022a;

    /* renamed from: a */
    private final <NetworkExtrasT extends com.google.ads.mediation.NetworkExtras, ServerParametersT extends MediationServerParameters> zzald m4366a(String str) {
        try {
            Class<?> cls = Class.forName(str, false, zzakz.class.getClassLoader());
            if (MediationAdapter.class.isAssignableFrom(cls)) {
                MediationAdapter mediationAdapter = (MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new zzamg(mediationAdapter, (com.google.ads.mediation.NetworkExtras) this.f11022a.get(mediationAdapter.getAdditionalParametersType()));
            } else if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom(cls)) {
                return new zzaly((com.google.android.gms.ads.mediation.MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else {
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new zzaly((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                zzayu.zzez(sb.toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return m4365b(str);
        }
    }

    /* renamed from: b */
    private final zzald m4365b(String str) {
        try {
            zzayu.zzea("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(". ");
            zzayu.zzd(sb.toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new zzaly(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new zzaly(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new zzaly(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new zzamg(customEventAdapter, (CustomEventExtras) this.f11022a.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final zzald zzde(String str) {
        return m4366a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final boolean zzdf(String str) {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzakz.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", assuming old implementation.");
            zzayu.zzez(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalc
    public final zzani zzdi(String str) {
        return zzano.zzdp(str);
    }

    public final void zzf(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.f11022a = map;
    }
}
