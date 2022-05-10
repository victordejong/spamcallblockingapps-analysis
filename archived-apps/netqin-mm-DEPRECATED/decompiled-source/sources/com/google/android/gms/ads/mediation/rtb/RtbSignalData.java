package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/RtbSignalData.class */
public class RtbSignalData {

    /* renamed from: a */
    public final Context f22907a;

    /* renamed from: b */
    public final List<MediationConfiguration> f22908b;

    /* renamed from: c */
    public final Bundle f22909c;

    /* renamed from: d */
    public final AdSize f22910d;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.f22907a = context;
        this.f22908b = list;
        this.f22909c = bundle;
        this.f22910d = adSize;
    }

    /* renamed from: a */
    public AdSize m17921a() {
        return this.f22910d;
    }

    @Deprecated
    /* renamed from: b */
    public MediationConfiguration m17920b() {
        List<MediationConfiguration> list = this.f22908b;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f22908b.get(0);
    }

    /* renamed from: c */
    public Context m17919c() {
        return this.f22907a;
    }

    /* renamed from: d */
    public Bundle m17918d() {
        return this.f22909c;
    }
}
