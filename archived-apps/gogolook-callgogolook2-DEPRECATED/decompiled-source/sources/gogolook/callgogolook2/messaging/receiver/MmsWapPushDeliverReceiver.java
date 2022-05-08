package gogolook.callgogolook2.messaging.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import gogolook.callgogolook2.messaging.datamodel.action.ReceiveMmsMessageAction;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p521j0.p529x.C12810o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/MmsWapPushDeliverReceiver.class */
public class MmsWapPushDeliverReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public final void m27509a(int i, byte[] bArr) {
        if (C12810o.m5233l()) {
            new ReceiveMmsMessageAction(i, bArr).m27742x();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.provider.Telephony.WAP_PUSH_DELIVER".equals(intent.getAction()) && "application/vnd.wap.mms-message".equals(intent.getType())) {
            m27509a(AbstractC12181l0.m6886t().mo6880a(intent, "subscription"), intent.getByteArrayExtra("data"));
        }
    }
}
