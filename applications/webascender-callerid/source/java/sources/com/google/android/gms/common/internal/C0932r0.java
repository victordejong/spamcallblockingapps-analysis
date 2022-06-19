package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC0914i;
/* renamed from: com.google.android.gms.common.internal.r0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/r0.class */
final class C0932r0 implements Handler.Callback {

    /* renamed from: a */
    private final /* synthetic */ q0 f3560a;

    private C0932r0(q0 q0Var) {
        this.f3560a = q0Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (q0.f(this.f3560a)) {
                AbstractC0914i.C0915a c0915a = (AbstractC0914i.C0915a) message.obj;
                s0 s0Var = (s0) q0.f(this.f3560a).get(c0915a);
                if (s0Var != null && s0Var.h()) {
                    if (s0Var.d()) {
                        s0Var.g("GmsClientSupervisor");
                    }
                    q0.f(this.f3560a).remove(c0915a);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (q0.f(this.f3560a)) {
                AbstractC0914i.C0915a c0915a2 = (AbstractC0914i.C0915a) message.obj;
                s0 s0Var2 = (s0) q0.f(this.f3560a).get(c0915a2);
                if (s0Var2 != null && s0Var2.f() == 3) {
                    String valueOf = String.valueOf(c0915a2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName j = s0Var2.j();
                    ComponentName componentName = j;
                    if (j == null) {
                        componentName = c0915a2.m3342c();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String m3343b = c0915a2.m3343b();
                        C0931r.m3308k(m3343b);
                        componentName2 = new ComponentName(m3343b, "unknown");
                    }
                    s0Var2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
