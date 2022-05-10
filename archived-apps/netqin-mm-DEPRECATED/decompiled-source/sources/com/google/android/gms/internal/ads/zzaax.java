package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzaaq;
import com.google.android.gms.internal.ads.zzaax;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3713k;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaax.class */
public final class zzaax implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    public Context f23646g;

    /* renamed from: a */
    public final Object f23640a = new Object();

    /* renamed from: b */
    public final ConditionVariable f23641b = new ConditionVariable();

    /* renamed from: c */
    public volatile boolean f23642c = false;
    @VisibleForTesting

    /* renamed from: d */
    public volatile boolean f23643d = false;

    /* renamed from: e */
    public SharedPreferences f23644e = null;

    /* renamed from: f */
    public Bundle f23645f = new Bundle();

    /* renamed from: h */
    public JSONObject f23647h = new JSONObject();

    /* renamed from: a */
    public final <T> T m16921a(final zzaaq<T> zzaaqVar) {
        if (!this.f23641b.block(5000L)) {
            synchronized (this.f23640a) {
                if (!this.f23643d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f23642c || this.f23644e == null) {
            synchronized (this.f23640a) {
                if (this.f23642c && this.f23644e != null) {
                }
                return zzaaqVar.m16930c();
            }
        }
        if (zzaaqVar.m16931b() != 2) {
            return (zzaaqVar.m16931b() != 1 || !this.f23647h.has(zzaaqVar.m16942a())) ? (T) zzbay.m15928a(new zzdwe(this, zzaaqVar) { // from class: c.d.b.d.g.a.j

                /* renamed from: a */
                public final zzaax f13569a;

                /* renamed from: b */
                public final zzaaq f13570b;

                {
                    this.f13569a = this;
                    this.f13570b = zzaaqVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdwe
                public final Object get() {
                    return this.f13569a.m16918b(this.f13570b);
                }
            }) : zzaaqVar.mo16932a(this.f23647h);
        }
        Bundle bundle = this.f23645f;
        return bundle == null ? zzaaqVar.m16930c() : zzaaqVar.mo16933a(bundle);
    }

    /* renamed from: a */
    public final void m16923a() {
        if (this.f23644e != null) {
            try {
                this.f23647h = new JSONObject((String) zzbay.m15928a(new zzdwe(this) { // from class: c.d.b.d.g.a.i

                    /* renamed from: a */
                    public final zzaax f13479a;

                    {
                        this.f13479a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdwe
                    public final Object get() {
                        return this.f13479a.m16919b();
                    }
                }));
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: a */
    public final void m16922a(Context context) {
        if (!this.f23642c) {
            synchronized (this.f23640a) {
                if (!this.f23642c) {
                    if (!this.f23643d) {
                        this.f23643d = true;
                    }
                    Context applicationContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
                    this.f23646g = applicationContext;
                    try {
                        this.f23645f = Wrappers.m17026b(applicationContext).m17032a(this.f23646g.getPackageName(), 128).metaData;
                    } catch (PackageManager.NameNotFoundException | NullPointerException e) {
                    }
                    Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                    context = remoteContext;
                    if (remoteContext == null) {
                        context = remoteContext;
                        if (context != null) {
                            Context applicationContext2 = context.getApplicationContext();
                            if (applicationContext2 != null) {
                                context = applicationContext2;
                            }
                        }
                    }
                    if (context == null) {
                        this.f23643d = false;
                        this.f23641b.open();
                        return;
                    }
                    zzwm.m11168c();
                    SharedPreferences sharedPreferences = context.getSharedPreferences("google_ads_flags", 0);
                    this.f23644e = sharedPreferences;
                    if (sharedPreferences != null) {
                        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
                    }
                    zzadj.m16858a(new C3713k(this));
                    m16923a();
                    this.f23642c = true;
                    this.f23643d = false;
                    this.f23641b.open();
                }
            }
        }
    }

    /* renamed from: b */
    public final /* synthetic */ Object m16918b(zzaaq zzaaqVar) {
        return zzaaqVar.mo16934a(this.f23644e);
    }

    /* renamed from: b */
    public final /* synthetic */ String m16919b() {
        return this.f23644e.getString("flag_configuration", "{}");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m16923a();
        }
    }
}
