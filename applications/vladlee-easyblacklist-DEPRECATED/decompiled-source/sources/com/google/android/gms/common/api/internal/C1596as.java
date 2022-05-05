package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import com.google.android.gms.common.api.zac;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.as */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/as.class */
public final class C1596as implements IBinder.DeathRecipient, AbstractC1595ar {

    /* renamed from: a */
    private final WeakReference<BasePendingResult<?>> f6354a;

    /* renamed from: b */
    private final WeakReference<zac> f6355b;

    /* renamed from: c */
    private final WeakReference<IBinder> f6356c;

    private C1596as(BasePendingResult<?> basePendingResult, IBinder iBinder) {
        this.f6355b = new WeakReference<>(null);
        this.f6354a = new WeakReference<>(basePendingResult);
        this.f6356c = new WeakReference<>(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1596as(BasePendingResult basePendingResult, IBinder iBinder, byte b) {
        this(basePendingResult, iBinder);
    }

    /* renamed from: a */
    private final void m5910a() {
        BasePendingResult<?> basePendingResult = this.f6354a.get();
        zac zacVar = this.f6355b.get();
        if (!(zacVar == null || basePendingResult == null)) {
            zacVar.remove(basePendingResult.zal().intValue());
        }
        IBinder iBinder = this.f6356c.get();
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1595ar
    /* renamed from: a */
    public final void mo5909a(BasePendingResult<?> basePendingResult) {
        m5910a();
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        m5910a();
    }
}
