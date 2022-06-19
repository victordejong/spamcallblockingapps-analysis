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
public abstract class AbstractC1849c implements Serializable {

    /* renamed from: l */
    private static final Map<String, Object> f5016l = Collections.unmodifiableMap(new HashMap());

    /* renamed from: f */
    private final a f5017f;

    /* renamed from: g */
    private final e f5018g;

    /* renamed from: h */
    private final String f5019h;

    /* renamed from: i */
    private final Set<String> f5020i;

    /* renamed from: j */
    private final Map<String, Object> f5021j;

    /* renamed from: k */
    private final c f5022k;

    protected AbstractC1849c(a aVar, e eVar, String str, Set<String> set, Map<String, Object> map, c cVar) {
        if (aVar != null) {
            this.f5017f = aVar;
            this.f5019h = str;
            if (set != null) {
                this.f5020i = Collections.unmodifiableSet(new HashSet(set));
            } else {
                this.f5020i = null;
            }
            if (map != null) {
                this.f5021j = Collections.unmodifiableMap(new HashMap(map));
            } else {
                this.f5021j = f5016l;
            }
            this.f5022k = cVar;
            return;
        }
        throw new IllegalArgumentException("The algorithm \"alg\" header parameter must not be null");
    }

    /* renamed from: a */
    public a m807a() {
        return this.f5017f;
    }

    /* renamed from: b */
    public c m806b() {
        c cVar = this.f5022k;
        c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = c.c(toString());
        }
        return cVar2;
    }

    /* renamed from: c */
    public l.a.a.c m805c() {
        l.a.a.c cVar = new l.a.a.c(this.f5021j);
        cVar.put("alg", this.f5017f.toString());
        e eVar = this.f5018g;
        if (eVar != null) {
            eVar.toString();
            throw null;
        }
        String str = this.f5019h;
        if (str != null) {
            cVar.put("cty", str);
        }
        Set<String> set = this.f5020i;
        if (set != null && !set.isEmpty()) {
            cVar.put("crit", new ArrayList(this.f5020i));
        }
        return cVar;
    }

    public String toString() {
        return m805c().toString();
    }
}
