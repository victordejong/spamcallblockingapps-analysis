package p081h.p160h.p179e.p192b.p197f;

import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import p081h.p160h.p179e.p192b.p196e.AbstractC6462b;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.f.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/f/b.class */
public final class C6465b {

    /* renamed from: a */
    public final ModelType f16102a;

    /* renamed from: b */
    public final String f16103b;

    /* renamed from: c */
    public final AbstractC6462b f16104c;

    public C6465b(ModelType modelType, String str, AbstractC6462b bVar) {
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "modelRegion");
        C15149k.m377b(bVar, "modelDispatcherProvider");
        this.f16102a = modelType;
        this.f16103b = str;
        this.f16104c = bVar;
    }

    /* renamed from: a */
    public final AbstractC6462b m22519a() {
        return this.f16104c;
    }

    /* renamed from: b */
    public final String m22518b() {
        return this.f16103b;
    }

    /* renamed from: c */
    public final ModelType m22517c() {
        return this.f16102a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6465b)) {
            return false;
        }
        C6465b bVar = (C6465b) obj;
        return C15149k.m384a(this.f16102a, bVar.f16102a) && C15149k.m384a((Object) this.f16103b, (Object) bVar.f16103b) && C15149k.m384a(this.f16104c, bVar.f16104c);
    }

    public int hashCode() {
        ModelType modelType = this.f16102a;
        int i = 0;
        int hashCode = modelType != null ? modelType.hashCode() : 0;
        String str = this.f16103b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        AbstractC6462b bVar = this.f16104c;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "ModelConfig(modelType=" + this.f16102a + ", modelRegion=" + this.f16103b + ", modelDispatcherProvider=" + this.f16104c + ")";
    }
}
