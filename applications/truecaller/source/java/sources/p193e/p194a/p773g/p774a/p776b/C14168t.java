package p193e.p194a.p773g.p774a.p776b;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.g.a.b.t */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/t.class */
public final class C14168t extends BroadcastReceiver {

    /* renamed from: a */
    public final AbstractC14167s f40902a;

    public C14168t(AbstractC14167s abstractC14167s) {
        l.e(abstractC14167s, "listener");
        this.f40902a = abstractC14167s;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        if (!((KeyguardManager) systemService).isKeyguardLocked()) {
            this.f40902a.mo20597a();
        }
    }
}
