package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* renamed from: com.google.android.gms.common.api.internal.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ac.class */
final class RunnableC1580ac implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C1581ad f6337a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1580ac(C1581ad adVar) {
        this.f6337a = adVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client;
        client = this.f6337a.f6338a.f6290c;
        client.disconnect();
    }
}
