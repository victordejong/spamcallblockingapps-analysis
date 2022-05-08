package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3.class */
public final class ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3 extends Lambda implements Function1<Throwable, Throwable> {

    /* renamed from: f */
    final /* synthetic */ Constructor f23902f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3(Constructor constructor) {
        super(1);
        this.f23902f = constructor;
    }

    @Nullable
    /* renamed from: b */
    public final Throwable invoke(@NotNull Throwable th) {
        Object obj;
        Object newInstance;
        try {
            Result.Companion companion = Result.f20418g;
            newInstance = this.f23902f.newInstance(th.getMessage());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th2);
            Result.m2481b(obj);
        }
        if (newInstance != null) {
            Throwable th3 = (Throwable) newInstance;
            th3.initCause(th);
            Result.m2481b(th3);
            obj = th3;
            Object obj2 = obj;
            if (Result.m2477f(obj)) {
                obj2 = null;
            }
            return (Throwable) obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
    }
}
