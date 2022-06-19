package p193e.p194a.p717f.p734z.p737o0.p738b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.incallui.utils.notification.actionreceiver.NotificationActionReceiver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.f.z.o0.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/o0/b/a.class */
public abstract class AbstractC13846a extends BroadcastReceiver {

    /* renamed from: a */
    public volatile boolean f40175a = false;

    /* renamed from: b */
    public final Object f40176b = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f40175a) {
            synchronized (this.f40176b) {
                if (!this.f40175a) {
                    ((AbstractC13849d) C25225a.m3816y0(context)).mo12705H7((NotificationActionReceiver) this);
                    this.f40175a = true;
                }
            }
        }
    }
}
