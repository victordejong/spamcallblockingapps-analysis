package com.nimbusds.jose;

import com.nimbusds.jose.util.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.nimbusds.jose.c */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/c.class */
public abstract class AbstractC0187c implements Serializable {

    /* renamed from: l */
    private static final Map<String, Object> f337l = Collections.unmodifiableMap(new HashMap());

    /* renamed from: f */
    private final a f338f;

    /* renamed from: g */
    private final e f339g;

    /* renamed from: h */
    private final String f340h;

    /* renamed from: i */
    private final Set<String> f341i;

    /* renamed from: j */
    private final Map<String, Object> f342j;

    /* renamed from: k */
    private final c f343k;

    protected AbstractC0187c(a aVar, e eVar, String str, Set<String> set, Map<String, Object> map, c cVar) {
        if (aVar != null) {
            this.f338f = aVar;
            this.f340h = str;
            if (set != null) {
                this.f341i = Collections.unmodifiableSet(new HashSet(set));
            } else {
                this.f341i = null;
            }
            if (map != null) {
                this.f342j = Collections.unmodifiableMap(new HashMap(map));
            } else {
                this.f342j = f337l;
            }
            this.f343k = cVar;
            return;
        }
        throw new IllegalArgumentException("The algorithm \"alg\" header parameter must not be null");
    }

    /* renamed from: a */
    public a m807a() {
        return this.f338f;
    }

    /* renamed from: b */
    public c m806b() {
        c cVar = this.f343k;
        c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = c.c(toString());
        }
        return cVar2;
    }

    /* renamed from: c */
    public l.a.a.c m805c() {
        l.a.a.c cVar = new l.a.a.c(this.f342j);
        cVar.put("alg", this.f338f.toString());
        e eVar = this.f339g;
        if (eVar == null) {
            String str = this.f340h;
            if (str != null) {
                cVar.put("cty", str);
            }
            Set<String> set = this.f341i;
            if (set != null && !set.isEmpty()) {
                cVar.put("crit", new ArrayList(this.f341i));
            }
            return cVar;
        }
        eVar.toString();
        throw null;
    }

    public String toString() {
        return m805c().toString();
    }
}
