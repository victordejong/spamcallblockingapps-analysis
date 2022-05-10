package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.internal.base.zap;
/* renamed from: c.d.b.d.d.a.a.n */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/n.class */
public final class HandlerC3268n extends zap {

    /* renamed from: a */
    public final /* synthetic */ zaar f11963a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3268n(zaar zaarVar, Looper looper) {
        super(looper);
        this.f11963a = zaarVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f11963a.m17543j();
        } else if (i != 2) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i);
            Log.w("GoogleApiClientImpl", sb.toString());
        } else {
            this.f11963a.m17544i();
        }
    }
}
