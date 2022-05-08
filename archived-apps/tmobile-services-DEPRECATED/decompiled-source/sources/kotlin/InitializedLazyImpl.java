package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\n\u001a\u00028��¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u00028��8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/InitializedLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "", "isInitialized", "()Z", "", "toString", "()Ljava/lang/String;", FirebaseAnalytics.Param.VALUE, "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/InitializedLazyImpl.class */
public final class InitializedLazyImpl<T> implements Lazy<T>, Serializable {

    /* renamed from: f */
    private final T f20409f;

    public InitializedLazyImpl(T t) {
        this.f20409f = t;
    }

    @Override // kotlin.Lazy
    public T getValue() {
        return this.f20409f;
    }

    @NotNull
    public String toString() {
        return String.valueOf(getValue());
    }
}
