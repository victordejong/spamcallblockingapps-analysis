package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.ads.zzayu;
/* renamed from: c.d.b.d.g.a.k5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k5.class */
public final class C3719k5 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ zzayu f13837a;

    public C3719k5(zzayu zzayuVar) {
        this.f13837a = zzayuVar;
    }

    public /* synthetic */ C3719k5(zzayu zzayuVar, C3570g5 g5Var) {
        this(zzayuVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.f13837a.f24668c = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.f13837a.f24668c = false;
        }
    }
}
