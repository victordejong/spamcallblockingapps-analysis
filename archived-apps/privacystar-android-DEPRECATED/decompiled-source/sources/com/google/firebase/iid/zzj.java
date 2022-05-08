package com.google.firebase.iid;

import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzj.class */
public final /* synthetic */ class zzj implements ThreadFactory {
    static final ThreadFactory zzae = new zzj();

    private zzj() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return zzi.zza(runnable);
    }
}
