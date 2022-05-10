package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ThreadFactory;
import p131c.p161d.p170b.p224d.p238d.p248g.p249a.RunnableC3315a;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/NamedThreadFactory.class */
public class NamedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    public final String f23573a;

    /* renamed from: b */
    public final ThreadFactory f23574b;

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f23574b.newThread(new RunnableC3315a(runnable, 0));
        newThread.setName(this.f23573a);
        return newThread;
    }
}
