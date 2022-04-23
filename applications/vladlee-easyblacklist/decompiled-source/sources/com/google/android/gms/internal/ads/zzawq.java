package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawq.class */
public final class zzawq {

    /* renamed from: a */
    private boolean f11473a = false;

    /* renamed from: b */
    private float f11474b = 1.0f;

    /* renamed from: a */
    private final boolean m4241a() {
        boolean z;
        synchronized (this) {
            z = this.f11474b >= 0.0f;
        }
        return z;
    }

    public static float zzbe(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }

    public final void setAppMuted(boolean z) {
        synchronized (this) {
            this.f11473a = z;
        }
    }

    public final void setAppVolume(float f) {
        synchronized (this) {
            this.f11474b = f;
        }
    }

    public final float zzpe() {
        synchronized (this) {
            if (!m4241a()) {
                return 1.0f;
            }
            return this.f11474b;
        }
    }

    public final boolean zzpf() {
        boolean z;
        synchronized (this) {
            z = this.f11473a;
        }
        return z;
    }
}
