package kotlin.reflect;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "p1", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/TypesJVMKt$typeToString$unwrap$1.class */
final /* synthetic */ class TypesJVMKt$typeToString$unwrap$1 extends FunctionReferenceImpl implements Function1<Class<? extends Object>, Class<?>> {

    /* renamed from: h */
    public static final TypesJVMKt$typeToString$unwrap$1 f20837h = new TypesJVMKt$typeToString$unwrap$1();

    TypesJVMKt$typeToString$unwrap$1() {
        super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
    }

    /* renamed from: d */
    public final Class<?> invoke(@NotNull Class<?> p1) {
        Intrinsics.m1830e(p1, "p1");
        return p1.getComponentType();
    }
}
