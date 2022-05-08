package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.SinceKotlin;
@SinceKotlin
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/AdaptedFunctionReference.class */
public class AdaptedFunctionReference implements FunctionBase, Serializable {

    /* renamed from: f */
    protected final Object f20709f;

    /* renamed from: g */
    private final Class f20710g;

    /* renamed from: h */
    private final String f20711h;

    /* renamed from: i */
    private final String f20712i;

    /* renamed from: j */
    private final boolean f20713j;

    /* renamed from: k */
    private final int f20714k;

    /* renamed from: l */
    private final int f20715l;

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptedFunctionReference)) {
            return false;
        }
        AdaptedFunctionReference adaptedFunctionReference = (AdaptedFunctionReference) obj;
        if (this.f20713j != adaptedFunctionReference.f20713j || this.f20714k != adaptedFunctionReference.f20714k || this.f20715l != adaptedFunctionReference.f20715l || !Intrinsics.m1834a(this.f20709f, adaptedFunctionReference.f20709f) || !Intrinsics.m1834a(this.f20710g, adaptedFunctionReference.f20710g) || !this.f20711h.equals(adaptedFunctionReference.f20711h) || !this.f20712i.equals(adaptedFunctionReference.f20712i)) {
            z = false;
        }
        return z;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.f20714k;
    }

    public int hashCode() {
        Object obj = this.f20709f;
        int i = 0;
        int hashCode = obj != null ? obj.hashCode() : 0;
        Class cls = this.f20710g;
        if (cls != null) {
            i = cls.hashCode();
        }
        int hashCode2 = this.f20711h.hashCode();
        return (((((((((((hashCode * 31) + i) * 31) + hashCode2) * 31) + this.f20712i.hashCode()) * 31) + (this.f20713j ? 1231 : 1237)) * 31) + this.f20714k) * 31) + this.f20715l;
    }

    public String toString() {
        return Reflection.m1800k(this);
    }
}
