package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aG\u0010\u0006\u001a\u00028��\"\u0004\b��\u0010��2\u001f\b\u0004\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0002\b\u0004H\u0086Hø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001aK\u0010\u000f\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\t\u001a\u00020\b2\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001H\u0007ø\u0001��ø\u0001��¢\u0006\u0004\b\r\u0010\u000e\"\"\u0010\u0010\u001a\u00020\u000b8��@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013\"\"\u0010\u0016\u001a\u00020\u000b8��@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u0012\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0017\u0010\u0013\"\u001c\u0010\u0019\u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0011\u0012\u0004\b\u001a\u0010\u0015\"\u001c\u0010\u001b\u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0011\u0012\u0004\b\u001c\u0010\u0015\"\u001c\u0010\u001e\u001a\u00020\u001d8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u0012\u0004\b \u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"R", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "builder", "select", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "timeout", "Lkotlin/coroutines/Continuation;", "", "block", "onTimeout-0lHKgQg", "(Lkotlinx/coroutines/selects/SelectBuilder;DLkotlin/jvm/functions/Function1;)V", "onTimeout", "ALREADY_SELECTED", "Ljava/lang/Object;", "getALREADY_SELECTED", "()Ljava/lang/Object;", "getALREADY_SELECTED$annotations", "()V", "NOT_SELECTED", "getNOT_SELECTED", "getNOT_SELECTED$annotations", "RESUMED", "getRESUMED$annotations", "UNDECIDED", "getUNDECIDED$annotations", "Lkotlinx/coroutines/selects/SeqNumber;", "selectOpSequenceNumber", "Lkotlinx/coroutines/selects/SeqNumber;", "getSelectOpSequenceNumber$annotations", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectKt.class */
public final class SelectKt {
    @NotNull

    /* renamed from: a */
    private static final Object f24029a = new Symbol("NOT_SELECTED");
    @NotNull

    /* renamed from: b */
    private static final Object f24030b = new Symbol("ALREADY_SELECTED");

    /* renamed from: c */
    private static final Object f24031c = new Symbol("UNDECIDED");

    /* renamed from: d */
    private static final Object f24032d = new Symbol("RESUMED");

    /* renamed from: e */
    private static final SeqNumber f24033e = new SeqNumber();

    @NotNull
    /* renamed from: d */
    public static final Object m306d() {
        return f24030b;
    }

    @NotNull
    /* renamed from: e */
    public static final Object m305e() {
        return f24029a;
    }
}
