package p193e.p194a.p851h5;

import com.truecaller.tcpermissions.PermissionRequestOptions;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import s1.z.c.l;
/* renamed from: e.a.h5.v */
/* loaded from: classes14-dex2jar.jar:e/a/h5/v.class */
public final class C14964v extends AbstractC20576b<AbstractC14963u> implements AbstractC20580e {

    /* renamed from: b */
    public List<String> f42709b;

    /* renamed from: c */
    public PermissionRequestOptions f42710c;

    /* renamed from: d */
    public Set<String> f42711d;

    /* renamed from: e */
    public C14945l f42712e = new C14945l(false, false, 2);

    /* renamed from: f */
    public final AbstractC14967y f42713f;

    /* renamed from: g */
    public final AbstractC19219a0 f42714g;

    @Inject
    public C14964v(AbstractC14967y abstractC14967y, AbstractC19219a0 abstractC19219a0) {
        l.e(abstractC14967y, "tcPermissionsView");
        l.e(abstractC19219a0, "permissionUtil");
        this.f42713f = abstractC14967y;
        this.f42714g = abstractC19219a0;
    }

    /* renamed from: Hj */
    public final boolean m19357Hj() {
        AbstractC19219a0 abstractC19219a0 = this.f42714g;
        List<String> list = this.f42709b;
        if (list == null) {
            l.l("permissions");
            throw null;
        }
        Object[] array = list.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        return abstractC19219a0.mo13825h((String[]) Arrays.copyOf(strArr, strArr.length));
    }
}
