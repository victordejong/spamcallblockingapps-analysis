package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzave;
import com.google.android.gms.internal.ads.zzavh;
import com.google.android.gms.internal.ads.zzbbs;
/* renamed from: c.d.b.d.g.a.w3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w3.class */
public final /* synthetic */ class C4164w3 implements zzbbs {

    /* renamed from: a */
    public static final zzbbs f15901a = new C4164w3();

    @Override // com.google.android.gms.internal.ads.zzbbs
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return queryLocalInterface instanceof zzave ? (zzave) queryLocalInterface : new zzavh(iBinder);
    }
}
