package p131c.p161d.p170b.p224d.p238d.p243d;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
/* renamed from: c.d.b.d.d.d.k */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/k.class */
public final class C3303k implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ C3302j f12025a;

    public C3303k(C3302j jVar) {
        this.f12025a = jVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.f12025a.f12019d;
            synchronized (hashMap) {
                GmsClientSupervisor.zza zzaVar = (GmsClientSupervisor.zza) message.obj;
                hashMap2 = this.f12025a.f12019d;
                ServiceConnectionC3304l lVar = (ServiceConnectionC3304l) hashMap2.get(zzaVar);
                if (lVar != null && lVar.m27260c()) {
                    if (lVar.m27267a()) {
                        lVar.m27261b("GmsClientSupervisor");
                    }
                    hashMap3 = this.f12025a.f12019d;
                    hashMap3.remove(zzaVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            hashMap4 = this.f12025a.f12019d;
            synchronized (hashMap4) {
                GmsClientSupervisor.zza zzaVar2 = (GmsClientSupervisor.zza) message.obj;
                hashMap5 = this.f12025a.f12019d;
                ServiceConnectionC3304l lVar2 = (ServiceConnectionC3304l) hashMap5.get(zzaVar2);
                if (lVar2 != null && lVar2.m27262b() == 3) {
                    String valueOf = String.valueOf(zzaVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName e = lVar2.m27258e();
                    ComponentName componentName = e;
                    if (e == null) {
                        componentName = zzaVar2.m17301b();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String a = zzaVar2.m17303a();
                        Preconditions.m17288a(a);
                        componentName2 = new ComponentName(a, "unknown");
                    }
                    lVar2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
