package kotlin.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\b\u0003\u0018��2\u00020\u00012\u00020\u0002B+\u0012\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0018\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\f\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lkotlin/reflect/ParameterizedTypeImpl;", "Ljava/lang/reflect/ParameterizedType;", "Lkotlin/reflect/TypeImpl;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "Ljava/lang/reflect/Type;", "getActualTypeArguments", "()[Ljava/lang/reflect/Type;", "getOwnerType", "()Ljava/lang/reflect/Type;", "getRawType", "", "getTypeName", "()Ljava/lang/String;", "", "hashCode", "()I", "toString", "ownerType", "Ljava/lang/reflect/Type;", "Ljava/lang/Class;", "rawType", "Ljava/lang/Class;", "typeArguments", "[Ljava/lang/reflect/Type;", "", "<init>", "(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalStdlibApi
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/ParameterizedTypeImpl.class */
public final class ParameterizedTypeImpl implements ParameterizedType, TypeImpl {

    /* renamed from: f */
    private final Type[] f20830f;

    /* renamed from: g */
    private final Class<?> f20831g;

    /* renamed from: h */
    private final Type f20832h;

    public ParameterizedTypeImpl(@NotNull Class<?> rawType, @Nullable Type type, @NotNull List<? extends Type> typeArguments) {
        Intrinsics.m1830e(rawType, "rawType");
        Intrinsics.m1830e(typeArguments, "typeArguments");
        this.f20831g = rawType;
        this.f20832h = type;
        Object[] array = typeArguments.toArray(new Type[0]);
        if (array != null) {
            this.f20830f = (Type[]) array;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (Intrinsics.m1834a(this.f20831g, parameterizedType.getRawType()) && Intrinsics.m1834a(this.f20832h, parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments())) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // java.lang.reflect.ParameterizedType
    @NotNull
    public Type[] getActualTypeArguments() {
        return this.f20830f;
    }

    @Override // java.lang.reflect.ParameterizedType
    @Nullable
    public Type getOwnerType() {
        return this.f20832h;
    }

    @Override // java.lang.reflect.ParameterizedType
    @NotNull
    public Type getRawType() {
        return this.f20831g;
    }

    @Override // java.lang.reflect.Type
    @NotNull
    public String getTypeName() {
        String g;
        String g2;
        StringBuilder sb = new StringBuilder();
        Type type = this.f20832h;
        if (type != null) {
            g2 = TypesJVMKt.m1676g(type);
            sb.append(g2);
            sb.append("$");
            sb.append(this.f20831g.getSimpleName());
        } else {
            g = TypesJVMKt.m1676g(this.f20831g);
            sb.append(g);
        }
        if (!(this.f20830f.length == 0)) {
            ArraysKt___ArraysKt.m2254G(this.f20830f, sb, null, "<", ">", 0, null, ParameterizedTypeImpl$getTypeName$1$1.f20833h, 50, null);
        }
        String sb2 = sb.toString();
        Intrinsics.m1831d(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public int hashCode() {
        int hashCode = this.f20831g.hashCode();
        Type type = this.f20832h;
        return (hashCode ^ (type != null ? type.hashCode() : 0)) ^ Arrays.hashCode(getActualTypeArguments());
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
