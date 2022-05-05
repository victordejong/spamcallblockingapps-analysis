package androidx.preference;

import android.os.Handler;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.preference.p */
/* loaded from: classes-dex2jar.jar:androidx/preference/p.class */
public final class HandlerC1032p extends Handler {

    /* renamed from: a */
    final /* synthetic */ AbstractC1027o f4365a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerC1032p(AbstractC1027o oVar) {
        this.f4365a = oVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 1) {
            this.f4365a.m7385y();
        }
    }
}
