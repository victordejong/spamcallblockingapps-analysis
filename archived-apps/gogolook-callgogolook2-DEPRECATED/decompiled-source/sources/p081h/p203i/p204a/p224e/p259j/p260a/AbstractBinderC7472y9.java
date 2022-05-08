package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.y9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y9.class */
public abstract class AbstractBinderC7472y9 extends BinderC7453x2 implements AbstractC7460x9 {
    /* renamed from: a */
    public static AbstractC7460x9 m20465a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
        return queryLocalInterface instanceof AbstractC7460x9 ? (AbstractC7460x9) queryLocalInterface : new C7484z9(iBinder);
    }
}
