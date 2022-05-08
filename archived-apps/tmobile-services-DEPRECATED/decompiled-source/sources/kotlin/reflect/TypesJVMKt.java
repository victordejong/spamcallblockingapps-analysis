package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.HttpUrl;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\u001a)\u0010\u0006\u001a\u00020\u00052\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030��2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a\u001d\u0010\u000f\u001a\u00020\u0005*\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0003¢\u0006\u0004\b\u000f\u0010\u0010\" \u0010\u0015\u001a\u00020\u0005*\u00020\f8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012\" \u0010\u0015\u001a\u00020\u0005*\u00020\u00038B@\u0003X\u0083\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0017\u001a\u0004\b\u0011\u0010\u0016¨\u0006\u0018"}, d2 = {"Ljava/lang/Class;", "jClass", "", "Lkotlin/reflect/KTypeProjection;", "arguments", "Ljava/lang/reflect/Type;", "createPossiblyInnerType", "(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;", "type", "", "typeToString", "(Ljava/lang/reflect/Type;)Ljava/lang/String;", "Lkotlin/reflect/KType;", "", "forceWrapper", "computeJavaType", "(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "javaType", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "(Lkotlin/reflect/KTypeProjection;)V", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/TypesJVMKt.class */
public final class TypesJVMKt {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/reflect/TypesJVMKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20835a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f20836b;

        static {
            int[] iArr = new int[KVariance.values().length];
            f20835a = iArr;
            iArr[KVariance.IN.ordinal()] = 1;
            f20835a[KVariance.INVARIANT.ordinal()] = 2;
            f20835a[KVariance.OUT.ordinal()] = 3;
            int[] iArr2 = new int[KVariance.values().length];
            f20836b = iArr2;
            iArr2[KVariance.INVARIANT.ordinal()] = 1;
            f20836b[KVariance.IN.ordinal()] = 2;
            f20836b[KVariance.OUT.ordinal()] = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalStdlibApi
    /* renamed from: c */
    public static final Type m1680c(KType kType, boolean z) {
        Type type;
        KClassifier b = kType.mo1690b();
        if (b instanceof KTypeParameter) {
            return new TypeVariableImpl((KTypeParameter) b);
        }
        if (b instanceof KClass) {
            KClass kClass = (KClass) b;
            Class b2 = z ? JvmClassMappingKt.m1865b(kClass) : JvmClassMappingKt.m1866a(kClass);
            List<KTypeProjection> p = kType.mo1689p();
            if (p.isEmpty()) {
                return b2;
            }
            if (!b2.isArray()) {
                return m1678e(b2, p);
            }
            if (b2.getComponentType().isPrimitive()) {
                return b2;
            }
            KTypeProjection kTypeProjection = (KTypeProjection) CollectionsKt.m2202Q(p);
            if (kTypeProjection != null) {
                KVariance a = kTypeProjection.m1687a();
                KType b3 = kTypeProjection.m1686b();
                if (a == null) {
                    type = b2;
                } else {
                    int i = WhenMappings.f20835a[a.ordinal()];
                    type = b2;
                    if (i != 1) {
                        if (i == 2 || i == 3) {
                            Intrinsics.m1832c(b3);
                            Type d = m1679d(b3, false, 1, null);
                            type = d instanceof Class ? b2 : new GenericArrayTypeImpl(d);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    }
                }
                return type;
            }
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
        }
        throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
    }

    /* renamed from: d */
    static /* synthetic */ Type m1679d(KType kType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return m1680c(kType, z);
    }

    @ExperimentalStdlibApi
    /* renamed from: e */
    private static final Type m1678e(Class<?> cls, List<KTypeProjection> list) {
        int p;
        int p2;
        int p3;
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            p = CollectionsKt__IterablesKt.m2164p(list, 10);
            ArrayList arrayList = new ArrayList(p);
            for (KTypeProjection kTypeProjection : list) {
                arrayList.add(m1677f(kTypeProjection));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        } else if (Modifier.isStatic(cls.getModifiers())) {
            p3 = CollectionsKt__IterablesKt.m2164p(list, 10);
            ArrayList arrayList2 = new ArrayList(p3);
            for (KTypeProjection kTypeProjection2 : list) {
                arrayList2.add(m1677f(kTypeProjection2));
            }
            return new ParameterizedTypeImpl(cls, declaringClass, arrayList2);
        } else {
            int length = cls.getTypeParameters().length;
            Type e = m1678e(declaringClass, list.subList(length, list.size()));
            List<KTypeProjection> subList = list.subList(0, length);
            p2 = CollectionsKt__IterablesKt.m2164p(subList, 10);
            ArrayList arrayList3 = new ArrayList(p2);
            for (KTypeProjection kTypeProjection3 : subList) {
                arrayList3.add(m1677f(kTypeProjection3));
            }
            return new ParameterizedTypeImpl(cls, e, arrayList3);
        }
    }

    /* renamed from: f */
    private static final Type m1677f(KTypeProjection kTypeProjection) {
        Type type;
        KVariance d = kTypeProjection.m1684d();
        if (d == null) {
            return WildcardTypeImpl.f20839i.m1673a();
        }
        KType c = kTypeProjection.m1685c();
        Intrinsics.m1832c(c);
        int i = WhenMappings.f20836b[d.ordinal()];
        if (i == 1) {
            type = m1680c(c, true);
        } else if (i == 2) {
            type = new WildcardTypeImpl(null, m1680c(c, true));
        } else if (i == 3) {
            type = new WildcardTypeImpl(m1680c(c, true), null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static final String m1676g(Type type) {
        String str;
        Sequence e;
        int g;
        String u;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                e = SequencesKt__SequencesKt.m1628e(type, TypesJVMKt$typeToString$unwrap$1.f20837h);
                StringBuilder sb = new StringBuilder();
                sb.append(((Class) SequencesKt.m1635n(e)).getName());
                g = SequencesKt___SequencesKt.m1623g(e);
                u = StringsKt__StringsJVMKt.m1482u(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, g);
                sb.append(u);
                str = sb.toString();
            } else {
                str = cls.getName();
            }
            Intrinsics.m1831d(str, "if (type.isArray) {\n    …\n        } else type.name");
        } else {
            str = type.toString();
        }
        return str;
    }
}
