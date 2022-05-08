package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agy.class */
final class agy extends agv {

    /* renamed from: a */
    private final agx f7344a = new agx();

    @Override // com.google.android.gms.internal.ads.agv
    /* renamed from: a */
    public final void mo3414a(Throwable th) {
        th.printStackTrace();
        List<Throwable> a = this.f7344a.m5428a(th, false);
        if (a != null) {
            synchronized (a) {
                for (Throwable th2 : a) {
                    System.err.print("Suppressed: ");
                    th2.printStackTrace();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.agv
    /* renamed from: a */
    public final void mo3413a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> a = this.f7344a.m5428a(th, false);
        if (a != null) {
            synchronized (a) {
                for (Throwable th2 : a) {
                    printWriter.print("Suppressed: ");
                    th2.printStackTrace(printWriter);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.agv
    /* renamed from: a */
    public final void mo3412a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f7344a.m5428a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
