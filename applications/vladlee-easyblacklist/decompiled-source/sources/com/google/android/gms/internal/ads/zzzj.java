package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzj.class */
public final class zzzj implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    private Context f15708g;

    /* renamed from: a */
    private final Object f15702a = new Object();

    /* renamed from: b */
    private final ConditionVariable f15703b = new ConditionVariable();

    /* renamed from: c */
    private volatile boolean f15704c = false;

    /* renamed from: d */
    private volatile boolean f15705d = false;

    /* renamed from: e */
    private SharedPreferences f15706e = null;

    /* renamed from: f */
    private Bundle f15707f = new Bundle();

    /* renamed from: h */
    private JSONObject f15709h = new JSONObject();

    /* renamed from: b */
    private final void m2952b() {
        if (this.f15706e != null) {
            try {
                this.f15709h = new JSONObject((String) zzayc.zza(new zzden(this) { // from class: com.google.android.gms.internal.ads.asp

                    /* renamed from: a */
                    private final zzzj f8260a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8260a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzden
                    public final Object get() {
                        return this.f8260a.m2955a();
                    }
                }));
            } catch (JSONException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Object m2954a(zzzc zzzcVar) {
        return zzzcVar.mo2957a(this.f15706e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ String m2955a() {
        return this.f15706e.getString("flag_configuration", "{}");
    }

    public final void initialize(Context context) {
        if (!this.f15704c) {
            synchronized (this.f15702a) {
                if (!this.f15704c) {
                    if (!this.f15705d) {
                        this.f15705d = true;
                    }
                    this.f15708g = context.getApplicationContext() == null ? context : context.getApplicationContext();
                    try {
                        this.f15707f = Wrappers.packageManager(this.f15708g).getApplicationInfo(this.f15708g.getPackageName(), 128).metaData;
                    } catch (PackageManager.NameNotFoundException | NullPointerException e) {
                    }
                    Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                    Context context2 = remoteContext;
                    if (remoteContext == null) {
                        context2 = remoteContext;
                        if (context != null) {
                            Context applicationContext = context.getApplicationContext();
                            context2 = applicationContext;
                            if (applicationContext == null) {
                                context2 = context;
                            }
                        }
                    }
                    if (context2 == null) {
                        this.f15705d = false;
                        this.f15703b.open();
                        return;
                    }
                    zzve.zzow();
                    this.f15706e = context2.getSharedPreferences("google_ads_flags", 0);
                    if (this.f15706e != null) {
                        this.f15706e.registerOnSharedPreferenceChangeListener(this);
                    }
                    zzabn.zza(new asr(this));
                    m2952b();
                    this.f15704c = true;
                    this.f15705d = false;
                    this.f15703b.open();
                }
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m2952b();
        }
    }

    public final <T> T zzd(final zzzc<T> zzzcVar) {
        if (!this.f15703b.block(5000L)) {
            synchronized (this.f15702a) {
                if (!this.f15705d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f15704c || this.f15706e == null) {
            synchronized (this.f15702a) {
                if (this.f15704c && this.f15706e != null) {
                }
                return zzzcVar.zzqf();
            }
        }
        if (zzzcVar.getSource() != 2) {
            return (zzzcVar.getSource() != 1 || !this.f15709h.has(zzzcVar.getKey())) ? (T) zzayc.zza(new zzden(this, zzzcVar) { // from class: com.google.android.gms.internal.ads.asq

                /* renamed from: a */
                private final zzzj f8261a;

                /* renamed from: b */
                private final zzzc f8262b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8261a = this;
                    this.f8262b = zzzcVar;
                }

                @Override // com.google.android.gms.internal.ads.zzden
                public final Object get() {
                    return this.f8261a.m2954a(this.f8262b);
                }
            }) : zzzcVar.mo2956a(this.f15709h);
        }
        Bundle bundle = this.f15707f;
        return bundle == null ? zzzcVar.zzqf() : zzzcVar.zza(bundle);
    }
}
