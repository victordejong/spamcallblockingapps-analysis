package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÁ\u0002\u0018��2\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/time/MonotonicTimeSource;", "Lkotlin/time/TimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "", "read", "()J", "", "toString", "()Ljava/lang/String;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalTime
/* loaded from: classes2-dex2jar.jar:kotlin/time/MonotonicTimeSource.class */
public final class MonotonicTimeSource extends AbstractLongTimeSource implements TimeSource {

    /* renamed from: a */
    public static final MonotonicTimeSource f21070a = new MonotonicTimeSource();

    private MonotonicTimeSource() {
        super(TimeUnit.NANOSECONDS);
    }

    @NotNull
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }
}
