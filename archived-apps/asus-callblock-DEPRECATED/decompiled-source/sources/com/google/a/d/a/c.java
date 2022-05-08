package com.google.a.d.a;

import com.google.a.a.d;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/a/d/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f3742a = Logger.getLogger(c.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final Queue<a> f3743b = new LinkedList();
    private boolean c = false;

    /* loaded from: classes-dex2jar.jar:com/google/a/d/a/c$a.class */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f3744a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f3745b;

        a(Runnable runnable, Executor executor) {
            this.f3744a = runnable;
            this.f3745b = executor;
        }

        final void a() {
            try {
                this.f3745b.execute(this.f3744a);
            } catch (RuntimeException e) {
                c.f3742a.log(Level.SEVERE, "RuntimeException while executing runnable " + this.f3744a + " with executor " + this.f3745b, (Throwable) e);
            }
        }
    }

    public final void a() {
        synchronized (this.f3743b) {
            if (!this.c) {
                this.c = true;
                while (!this.f3743b.isEmpty()) {
                    this.f3743b.poll().a();
                }
            }
        }
    }

    public final void a(Runnable runnable, Executor executor) {
        d.a(runnable, "Runnable was null.");
        d.a(executor, "Executor was null.");
        boolean z = false;
        synchronized (this.f3743b) {
            if (!this.c) {
                this.f3743b.add(new a(runnable, executor));
            } else {
                z = true;
            }
        }
        if (z) {
            new a(runnable, executor).a();
        }
    }
}
