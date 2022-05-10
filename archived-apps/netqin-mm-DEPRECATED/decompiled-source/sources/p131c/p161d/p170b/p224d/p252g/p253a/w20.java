package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeab;
import com.google.android.gms.internal.ads.zzear;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;
/* renamed from: c.d.b.d.g.a.w20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w20.class */
public final class w20 implements zzear.AbstractC7257a {

    /* renamed from: a */
    public final /* synthetic */ zzeab f15900a;

    public w20(zzeab zzeabVar) {
        this.f15900a = zzeabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: a */
    public final Class<?> mo12912a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: b */
    public final <Q> zzeab<Q> mo12910b(Class<Q> cls) throws GeneralSecurityException {
        if (this.f15900a.mo12964a().equals(cls)) {
            return this.f15900a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: b */
    public final Set<Class<?>> mo12911b() {
        return Collections.singleton(this.f15900a.mo12964a());
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: c */
    public final zzeab<?> mo12909c() {
        return this.f15900a;
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: d */
    public final Class<?> mo12908d() {
        return this.f15900a.getClass();
    }
}
