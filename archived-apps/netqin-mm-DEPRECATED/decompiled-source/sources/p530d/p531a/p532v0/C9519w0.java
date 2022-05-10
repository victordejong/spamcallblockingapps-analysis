package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4940r;
import p530d.p531a.p532v0.AbstractC9404m1;
/* renamed from: d.a.v0.w0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/w0.class */
public final class C9519w0 {

    /* renamed from: a */
    public final Map<String, C9520a> f36373a;

    /* renamed from: b */
    public final Map<String, C9520a> f36374b;

    /* renamed from: c */
    public final AbstractC9404m1.C9432x f36375c;

    /* renamed from: d */
    public final Object f36376d;

    /* renamed from: d.a.v0.w0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w0$a.class */
    public static final class C9520a {

        /* renamed from: a */
        public final Long f36377a;

        /* renamed from: b */
        public final Boolean f36378b;

        /* renamed from: c */
        public final Integer f36379c;

        /* renamed from: d */
        public final Integer f36380d;

        /* renamed from: e */
        public final C9446n1 f36381e;

        /* renamed from: f */
        public final C9387k0 f36382f;

        public C9520a(Map<String, ?> map, boolean z, int i, int i2) {
            this.f36377a = C9491r1.m2599s(map);
            this.f36378b = C9491r1.m2598t(map);
            Integer j = C9491r1.m2608j(map);
            this.f36379c = j;
            boolean z2 = true;
            if (j != null) {
                C4933n.m24782a(j.intValue() >= 0, "maxInboundMessageSize %s exceeds bounds", this.f36379c);
            }
            Integer i3 = C9491r1.m2609i(map);
            this.f36380d = i3;
            if (i3 != null) {
                if (i3.intValue() < 0) {
                    z2 = false;
                }
                C4933n.m24782a(z2, "maxOutboundMessageSize %s exceeds bounds", this.f36380d);
            }
            Map<String, ?> map2 = null;
            Map<String, ?> o = z ? C9491r1.m2603o(map) : null;
            this.f36381e = o == null ? C9446n1.f36224f : m2540b(o, i);
            map2 = z ? C9491r1.m2615c(map) : map2;
            this.f36382f = map2 == null ? C9387k0.f36053d : m2541a(map2, i2);
        }

        /* renamed from: a */
        public static C9387k0 m2541a(Map<String, ?> map, int i) {
            Integer f = C9491r1.m2612f(map);
            C4933n.m24794a(f, "maxAttempts cannot be empty");
            int intValue = f.intValue();
            boolean z = true;
            C4933n.m24787a(intValue >= 2, "maxAttempts must be greater than 1: %s", intValue);
            int min = Math.min(intValue, i);
            Long b = C9491r1.m2616b(map);
            C4933n.m24794a(b, "hedgingDelay cannot be empty");
            long longValue = b.longValue();
            if (longValue < 0) {
                z = false;
            }
            C4933n.m24785a(z, "hedgingDelay must not be negative: %s", longValue);
            return new C9387k0(min, longValue, C9491r1.m2604n(map));
        }

