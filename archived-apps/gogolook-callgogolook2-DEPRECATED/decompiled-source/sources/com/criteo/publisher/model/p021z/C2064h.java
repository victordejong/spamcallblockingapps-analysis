package com.criteo.publisher.model.p021z;

import com.criteo.publisher.model.p021z.AbstractC2075n;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.io.IOException;
import java.util.List;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: com.criteo.publisher.model.z.h */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/h.class */
public final class C2064h extends AbstractC2056b {

    /* renamed from: com.criteo.publisher.model.z.h$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/h$a.class */
    public static final class C2065a extends TypeAdapter<AbstractC2075n> {

        /* renamed from: a */
        public volatile TypeAdapter<List<AbstractC2080r>> f2310a;

        /* renamed from: b */
        public volatile TypeAdapter<AbstractC2074m> f2311b;

        /* renamed from: c */
        public volatile TypeAdapter<AbstractC2079q> f2312c;

        /* renamed from: d */
        public volatile TypeAdapter<List<AbstractC2078p>> f2313d;

        /* renamed from: e */
        public final Gson f2314e;

        public C2065a(Gson gson) {
            this.f2314e = gson;
        }

        /* renamed from: a */
        public void write(C10177c cVar, AbstractC2075n nVar) throws IOException {
            if (nVar == null) {
                cVar.mo13214k();
                return;
            }
            cVar.mo13224d();
            cVar.mo13233a(IapPlanRealmObject.PRODUCTS);
            if (nVar.mo35750g() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<List<AbstractC2080r>> typeAdapter = this.f2310a;
                TypeAdapter<List<AbstractC2080r>> typeAdapter2 = typeAdapter;
                if (typeAdapter == null) {
                    typeAdapter2 = this.f2314e.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2080r.class));
                    this.f2310a = typeAdapter2;
                }
                typeAdapter2.write(cVar, nVar.mo35750g());
            }
            cVar.mo13233a("advertiser");
            if (nVar.mo35758a() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<AbstractC2074m> typeAdapter3 = this.f2311b;
                TypeAdapter<AbstractC2074m> typeAdapter4 = typeAdapter3;
                if (typeAdapter3 == null) {
                    typeAdapter4 = this.f2314e.m30989a(AbstractC2074m.class);
                    this.f2311b = typeAdapter4;
                }
                typeAdapter4.write(cVar, nVar.mo35758a());
            }
            cVar.mo13233a("privacy");
            if (nVar.mo35748i() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<AbstractC2079q> typeAdapter5 = this.f2312c;
                TypeAdapter<AbstractC2079q> typeAdapter6 = typeAdapter5;
                if (typeAdapter5 == null) {
                    typeAdapter6 = this.f2314e.m30989a(AbstractC2079q.class);
                    this.f2312c = typeAdapter6;
                }
                typeAdapter6.write(cVar, nVar.mo35748i());
            }
            cVar.mo13233a("impressionPixels");
            if (nVar.mo35749h() == null) {
                cVar.mo13214k();
            } else {
                TypeAdapter<List<AbstractC2078p>> typeAdapter7 = this.f2313d;
                TypeAdapter<List<AbstractC2078p>> typeAdapter8 = typeAdapter7;
                if (typeAdapter7 == null) {
                    typeAdapter8 = this.f2314e.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2078p.class));
                    this.f2313d = typeAdapter8;
                }
                typeAdapter8.write(cVar, nVar.mo35749h());
            }
            cVar.mo13220f();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public AbstractC2075n read(C10174a aVar) throws IOException {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            aVar.mo13260b();
            AbstractC2075n.AbstractC2076a n = AbstractC2075n.m35743n();
            while (aVar.mo13249h()) {
                String o = aVar.mo13242o();
                if (aVar.mo13272F() == EnumC10176b.NULL) {
                    aVar.mo13241p();
                } else {
                    char c = 65535;
                    int hashCode = o.hashCode();
                    if (hashCode != -1684631018) {
                        if (hashCode == -1003761308 && o.equals(IapPlanRealmObject.PRODUCTS)) {
                            c = 0;
                        }
                    } else if (o.equals("impressionPixels")) {
                        c = 1;
                    }
                    if (c == 0) {
                        TypeAdapter<List<AbstractC2080r>> typeAdapter = this.f2310a;
                        TypeAdapter<List<AbstractC2080r>> typeAdapter2 = typeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter2 = this.f2314e.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2080r.class));
                            this.f2310a = typeAdapter2;
                        }
                        n.mo35739a(typeAdapter2.read(aVar));
                    } else if (c == 1) {
                        TypeAdapter<List<AbstractC2078p>> typeAdapter3 = this.f2313d;
                        TypeAdapter<List<AbstractC2078p>> typeAdapter4 = typeAdapter3;
                        if (typeAdapter3 == null) {
                            typeAdapter4 = this.f2314e.m30995a((C10173a) C10173a.m13277a(List.class, AbstractC2078p.class));
                            this.f2313d = typeAdapter4;
                        }
                        n.mo35737b(typeAdapter4.read(aVar));
                    } else if ("advertiser".equals(o)) {
                        TypeAdapter<AbstractC2074m> typeAdapter5 = this.f2311b;
                        TypeAdapter<AbstractC2074m> typeAdapter6 = typeAdapter5;
                        if (typeAdapter5 == null) {
                            typeAdapter6 = this.f2314e.m30989a(AbstractC2074m.class);
                            this.f2311b = typeAdapter6;
                        }
                        n.mo35741a(typeAdapter6.read(aVar));
                    } else if ("privacy".equals(o)) {
                        TypeAdapter<AbstractC2079q> typeAdapter7 = this.f2312c;
                        TypeAdapter<AbstractC2079q> typeAdapter8 = typeAdapter7;
                        if (typeAdapter7 == null) {
                            typeAdapter8 = this.f2314e.m30989a(AbstractC2079q.class);
                            this.f2312c = typeAdapter8;
                        }
                        n.mo35740a(typeAdapter8.read(aVar));
                    } else {
                        aVar.mo13266L();
                    }
                }
            }
            aVar.mo13250g();
            return n.m35738b();
        }

        public String toString() {
            return "TypeAdapter(NativeAssets)";
        }
    }

    public C2064h(List<AbstractC2080r> list, AbstractC2074m mVar, AbstractC2079q qVar, List<AbstractC2078p> list2) {
        super(list, mVar, qVar, list2);
    }
}
