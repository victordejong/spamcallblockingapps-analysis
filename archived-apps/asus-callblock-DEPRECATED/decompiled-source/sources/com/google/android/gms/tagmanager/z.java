package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/z.class */
final class z extends Thread implements y {
    private static z d;

    /* renamed from: a  reason: collision with root package name */
    private final LinkedBlockingQueue<Runnable> f4424a = new LinkedBlockingQueue<>();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f4425b = false;
    private volatile boolean c = false;
    private volatile aa e;
    private final Context f;

    private z(Context context) {
        super("GAThread");
        if (context != null) {
            this.f = context.getApplicationContext();
        } else {
            this.f = context;
        }
        start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z a(Context context) {
        if (d == null) {
            d = new z(context);
        }
        return d;
    }

    @Override // com.google.android.gms.tagmanager.y
    public final void a(Runnable runnable) {
        this.f4424a.add(runnable);
    }

    @Override // com.google.android.gms.tagmanager.y
    public final void a(final String str) {
        final long currentTimeMillis = System.currentTimeMillis();
        a(new Runnable() { // from class: com.google.android.gms.tagmanager.z.1
            @Override // java.lang.Runnable
            public final void run() {
                if (z.this.e == null) {
                    cd c = cd.c();
                    c.a(z.this.f, this);
                    z.this.e = c.d();
                }
                z.this.e.a(currentTimeMillis, str);
            }
        });
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!this.c) {
            try {
                try {
                    Runnable take = this.f4424a.take();
                    if (!this.f4425b) {
                        take.run();
                    }
                } catch (InterruptedException e) {
                    an.c(e.toString());
                }
            } catch (Throwable th) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                th.printStackTrace(printStream);
                printStream.flush();
                String valueOf = String.valueOf(new String(byteArrayOutputStream.toByteArray()));
                an.a(valueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(valueOf) : new String("Error on Google TagManager Thread: "));
                an.a("Google TagManager is shutting down.");
                this.f4425b = true;
            }
        }
    }
}
