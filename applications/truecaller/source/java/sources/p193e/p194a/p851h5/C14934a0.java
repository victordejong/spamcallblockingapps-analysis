package p193e.p194a.p851h5;

import com.truecaller.tcpermissions.PermissionRequestOptions;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.tcpermissions.TcPermissionsViewImpl$requestPermissions$1", f = "TcPermissionsView.kt", l = {415}, m = "invokeSuspend")
/* renamed from: e.a.h5.a0 */
/* loaded from: classes14-dex2jar.jar:e/a/h5/a0.class */
public final class C14934a0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f42655e;

    /* renamed from: f */
    public int f42656f;

    /* renamed from: g */
    public final /* synthetic */ C14968z f42657g;

    /* renamed from: h */
    public final /* synthetic */ l f42658h;

    /* renamed from: i */
    public final /* synthetic */ PermissionRequestOptions f42659i;

    /* renamed from: j */
    public final /* synthetic */ List f42660j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14934a0(C14968z c14968z, l lVar, PermissionRequestOptions permissionRequestOptions, List list, d dVar) {
        super(2, dVar);
        this.f42657g = c14968z;
        this.f42658h = lVar;
        this.f42659i = permissionRequestOptions;
        this.f42660j = list;
    }

    /* renamed from: i */
    public final d<s> m19402i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C14934a0(this.f42657g, this.f42658h, this.f42659i, this.f42660j, dVar);
    }

    /* renamed from: k */
    public final Object m19401k(Object obj, Object obj2) {
        return m19402i(obj, (d) obj2).m19400s(s.a);
    }

    /* renamed from: s */
    public final Object m19400s(Object obj) {
        Object obj2;
        l lVar;
        a aVar = a.a;
        int i = this.f42656f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            l lVar2 = this.f42658h;
            C14968z c14968z = this.f42657g;
            PermissionRequestOptions permissionRequestOptions = this.f42659i;
            Object[] array = this.f42660j.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            this.f42655e = lVar2;
            this.f42656f = 1;
            obj2 = c14968z.mo19338b(permissionRequestOptions, (String[]) Arrays.copyOf(strArr, strArr.length), this);
            if (obj2 == aVar) {
                return aVar;
            }
            lVar = lVar2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            lVar = (l) this.f42655e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        lVar.d(obj2);
        return s.a;
    }
}
