package com.criteo.publisher.p027t;

import androidx.annotation.Nullable;
import com.criteo.publisher.p027t.AbstractC2138t;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.t.h */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/h.class */
public final class C2111h extends AbstractC2104d {

    /* renamed from: com.criteo.publisher.t.h$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/h$a.class */
    public static final class C2112a extends TypeAdapter<AbstractC2138t.AbstractC2140b> {

        /* renamed from: a */
        public volatile TypeAdapter<String> f2387a;

        /* renamed from: b */
        public volatile TypeAdapter<Boolean> f2388b;

        /* renamed from: c */
        public final Gson f2389c;

        public C2112a(Gson gson) {
            this.f2389c = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2138t.AbstractC2140b bVar) throws IOException {
            if (bVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a("impressionId");
            if (bVar.mo35620b() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<String> typeAdapter = this.f2387a;
                TypeAdapter<String> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2389c.m30989a(String.class);
                    this.f2387a = typeAdapter2;
                }
                typeAdapter2.write(cVar, bVar.mo35620b());
            }
            cVar.mo13233a("cachedBidUsed");
            TypeAdapter<Boolean> typeAdapter3 = this.f2388b;
            TypeAdapter<Boolean> typeAdapter4 = typeAdapter3;
            if (typeAdapter3 == null) {
                typeAdapter4 = this.f2389c.m30989a(Boolean.class);
                this.f2388b = typeAdapter4;
            }
            typeAdapter4.write(cVar, Boolean.valueOf(bVar.mo35623a()));
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2138t.AbstractC2140b read(C10174a aVar) throws IOException {
            String str = null;
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            boolean z = false;
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    o.hashCode();
                    if ("impressionId".equals(o)) {
                        TypeAdapter<String> typeAdapter = this.f2387a;
                        TypeAdapter<String> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2389c.m30989a(String.class);
                            this.f2387a = typeAdapter2;
                        }
                        str = typeAdapter2.read(aVar);
                    } else if ("cachedBidUsed".equals(o)) {
                        TypeAdapter<Boolean> typeAdapter3 = this.f2388b;
                        TypeAdapter<Boolean> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2389c.m30989a(Boolean.class);
                            this.f2388b = typeAdapter4;
                        }
                        z = typeAdapter4.read(aVar).booleanValue();
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return new C2111h(str, z);
        }

        public String toString() {
            return "TypeAdapter(MetricRequest.MetricRequestSlot)";
        }
    }

    public C2111h(@Nullable String str, boolean z) {
        super(str, z);
    }
}
