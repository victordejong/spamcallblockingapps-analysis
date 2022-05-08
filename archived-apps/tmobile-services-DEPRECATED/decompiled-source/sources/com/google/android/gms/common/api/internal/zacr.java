package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import com.google.android.gms.common.api.zac;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacr.class */
public final class zacr implements IBinder.DeathRecipient, zacq {

    /* renamed from: a */
    private final WeakReference<BasePendingResult<?>> f7288a;

    /* renamed from: b */
    private final WeakReference<zac> f7289b;

    /* renamed from: c */
    private final WeakReference<IBinder> f7290c;

    private zacr(BasePendingResult<?> basePendingResult, zac zacVar, IBinder iBinder) {
        this.f7289b = new WeakReference<>(zacVar);
        this.f7288a = new WeakReference<>(basePendingResult);
        this.f7290c = new WeakReference<>(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zacr(BasePendingResult basePendingResult, zac zacVar, IBinder iBinder, zaco zacoVar) {
        this(basePendingResult, null, iBinder);
    }

    /* renamed from: b */
    private final void m14741b() {
        BasePendingResult<?> basePendingResult = this.f7288a.get();
        zac zacVar = this.f7289b.get();
        if (!(zacVar == null || basePendingResult == null)) {
            zacVar.m14640a(basePendingResult.m14966q().intValue());
        }
        IBinder iBinder = this.f7290c.get();
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacq
    /* renamed from: a */
    public final void mo14742a(BasePendingResult<?> basePendingResult) {
        m14741b();
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        m14741b();
    }
}
