package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.cloudmessaging.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/t.class */
abstract class AbstractC0802t<T> {

    /* renamed from: a */
    final int f3312a;

    /* renamed from: b */
    final C1647h<T> f3313b = new C1647h<>();

    /* renamed from: c */
    final int f3314c;

    /* renamed from: d */
    final Bundle f3315d;

    AbstractC0802t(int i, int i2, Bundle bundle) {
        this.f3312a = i;
        this.f3314c = i2;
        this.f3315d = bundle;
    }

    /* renamed from: a */
    public abstract void m3706a(Bundle bundle);

    /* renamed from: b */
    public final void m3705b(zzp zzpVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f3313b.m1448b(zzpVar);
    }

    /* renamed from: c */
    final void m3704c(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f3313b.m1447c(t);
    }

    /* renamed from: d */
    public abstract boolean m3703d();

    public String toString() {
        int i = this.f3314c;
        int i2 = this.f3312a;
        boolean m3703d = m3703d();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(m3703d);
        sb.append("}");
        return sb.toString();
    }
}