        /* renamed from: b */
        public static C9446n1 m2540b(Map<String, ?> map, int i) {
            Integer g = C9491r1.m2611g(map);
            C4933n.m24794a(g, "maxAttempts cannot be empty");
            int intValue = g.intValue();
            boolean z = true;
            C4933n.m24787a(intValue >= 2, "maxAttempts must be greater than 1: %s", intValue);
            int min = Math.min(intValue, i);
            Long d = C9491r1.m2614d(map);
            C4933n.m24794a(d, "initialBackoff cannot be empty");
            long longValue = d.longValue();
            C4933n.m24785a(longValue > 0, "initialBackoffNanos must be greater than 0: %s", longValue);
            Long h = C9491r1.m2610h(map);
            C4933n.m24794a(h, "maxBackoff cannot be empty");
            long longValue2 = h.longValue();
            C4933n.m24785a(longValue2 > 0, "maxBackoff must be greater than 0: %s", longValue2);
            Double a = C9491r1.m2619a(map);
            C4933n.m24794a(a, "backoffMultiplier cannot be empty");
            double doubleValue = a.doubleValue();
            if (doubleValue <= 0.0d) {
                z = false;
            }
            C4933n.m24782a(z, "backoffMultiplier must be greater than 0: %s", Double.valueOf(doubleValue));
            return new C9446n1(min, longValue, longValue2, doubleValue, C9491r1.m2602p(map));
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C9520a)) {
                return false;
            }
            C9520a aVar = (C9520a) obj;
            boolean z = false;
            if (C4928k.m24808a(this.f36377a, aVar.f36377a)) {
                z = false;
                if (C4928k.m24808a(this.f36378b, aVar.f36378b)) {
                    z = false;
                    if (C4928k.m24808a(this.f36379c, aVar.f36379c)) {
                        z = false;
                        if (C4928k.m24808a(this.f36380d, aVar.f36380d)) {
                            z = false;
                            if (C4928k.m24808a(this.f36381e, aVar.f36381e)) {
                                z = false;
                                if (C4928k.m24808a(this.f36382f, aVar.f36382f)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f36377a, this.f36378b, this.f36379c, this.f36380d, this.f36381e, this.f36382f);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("timeoutNanos", this.f36377a);
            a.m24813a("waitForReady", this.f36378b);
            a.m24813a("maxInboundMessageSize", this.f36379c);
            a.m24813a("maxOutboundMessageSize", this.f36380d);
            a.m24813a("retryPolicy", this.f36381e);
            a.m24813a("hedgingPolicy", this.f36382f);
            return a.toString();
        }
    }

    public C9519w0(Map<String, C9520a> map, Map<String, C9520a> map2, AbstractC9404m1.C9432x xVar, Object obj) {
        this.f36373a = Collections.unmodifiableMap(new HashMap(map));
        this.f36374b = Collections.unmodifiableMap(new HashMap(map2));
        this.f36375c = xVar;
        this.f36376d = obj;
    }

    /* renamed from: a */
    public static C9519w0 m2546a(Map<String, ?> map, boolean z, int i, int i2, Object obj) {
        AbstractC9404m1.C9432x r = z ? C9491r1.m2600r(map) : null;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        List<Map<String, ?>> k = C9491r1.m2607k(map);
        if (k == null) {
            return new C9519w0(hashMap, hashMap2, r, obj);
        }
        for (Map<String, ?> map2 : k) {
            C9520a aVar = new C9520a(map2, z, i, i2);
            List<Map<String, ?>> m = C9491r1.m2605m(map2);
            C4933n.m24782a(m != null && !m.isEmpty(), "no names in method config %s", map2);
            for (Map<String, ?> map3 : m) {
                String q = C9491r1.m2601q(map3);
                C4933n.m24790a(!C4940r.m24755a(q), "missing service name");
                String l = C9491r1.m2606l(map3);
                if (C4940r.m24755a(l)) {
                    C4933n.m24782a(!hashMap2.containsKey(q), "Duplicate service %s", q);
                    hashMap2.put(q, aVar);
                } else {
                    String a = MethodDescriptor.m630a(q, l);
                    C4933n.m24782a(!hashMap.containsKey(a), "Duplicate method name %s", a);
                    hashMap.put(a, aVar);
                }
            }
        }
        return new C9519w0(hashMap, hashMap2, r, obj);
    }

    /* renamed from: e */
    public static C9519w0 m2542e() {
        return new C9519w0(new HashMap(), new HashMap(), null, null);
    }

    /* renamed from: a */
    public Object m2547a() {
        return this.f36376d;
    }

    /* renamed from: b */
    public AbstractC9404m1.C9432x m2545b() {
        return this.f36375c;
    }

    /* renamed from: c */
    public Map<String, C9520a> m2544c() {
        return this.f36374b;
    }

    /* renamed from: d */
    public Map<String, C9520a> m2543d() {
        return this.f36373a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C9519w0.class != obj.getClass()) {
            return false;
        }
        C9519w0 w0Var = (C9519w0) obj;
        if (!C4928k.m24808a(this.f36373a, w0Var.f36373a) || !C4928k.m24808a(this.f36374b, w0Var.f36374b) || !C4928k.m24808a(this.f36375c, w0Var.f36375c) || !C4928k.m24808a(this.f36376d, w0Var.f36376d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.f36373a, this.f36374b, this.f36375c, this.f36376d);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("serviceMethodMap", this.f36373a);
        a.m24813a("serviceMap", this.f36374b);
        a.m24813a("retryThrottling", this.f36375c);
        a.m24813a("loadBalancingConfig", this.f36376d);
        return a.toString();
    }
}
