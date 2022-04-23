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
    private final f f345a;

    /* renamed from: b */
    private e f346b;

    /* renamed from: c */
    private String f347c;

    /* renamed from: d */
    private Set<String> f348d;

    /* renamed from: e */
    private URI f349e;

    /* renamed from: f */
    private a f350f;

    /* renamed from: g */
    private URI f351g;
    @Deprecated

    /* renamed from: h */
    private c f352h;

    /* renamed from: i */
    private c f353i;

    /* renamed from: j */
    private List<com.nimbusds.jose.util.a> f354j;

    /* renamed from: k */
    private String f355k;

    /* renamed from: l */
    private Map<String, Object> f356l;

    /* renamed from: m */
    private c f357m;

    public g$a(f fVar) {
        if (!fVar.a().equals(a.g.a())) {
            this.f345a = fVar;
            return;
        }
        throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
    }

    /* renamed from: a */
    public g m802a() {
        return new g(this.f345a, this.f346b, this.f347c, this.f348d, this.f349e, this.f350f, this.f351g, this.f352h, this.f353i, this.f354j, this.f355k, this.f356l, this.f357m);
    }

    /* renamed from: b */
    public g$a m801b(List<com.nimbusds.jose.util.a> list) {
        this.f354j = list;
        return this;
    }
}
