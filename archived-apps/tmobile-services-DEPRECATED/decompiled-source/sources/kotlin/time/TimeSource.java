package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018�� \u00052\u00020\u0001:\u0002\u0005\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeSource;", "Lkotlin/Any;", "Lkotlin/time/TimeMark;", "markNow", "()Lkotlin/time/TimeMark;", "Companion", "Monotonic", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalTime
/* loaded from: classes2-dex2jar.jar:kotlin/time/TimeSource.class */
public interface TimeSource {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/time/TimeSource$Companion.class */
    public static final class Companion {

        /* renamed from: a */
        static final /* synthetic */ Companion f21071a = new Companion();

        private Companion() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource;", "Lkotlin/time/TimeMark;", "markNow", "()Lkotlin/time/TimeMark;", "", "toString", "()Ljava/lang/String;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/time/TimeSource$Monotonic.class */
    public static final class Monotonic implements TimeSource {
        static {
            new Monotonic();
        }

        private Monotonic() {
            MonotonicTimeSource monotonicTimeSource = MonotonicTimeSource.f21070a;
        }

        @NotNull
        public String toString() {
            return MonotonicTimeSource.f21070a.toString();
        }
    }

    static {
        Companion companion = Companion.f21071a;
    }
}
