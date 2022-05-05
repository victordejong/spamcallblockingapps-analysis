package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c.class */
public final class C1610c implements PendingResult.StatusListener {

    /* renamed from: a */
    private final /* synthetic */ BasePendingResult f6390a;

    /* renamed from: b */
    private final /* synthetic */ zaz f6391b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1610c(zaz zazVar, BasePendingResult basePendingResult) {
        this.f6391b = zazVar;
        this.f6390a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Map map;
        map = this.f6391b.f6570a;
        map.remove(this.f6390a);
    }
}
