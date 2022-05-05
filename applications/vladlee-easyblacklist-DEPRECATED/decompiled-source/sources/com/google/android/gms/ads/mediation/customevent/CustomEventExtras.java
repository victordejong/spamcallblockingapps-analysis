package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventExtras.class */
public final class CustomEventExtras implements NetworkExtras {

    /* renamed from: a */
    private final HashMap<String, Object> f6070a = new HashMap<>();

    public final Object getExtra(String str) {
        return this.f6070a.get(str);
    }

    public final void setExtra(String str, Object obj) {
        this.f6070a.put(str, obj);
    }
}
