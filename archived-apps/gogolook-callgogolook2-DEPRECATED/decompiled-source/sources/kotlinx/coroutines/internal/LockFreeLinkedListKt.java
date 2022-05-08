package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14986p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n��\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012*\u00020\u0001H\u0001\"\u001c\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078��X\u0081T¢\u0006\b\n��\u0012\u0004\b\b\u0010\u0003\"\u001c\u0010\t\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\u000b\u0010\u0005\"\u0016\u0010\f\u001a\u00020\u00078��X\u0081T¢\u0006\b\n��\u0012\u0004\b\r\u0010\u0003\"\u0016\u0010\u000e\u001a\u00020\u00078��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u000f\u0010\u0003*\n\u0010\u0013\"\u00020\u00142\u00020\u0014*\u001c\u0010\u0015\u001a\u0004\b��\u0010\u0016\"\b\u0012\u0004\u0012\u0002H\u00160\u00172\b\u0012\u0004\u0012\u0002H\u00160\u0017*\f\b\u0002\u0010\u0018\"\u00020\u00112\u00020\u0011*\n\u0010\u0019\"\u00020\u001a2\u00020\u001a*\u001c\u0010\u001b\u001a\u0004\b��\u0010\u0016\"\b\u0012\u0004\u0012\u0002H\u00160\u001c2\b\u0012\u0004\u0012\u0002H\u00160\u001c¨\u0006\u001d"}, m815d2 = {"CONDITION_FALSE", "", "CONDITION_FALSE$annotations", "()V", "getCONDITION_FALSE", "()Ljava/lang/Object;", "FAILURE", "", "FAILURE$annotations", "LIST_EMPTY", "LIST_EMPTY$annotations", "getLIST_EMPTY", "SUCCESS", "SUCCESS$annotations", "UNDECIDED", "UNDECIDED$annotations", "unwrap", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "AbstractAtomicDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;", "AddLastDesc", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Node", "PrepareOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "RemoveFirstDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListKt.class */
public final class LockFreeLinkedListKt {
    public static final int FAILURE = 2;
    public static final int SUCCESS = 1;
    public static final int UNDECIDED = 0;
    public static final Object CONDITION_FALSE = new Symbol("CONDITION_FALSE");
    public static final Object LIST_EMPTY = new Symbol("LIST_EMPTY");

    public static /* synthetic */ void CONDITION_FALSE$annotations() {
    }

    public static /* synthetic */ void FAILURE$annotations() {
    }

    public static /* synthetic */ void LIST_EMPTY$annotations() {
    }

    public static /* synthetic */ void SUCCESS$annotations() {
    }

    public static /* synthetic */ void UNDECIDED$annotations() {
    }

    public static final Object getCONDITION_FALSE() {
        return CONDITION_FALSE;
    }

    public static final Object getLIST_EMPTY() {
        return LIST_EMPTY;
    }

    public static final LockFreeLinkedListNode unwrap(Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        Removed removed = (Removed) (!(obj instanceof Removed) ? null : obj);
        if (removed != null && (lockFreeLinkedListNode2 = removed.ref) != null) {
            lockFreeLinkedListNode = lockFreeLinkedListNode2;
        } else if (obj != null) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
        } else {
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        }
        return lockFreeLinkedListNode;
    }
}
