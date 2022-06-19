package androidx.work;

import android.app.Notification;
/* renamed from: androidx.work.h */
/* loaded from: classes-dex2jar.jar:androidx/work/h.class */
public final class C0478h {

    /* renamed from: a */
    private final int f2475a;

    /* renamed from: b */
    private final int f2476b;

    /* renamed from: c */
    private final Notification f2477c;

    public C0478h(int i, Notification notification, int i2) {
        this.f2475a = i;
        this.f2477c = notification;
        this.f2476b = i2;
    }

    /* renamed from: a */
    public int m4492a() {
        return this.f2476b;
    }

    /* renamed from: b */
    public Notification m4491b() {
        return this.f2477c;
    }

    /* renamed from: c */
    public int m4490c() {
        return this.f2475a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0478h.class != obj.getClass()) {
            return false;
        }
        C0478h c0478h = (C0478h) obj;
        if (this.f2475a != c0478h.f2475a || this.f2476b != c0478h.f2476b) {
            return false;
        }
        return this.f2477c.equals(c0478h.f2477c);
    }

    public int hashCode() {
        return (((this.f2475a * 31) + this.f2476b) * 31) + this.f2477c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f2475a + ", mForegroundServiceType=" + this.f2476b + ", mNotification=" + this.f2477c + '}';
    }
}
