package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ams.class */
public final class ams extends Thread {

    /* renamed from: a */
    private final /* synthetic */ AudioTrack f7704a;

    /* renamed from: b */
    private final /* synthetic */ zzhw f7705b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ams(zzhw zzhwVar, AudioTrack audioTrack) {
        this.f7705b = zzhwVar;
        this.f7704a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f7704a.flush();
            this.f7704a.release();
        } finally {
            conditionVariable = this.f7705b.f14890h;
            conditionVariable.open();
        }
    }
}
