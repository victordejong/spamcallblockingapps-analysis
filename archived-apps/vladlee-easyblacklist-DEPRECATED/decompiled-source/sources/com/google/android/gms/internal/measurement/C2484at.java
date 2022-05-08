package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
/* renamed from: com.google.android.gms.internal.measurement.at */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/at.class */
final class C2484at extends ContentObserver {

    /* renamed from: a */
    private final /* synthetic */ zzbx f15866a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2484at(zzbx zzbxVar) {
        super(null);
        this.f15866a = zzbxVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f15866a.zzb();
    }
}
