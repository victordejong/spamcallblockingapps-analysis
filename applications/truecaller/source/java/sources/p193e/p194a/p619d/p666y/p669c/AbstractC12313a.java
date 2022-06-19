package p193e.p194a.p619d.p666y.p669c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.voip.notification.missed.MissedVoipCallMessageBroadcast;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.d.y.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/a.class */
public abstract class AbstractC12313a extends BroadcastReceiver {

    /* renamed from: a */
    public volatile boolean f35958a = false;

    /* renamed from: b */
    public final Object f35959b = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f35958a) {
            synchronized (this.f35959b) {
                if (!this.f35958a) {
                    ((AbstractC12315c) C25225a.m3816y0(context)).mo12600P5((MissedVoipCallMessageBroadcast) this);
                    this.f35958a = true;
                }
            }
        }
    }
}
