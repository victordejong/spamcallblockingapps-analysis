package com.google.firebase.iid;

import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.aj */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/aj.class */
public final /* synthetic */ class ThreadFactoryC3196aj implements ThreadFactory {

    /* renamed from: a */
    static final ThreadFactory f19077a = new ThreadFactoryC3196aj();

    private ThreadFactoryC3196aj() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return C3193ag.m525a(runnable);
    }
}
