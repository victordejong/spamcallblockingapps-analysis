package com.aotter.net.trek.common;

import java.io.Writer;
import java.util.concurrent.Callable;
/* renamed from: com.aotter.net.trek.common.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/c.class */
public class CallableC1743c implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ DiskLruCache f1509a;

    public CallableC1743c(DiskLruCache diskLruCache) {
        this.f1509a = diskLruCache;
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        Writer writer;
        boolean e;
        synchronized (this.f1509a) {
            writer = this.f1509a.f1483u;
            if (writer == null) {
                return null;
            }
            this.f1509a.m36386g();
            e = this.f1509a.m36390e();
            if (e) {
                this.f1509a.m36392d();
                this.f1509a.f1485w = 0;
            }
            return null;
        }
    }
}
