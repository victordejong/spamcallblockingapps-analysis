package androidx.core.p034d;

import android.os.Handler;
import android.os.Message;
/* renamed from: androidx.core.d.h */
/* loaded from: classes-dex2jar.jar:androidx/core/d/h.class */
final class C0659h implements Handler.Callback {

    /* renamed from: a */
    final /* synthetic */ C0657g f2946a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0659h(C0657g gVar) {
        this.f2946a = gVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f2946a.m8589a();
            return true;
        } else if (i != 1) {
            return true;
        } else {
            this.f2946a.m8588a((Runnable) message.obj);
            return true;
        }
    }
}
