package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\u001a\u0017\u0010\u0001\u001a\u0004\u0018\u00010��*\u0004\u0018\u00010��H��¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0017\u0010\u0003\u001a\u0004\u0018\u00010��*\u0004\u0018\u00010��H��¢\u0006\u0004\b\u0003\u0010\u0002\"\u001c\u0010\u0005\u001a\u00020\u00048\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b\"\u001c\u0010\t\u001a\u00020\u00048\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\t\u0010\u0006\u0012\u0004\b\n\u0010\b\"\u001c\u0010\u000b\u001a\u00020\u00048��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u0012\u0004\b\f\u0010\b\"\u001c\u0010\u000e\u001a\u00020\r8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u0012\u0004\b\u0010\u0010\b\"\u001c\u0010\u0011\u001a\u00020\r8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u000f\u0012\u0004\b\u0012\u0010\b\"\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015\"\u001c\u0010\u0017\u001a\u00020\u00048\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0006\u0012\u0004\b\u0018\u0010\b\"\u001c\u0010\u0019\u001a\u00020\u00048\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0006\u0012\u0004\b\u001a\u0010\b\"\u0016\u0010\u001b\u001a\u00020\u00138\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0015¨\u0006\u001c"}, d2 = {"", "boxIncomplete", "(Ljava/lang/Object;)Ljava/lang/Object;", "unboxState", "Lkotlinx/coroutines/internal/Symbol;", "COMPLETING_ALREADY", "Lkotlinx/coroutines/internal/Symbol;", "getCOMPLETING_ALREADY$annotations", "()V", "COMPLETING_RETRY", "getCOMPLETING_RETRY$annotations", "COMPLETING_WAITING_CHILDREN", "getCOMPLETING_WAITING_CHILDREN$annotations", "Lkotlinx/coroutines/Empty;", "EMPTY_ACTIVE", "Lkotlinx/coroutines/Empty;", "getEMPTY_ACTIVE$annotations", "EMPTY_NEW", "getEMPTY_NEW$annotations", "", "FALSE", "I", "RETRY", "SEALED", "getSEALED$annotations", "TOO_LATE_TO_CANCEL", "getTOO_LATE_TO_CANCEL$annotations", "TRUE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobSupportKt.class */
public final class JobSupportKt {

    /* renamed from: a */
    private static final Symbol f21222a = new Symbol("COMPLETING_ALREADY");
    @JvmField
    @NotNull

    /* renamed from: b */
    public static final Symbol f21223b = new Symbol("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c */
    private static final Symbol f21224c = new Symbol("COMPLETING_RETRY");

    /* renamed from: d */
    private static final Symbol f21225d = new Symbol("TOO_LATE_TO_CANCEL");

    /* renamed from: e */
    private static final Symbol f21226e = new Symbol("SEALED");

    /* renamed from: f */
    private static final Empty f21227f = new Empty(false);

    /* renamed from: g */
    private static final Empty f21228g = new Empty(true);

    @Nullable
    /* renamed from: g */
    public static final Object m1128g(@Nullable Object obj) {
        Object obj2 = obj;
        if (obj instanceof Incomplete) {
            obj2 = new IncompleteStateBox((Incomplete) obj);
        }
        return obj2;
    }

    @Nullable
    /* renamed from: h */
    public static final Object m1127h(@Nullable Object obj) {
        IncompleteStateBox incompleteStateBox = (IncompleteStateBox) (!(obj instanceof IncompleteStateBox) ? null : obj);
        Incomplete incomplete = obj;
        if (incompleteStateBox != null) {
            Incomplete incomplete2 = incompleteStateBox.f21190a;
            incomplete = obj;
            if (incomplete2 != null) {
                incomplete = incomplete2;
            }
        }
        return incomplete;
    }
}
