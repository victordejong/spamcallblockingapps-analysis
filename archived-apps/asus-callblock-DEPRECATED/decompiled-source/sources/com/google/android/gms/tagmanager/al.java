package com.google.android.gms.tagmanager;

import com.google.android.gms.common.a.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/al.class */
final class al implements bl {
    private long e;
    private final String g;
    private final d h;
    private final Object f = new Object();
    private final int c = 30;
    private double d = this.c;

    /* renamed from: a  reason: collision with root package name */
    private final long f4281a = 900000;

    /* renamed from: b  reason: collision with root package name */
    private final long f4282b = 5000;

    public al(String str, d dVar) {
        this.g = str;
        this.h = dVar;
    }

    @Override // com.google.android.gms.tagmanager.bl
    public final boolean a() {
        boolean z = false;
        synchronized (this.f) {
            long a2 = this.h.a();
            if (a2 - this.e < this.f4282b) {
                String str = this.g;
                an.b(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
            } else {
                if (this.d < this.c) {
                    double d = (a2 - this.e) / this.f4281a;
                    if (d > 0.0d) {
                        this.d = Math.min(this.c, d + this.d);
                    }
                }
                this.e = a2;
                if (this.d >= 1.0d) {
                    this.d -= 1.0d;
                    z = true;
                } else {
                    String str2 = this.g;
                    an.b(new StringBuilder(String.valueOf(str2).length() + 34).append("Excessive ").append(str2).append(" detected; call ignored.").toString());
                }
            }
        }
        return z;
    }
}
