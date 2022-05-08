package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÂ\u0002\u0018��:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\n¨\u0006\u000f"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "continuation", "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "buildCache", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "", "getModuleName", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/String;", "cache", "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "notOnJava9", "<init>", "()V", "Cache", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/ModuleNameRetriever.class */
public final class ModuleNameRetriever {
    @JvmField
    @Nullable

    /* renamed from: b */
    public static Cache f20664b;

    /* renamed from: c */
    public static final ModuleNameRetriever f20665c = new ModuleNameRetriever();

    /* renamed from: a */
    private static final Cache f20663a = new Cache(null, null, null);

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��B%\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0003¨\u0006\b"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "Ljava/lang/reflect/Method;", "getDescriptorMethod", "Ljava/lang/reflect/Method;", "getModuleMethod", "nameMethod", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache.class */
    public static final class Cache {
        @JvmField
        @Nullable

        /* renamed from: a */
        public final Method f20666a;
        @JvmField
        @Nullable

        /* renamed from: b */
        public final Method f20667b;
        @JvmField
        @Nullable

        /* renamed from: c */
        public final Method f20668c;

        public Cache(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
            this.f20666a = method;
            this.f20667b = method2;
            this.f20668c = method3;
        }
    }

    private ModuleNameRetriever() {
    }

    /* renamed from: a */
    private final Cache m1903a(BaseContinuationImpl baseContinuationImpl) {
        try {
            Cache cache = new Cache(Class.class.getDeclaredMethod("getModule", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f20664b = cache;
            return cache;
        } catch (Exception e) {
            Cache cache2 = f20663a;
            f20664b = cache2;
            return cache2;
        }
    }

    @Nullable
    /* renamed from: b */
    public final String m1902b(@NotNull BaseContinuationImpl continuation) {
        Intrinsics.m1830e(continuation, "continuation");
        Cache cache = f20664b;
        if (cache == null) {
            cache = m1903a(continuation);
        }
        Object invoke = null;
        if (cache == f20663a) {
            return null;
        }
        Method method = cache.f20666a;
        String str = null;
        if (method != null) {
            Object invoke2 = method.invoke(continuation.getClass(), new Object[0]);
            str = null;
            if (invoke2 != null) {
                Method method2 = cache.f20667b;
                str = null;
                if (method2 != null) {
                    Object invoke3 = method2.invoke(invoke2, new Object[0]);
                    str = null;
                    if (invoke3 != null) {
                        Method method3 = cache.f20668c;
                        invoke = method3 != null ? method3.invoke(invoke3, new Object[0]) : null;
                        if (!(invoke instanceof String)) {
                        }
                        str = (String) invoke;
                    }
                }
            }
        }
        return str;
    }
}
