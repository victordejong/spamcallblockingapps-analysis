package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoo.class */
public class zzaoo {

    /* renamed from: a */
    private final zzbdi f11131a;

    /* renamed from: b */
    private final String f11132b;

    public zzaoo(zzbdi zzbdiVar) {
        this(zzbdiVar, "");
    }

    public zzaoo(zzbdi zzbdiVar, String str) {
        this.f11131a = zzbdiVar;
        this.f11132b = str;
    }

    public final void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f11131a.zzb("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while obtaining screen information.", e);
        }
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        try {
            this.f11131a.zzb("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while dispatching size change.", e);
        }
    }

    public final void zzc(int i, int i2, int i3, int i4) {
        try {
            this.f11131a.zzb("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while dispatching default position.", e);
        }
    }

    public final void zzds(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f11132b);
            if (this.f11131a != null) {
                this.f11131a.zzb("onError", put);
            }
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while dispatching error event.", e);
        }
    }

    public final void zzdt(String str) {
        try {
            this.f11131a.zzb("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while dispatching ready Event.", e);
        }
    }

    public final void zzdu(String str) {
        try {
            this.f11131a.zzb("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            zzavs.zzc("Error occurred while dispatching state change.", e);
        }
    }
}
