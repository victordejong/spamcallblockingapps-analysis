package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.criteo.publisher.model.p021z.AbstractC2075n;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.z.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/b.class */
public abstract class AbstractC2056b extends AbstractC2075n {

    /* renamed from: a */
    public final List<AbstractC2080r> f2287a;

    /* renamed from: b */
    public final AbstractC2074m f2288b;

    /* renamed from: c */
    public final AbstractC2079q f2289c;

    /* renamed from: d */
    public final List<AbstractC2078p> f2290d;

    /* renamed from: com.criteo.publisher.model.z.b$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/b$a.class */
    public static class C2057a extends AbstractC2075n.AbstractC2076a {

        /* renamed from: a */
        public List<AbstractC2080r> f2291a;

        /* renamed from: b */
        public AbstractC2074m f2292b;

        /* renamed from: c */
        public AbstractC2079q f2293c;

        /* renamed from: d */
        public List<AbstractC2078p> f2294d;

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: a */
        public AbstractC2075n.AbstractC2076a mo35741a(AbstractC2074m mVar) {
            if (mVar != null) {
                this.f2292b = mVar;
                return this;
            }
            throw new NullPointerException("Null advertiser");
        }

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: a */
        public AbstractC2075n.AbstractC2076a mo35740a(AbstractC2079q qVar) {
            if (qVar != null) {
                this.f2293c = qVar;
                return this;
            }
            throw new NullPointerException("Null privacy");
        }

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: a */
        public AbstractC2075n.AbstractC2076a mo35739a(List<AbstractC2080r> list) {
            if (list != null) {
                this.f2291a = list;
                return this;
            }
            throw new NullPointerException("Null nativeProducts");
        }

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: a */
        public AbstractC2075n mo35742a() {
            String str = "";
            if (this.f2291a == null) {
                str = " nativeProducts";
            }
            String str2 = str;
            if (this.f2292b == null) {
                str2 = str + " advertiser";
            }
            String str3 = str2;
            if (this.f2293c == null) {
                str3 = str2 + " privacy";
            }
            String str4 = str3;
            if (this.f2294d == null) {
                str4 = str3 + " pixels";
            }
            if (str4.isEmpty()) {
                return new C2064h(this.f2291a, this.f2292b, this.f2293c, this.f2294d);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: b */
        public AbstractC2075n.AbstractC2076a mo35737b(List<AbstractC2078p> list) {
            if (list != null) {
                this.f2294d = list;
                return this;
            }
            throw new NullPointerException("Null pixels");
        }

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: c */
        public List<AbstractC2080r> mo35736c() {
            List<AbstractC2080r> list = this.f2291a;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"nativeProducts\" has not been set");
        }

        @Override // com.criteo.publisher.model.p021z.AbstractC2075n.AbstractC2076a
        /* renamed from: d */
        public List<AbstractC2078p> mo35735d() {
            List<AbstractC2078p> list = this.f2294d;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"pixels\" has not been set");
        }
    }

    public AbstractC2056b(List<AbstractC2080r> list, AbstractC2074m mVar, AbstractC2079q qVar, List<AbstractC2078p> list2) {
        if (list != null) {
            this.f2287a = list;
            if (mVar != null) {
                this.f2288b = mVar;
                if (qVar != null) {
                    this.f2289c = qVar;
                    if (list2 != null) {
                        this.f2290d = list2;
                        return;
                    }
                    throw new NullPointerException("Null pixels");
                }
                throw new NullPointerException("Null privacy");
            }
            throw new NullPointerException("Null advertiser");
        }
        throw new NullPointerException("Null nativeProducts");
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2075n
    @NonNull
    /* renamed from: a */
    public AbstractC2074m mo35758a() {
        return this.f2288b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2075n)) {
            return false;
        }
        AbstractC2075n nVar = (AbstractC2075n) obj;
        if (!this.f2287a.equals(nVar.mo35750g()) || !this.f2288b.equals(nVar.mo35758a()) || !this.f2289c.equals(nVar.mo35748i()) || !this.f2290d.equals(nVar.mo35749h())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2075n
    @NonNull
    @AbstractC10120c(IapPlanRealmObject.PRODUCTS)
    /* renamed from: g */
    public List<AbstractC2080r> mo35750g() {
        return this.f2287a;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2075n
    @NonNull
    @AbstractC10120c("impressionPixels")
    /* renamed from: h */
    public List<AbstractC2078p> mo35749h() {
        return this.f2290d;
    }

    public int hashCode() {
        return ((((((this.f2287a.hashCode() ^ 1000003) * 1000003) ^ this.f2288b.hashCode()) * 1000003) ^ this.f2289c.hashCode()) * 1000003) ^ this.f2290d.hashCode();
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2075n
    @NonNull
    /* renamed from: i */
    public AbstractC2079q mo35748i() {
        return this.f2289c;
    }

    public String toString() {
        return "NativeAssets{nativeProducts=" + this.f2287a + ", advertiser=" + this.f2288b + ", privacy=" + this.f2289c + ", pixels=" + this.f2290d + CssParser.BLOCK_END;
    }
}
