package p193e.p194a.p437c.p598v.p604i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.insights.reminders.receiver.BillReminderReceiver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.v.i.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/i/c.class */
public abstract class AbstractC10744c extends BroadcastReceiver {

    /* renamed from: a */
    public volatile boolean f31927a = false;

    /* renamed from: b */
    public final Object f31928b = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f31927a) {
            synchronized (this.f31928b) {
                if (!this.f31927a) {
                    ((AbstractC10743b) C25225a.m3816y0(context)).mo12154w6((BillReminderReceiver) this);
                    this.f31927a = true;
                }
            }
        }
    }
}
