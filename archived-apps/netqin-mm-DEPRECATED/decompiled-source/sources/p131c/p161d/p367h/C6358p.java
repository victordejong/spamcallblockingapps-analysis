package p131c.p161d.p367h;

import com.google.common.collect.RegularImmutableMap;
import com.google.protobuf.GeneratedMessageLite;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.h.p */
/* loaded from: classes2-dex2jar.jar:c/d/h/p.class */
public class C6358p {

    /* renamed from: b */
    public static boolean f20002b = true;

    /* renamed from: c */
    public static volatile C6358p f20003c;

    /* renamed from: d */
    public static final C6358p f20004d = new C6358p(true);

    /* renamed from: a */
    public final Map<C6359a, GeneratedMessageLite.C7951f<?, ?>> f20005a;

    /* renamed from: c.d.h.p$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/p$a.class */
    public static final class C6359a {

        /* renamed from: a */
        public final Object f20006a;

        /* renamed from: b */
        public final int f20007b;

        public C6359a(Object obj, int i) {
            this.f20006a = obj;
            this.f20007b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C6359a)) {
                return false;
            }
            C6359a aVar = (C6359a) obj;
            boolean z = false;
            if (this.f20006a == aVar.f20006a) {
                z = false;
                if (this.f20007b == aVar.f20007b) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f20006a) * RegularImmutableMap.SHORT_MASK) + this.f20007b;
        }
    }

    public C6358p() {
        this.f20005a = new HashMap();
    }

    public C6358p(boolean z) {
        this.f20005a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C6358p m21173a() {
        C6358p pVar = f20003c;
        C6358p pVar2 = pVar;
        if (pVar == null) {
            synchronized (C6358p.class) {
                try {
                    C6358p pVar3 = f20003c;
                    pVar2 = pVar3;
                    if (pVar3 == null) {
                        pVar2 = f20002b ? C6356o.m21176a() : f20004d;
                        f20003c = pVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return pVar2;
    }

    /* renamed from: a */
    public <ContainingType extends AbstractC6354n0> GeneratedMessageLite.C7951f<ContainingType, ?> m21172a(ContainingType containingtype, int i) {
        return (GeneratedMessageLite.C7951f<ContainingType, ?>) this.f20005a.get(new C6359a(containingtype, i));
    }
}
