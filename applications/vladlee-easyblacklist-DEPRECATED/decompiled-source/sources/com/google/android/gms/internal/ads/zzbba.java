package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbba.class */
public final class zzbba implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    private final AudioManager f11649a;

    /* renamed from: b */
    private final AbstractC1920hd f11650b;

    /* renamed from: c */
    private boolean f11651c;

    /* renamed from: d */
    private boolean f11652d;

    /* renamed from: e */
    private boolean f11653e;

    /* renamed from: f */
    private float f11654f = 1.0f;

    public zzbba(Context context, AbstractC1920hd hdVar) {
        this.f11649a = (AudioManager) context.getSystemService("audio");
        this.f11650b = hdVar;
    }

    /* renamed from: a */
    private final void m4165a() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = this.f11652d && !this.f11653e && this.f11654f > 0.0f;
        if (z5 && !(z2 = this.f11651c)) {
            AudioManager audioManager = this.f11649a;
            if (audioManager != null && !z2) {
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z4 = true;
                }
                this.f11651c = z4;
            }
            this.f11650b.zzxs();
        } else if (!z5 && (z = this.f11651c)) {
            AudioManager audioManager2 = this.f11649a;
            if (audioManager2 != null && z) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z3 = true;
                }
                this.f11651c = z3;
            }
            this.f11650b.zzxs();
        }
    }

    public final float getVolume() {
        float f = this.f11653e ? 0.0f : this.f11654f;
        if (this.f11651c) {
            return f;
        }
        return 0.0f;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f11651c = i > 0;
        this.f11650b.zzxs();
    }

    public final void setMuted(boolean z) {
        this.f11653e = z;
        m4165a();
    }

    public final void setVolume(float f) {
        this.f11654f = f;
        m4165a();
    }

    public final void zzyi() {
        this.f11652d = true;
        m4165a();
    }

    public final void zzyj() {
        this.f11652d = false;
        m4165a();
    }
}
