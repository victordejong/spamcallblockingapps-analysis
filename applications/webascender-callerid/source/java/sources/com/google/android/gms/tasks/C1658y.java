package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.android.gms.tasks.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/y.class */
final class C1658y<TResult> {

    /* renamed from: a */
    private final Object f4643a = new Object();

    /* renamed from: b */
    private Queue<AbstractC1659z<TResult>> f4644b;

    /* renamed from: c */
    private boolean f4645c;

    C1658y() {
    }

    /* renamed from: a */
    public final void m1433a(AbstractC1646g<TResult> abstractC1646g) {
        AbstractC1659z<TResult> poll;
        synchronized (this.f4643a) {
            if (this.f4644b != null && !this.f4645c) {
                this.f4645c = true;
                while (true) {
                    synchronized (this.f4643a) {
                        poll = this.f4644b.poll();
                        if (poll == null) {
                            this.f4645c = false;
                            return;
                        }
                    }
                    poll.m1431a(abstractC1646g);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m1432b(AbstractC1659z<TResult> abstractC1659z) {
        synchronized (this.f4643a) {
            if (this.f4644b == null) {
                this.f4644b = new ArrayDeque();
            }
            this.f4644b.add(abstractC1659z);
        }
    }
}
