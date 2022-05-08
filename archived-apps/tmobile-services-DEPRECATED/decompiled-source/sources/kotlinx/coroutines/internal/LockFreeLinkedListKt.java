package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002*\u00020��H\u0001¢\u0006\u0004\b\u0003\u0010\u0004\"\"\u0010\u0005\u001a\u00020��8��@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b\"\u001c\u0010\f\u001a\u00020\u000b8��@\u0001X\u0081T¢\u0006\f\n\u0004\b\f\u0010\r\u0012\u0004\b\u000e\u0010\n\"\"\u0010\u000f\u001a\u00020��8��@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b\u000f\u0010\u0006\u0012\u0004\b\u0011\u0010\n\u001a\u0004\b\u0010\u0010\b\"\u001c\u0010\u0012\u001a\u00020\u000b8��@\u0001X\u0081T¢\u0006\f\n\u0004\b\u0012\u0010\r\u0012\u0004\b\u0013\u0010\n\"\u001c\u0010\u0014\u001a\u00020\u000b8��@\u0001X\u0081T¢\u0006\f\n\u0004\b\u0014\u0010\r\u0012\u0004\b\u0015\u0010\n*\n\u0010\u0017\"\u00020\u00162\u00020\u0016*\u001c\u0010\u001a\u001a\u0004\b��\u0010\u0018\"\b\u0012\u0004\u0012\u00028��0\u00192\b\u0012\u0004\u0012\u00028��0\u0019*\f\b\u0002\u0010\u001b\"\u00020\u00012\u00020\u0001*\n\u0010\u001d\"\u00020\u001c2\u00020\u001c*\u001c\u0010\u001f\u001a\u0004\b��\u0010\u0018\"\b\u0012\u0004\u0012\u00028��0\u001e2\b\u0012\u0004\u0012\u00028��0\u001e¨\u0006 "}, d2 = {"", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "unwrap", "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "CONDITION_FALSE", "Ljava/lang/Object;", "getCONDITION_FALSE", "()Ljava/lang/Object;", "getCONDITION_FALSE$annotations", "()V", "", "FAILURE", "I", "getFAILURE$annotations", "LIST_EMPTY", "getLIST_EMPTY", "getLIST_EMPTY$annotations", "SUCCESS", "getSUCCESS$annotations", "UNDECIDED", "getUNDECIDED$annotations", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;", "AbstractAtomicDesc", "T", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "AddLastDesc", "Node", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "PrepareOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "RemoveFirstDesc", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListKt.class */
public final class LockFreeLinkedListKt {
    @NotNull

    /* renamed from: a */
    private static final Object f23910a = new Symbol("CONDITION_FALSE");
    @NotNull

    /* renamed from: b */
    private static final Object f23911b = new Symbol("LIST_EMPTY");

    @NotNull
    /* renamed from: a */
    public static final Object m539a() {
        return f23910a;
    }

    @NotNull
    /* renamed from: b */
    public static final Object m538b() {
        return f23911b;
    }

    @PublishedApi
    @NotNull
    /* renamed from: c */
    public static final LockFreeLinkedListNode m537c(@NotNull Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        Removed removed = (Removed) (!(obj instanceof Removed) ? null : obj);
        if (removed != null && (lockFreeLinkedListNode2 = removed.f23943a) != null) {
            lockFreeLinkedListNode = lockFreeLinkedListNode2;
        } else if (obj != null) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        }
        return lockFreeLinkedListNode;
    }
}
