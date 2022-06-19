package p193e.p194a.p437c.p598v.p604i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.insights.reminders.receiver.InsightsReminderActionReceiver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.v.i.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/i/d.class */
public abstract class AbstractC10745d extends BroadcastReceiver {

    /* renamed from: a */
    public volatile boolean f31929a = false;

    /* renamed from: b */
    public final Object f31930b = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f31929a) {
            synchronized (this.f31930b) {
                if (!this.f31929a) {
                    ((AbstractC10747f) C25225a.m3816y0(context)).mo12667K5((InsightsReminderActionReceiver) this);
                    this.f31929a = true;
                }
            }
        }
    }
}
