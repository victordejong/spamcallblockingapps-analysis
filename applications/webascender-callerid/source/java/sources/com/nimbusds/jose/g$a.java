package com.nimbusds.jose;

import com.nimbusds.jose.o.a;
import com.nimbusds.jose.util.c;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/g$a.class */
public class g$a {

    /* renamed from: a */
    private final f f5024a;

    /* renamed from: b */
    private e f5025b;

    /* renamed from: c */
    private String f5026c;

    /* renamed from: d */
    private Set<String> f5027d;

    /* renamed from: e */
    private URI f5028e;

    /* renamed from: f */
    private a f5029f;

    /* renamed from: g */
    private URI f5030g;
    @Deprecated

    /* renamed from: h */
    private c f5031h;

    /* renamed from: i */
    private c f5032i;

    /* renamed from: j */
    private List<com.nimbusds.jose.util.a> f5033j;

    /* renamed from: k */
    private String f5034k;

    /* renamed from: l */
    private Map<String, Object> f5035l;

    /* renamed from: m */
    private c f5036m;

    public g$a(f fVar) {
        if (!fVar.a().equals(a.g.a())) {
            this.f5024a = fVar;
            return;
        }
        throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
    }

    /* renamed from: a */
    public g m802a() {
        return new g(this.f5024a, this.f5025b, this.f5026c, this.f5027d, this.f5028e, this.f5029f, this.f5030g, this.f5031h, this.f5032i, this.f5033j, this.f5034k, this.f5035l, this.f5036m);
    }

    /* renamed from: b */
    public g$a m801b(List<com.nimbusds.jose.util.a> list) {
        this.f5033j = list;
        return this;
    }
}
