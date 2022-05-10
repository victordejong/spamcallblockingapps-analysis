package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzmy;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.je0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/je0.class */
public final class je0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ IOException f13779a;

    /* renamed from: b */
    public final /* synthetic */ ge0 f13780b;

    public je0(ge0 ge0Var, IOException iOException) {
        this.f13780b = ge0Var;
        this.f13779a = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmy zzmyVar;
        zzmyVar = this.f13780b.f13179e;
        zzmyVar.mo11798a(this.f13779a);
    }
}
