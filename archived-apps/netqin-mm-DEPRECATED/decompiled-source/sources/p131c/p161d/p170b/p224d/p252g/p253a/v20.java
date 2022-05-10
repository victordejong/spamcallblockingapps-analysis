package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeab;
import com.google.android.gms.internal.ads.zzeae;
import com.google.android.gms.internal.ads.zzeag;
import com.google.android.gms.internal.ads.zzear;
import java.security.GeneralSecurityException;
import java.util.Set;
/* renamed from: c.d.b.d.g.a.v20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v20.class */
public final class v20 implements zzear.AbstractC7257a {

    /* renamed from: a */
    public final /* synthetic */ zzeag f15693a;

    public v20(zzeag zzeagVar) {
        this.f15693a = zzeagVar;
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: a */
    public final Class<?> mo12912a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: b */
    public final <Q> zzeab<Q> mo12910b(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzeae(this.f15693a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: b */
    public final Set<Class<?>> mo12911b() {
        return this.f15693a.m12950d();
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: c */
    public final zzeab<?> mo12909c() {
        zzeag zzeagVar = this.f15693a;
        return new zzeae(zzeagVar, zzeagVar.m12949e());
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: d */
    public final Class<?> mo12908d() {
        return this.f15693a.getClass();
    }
}
