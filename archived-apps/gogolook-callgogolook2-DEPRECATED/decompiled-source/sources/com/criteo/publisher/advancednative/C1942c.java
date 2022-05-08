package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import com.criteo.publisher.p023p.AbstractC2089c;
import java.lang.ref.Reference;
import java.net.URI;
/* renamed from: com.criteo.publisher.advancednative.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/c.class */
public class C1942c implements AbstractC1958l {
    @NonNull

    /* renamed from: a */
    public final URI f2073a;
    @NonNull

    /* renamed from: b */
    public final Reference<CriteoNativeAdListener> f2074b;
    @NonNull

    /* renamed from: c */
    public final C1947f f2075c;

    /* renamed from: com.criteo.publisher.advancednative.c$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/c$a.class */
    public class C1943a implements AbstractC2089c {
        public C1943a() {
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: a */
        public void mo35710a() {
            C1942c.this.f2075c.m35976b((CriteoNativeAdListener) C1942c.this.f2074b.get());
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: b */
        public void mo35709b() {
            C1942c.this.f2075c.m35975c((CriteoNativeAdListener) C1942c.this.f2074b.get());
        }
    }

    public C1942c(@NonNull URI uri, @NonNull Reference<CriteoNativeAdListener> reference, @NonNull C1947f fVar) {
        this.f2073a = uri;
        this.f2074b = reference;
        this.f2075c = fVar;
    }

    @Override // com.criteo.publisher.advancednative.AbstractC1958l
    /* renamed from: a */
    public void mo35969a() {
        this.f2075c.m35978a(this.f2074b.get());
        this.f2075c.m35977a(this.f2073a, new C1943a());
    }
}
