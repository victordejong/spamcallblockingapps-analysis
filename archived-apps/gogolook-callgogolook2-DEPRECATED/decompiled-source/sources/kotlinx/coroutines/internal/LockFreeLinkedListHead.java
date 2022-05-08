package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J-\u0010\u0007\u001a\u00020\b\"\u000e\b��\u0010\t\u0018\u0001*\u00060\u0001j\u0002`\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\b0\fH\u0086\bJ\u0010\u0010\r\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u0004J\r\u0010\u000f\u001a\u00020\bH��¢\u0006\u0002\b\u0010R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005¨\u0006\u0011"}, m815d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "()V", "isEmpty", "", "()Z", "isRemoved", "forEach", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/Node;", "block", "Lkotlin/Function1;", "nextIfRemoved", "remove", "validate", "validate$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListHead.class */
public class LockFreeLinkedListHead extends LockFreeLinkedListNode {
    public final /* synthetic */ <T extends LockFreeLinkedListNode> void forEach(AbstractC15118l<? super T, C14989s> lVar) {
        Object next = getNext();
        if (next == null) {
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        } else if (!C15149k.m384a((LockFreeLinkedListNode) next, this)) {
            C15149k.m385a(3, ExifInterface.GPS_DIRECTION_TRUE);
            throw null;
        }
    }

    public final boolean isEmpty() {
        return getNext() == this;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public boolean isRemoved() {
        return false;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public LockFreeLinkedListNode nextIfRemoved() {
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final boolean remove() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    public final void validate$kotlinx_coroutines_core() {
        Object next = getNext();
        if (next != null) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = this;
            while (!C15149k.m384a(lockFreeLinkedListNode, this)) {
                LockFreeLinkedListNode nextNode = lockFreeLinkedListNode.getNextNode();
                lockFreeLinkedListNode.validateNode$kotlinx_coroutines_core(lockFreeLinkedListNode2, nextNode);
                lockFreeLinkedListNode2 = lockFreeLinkedListNode;
                lockFreeLinkedListNode = nextNode;
            }
            Object next2 = getNext();
            if (next2 != null) {
                validateNode$kotlinx_coroutines_core(lockFreeLinkedListNode2, (LockFreeLinkedListNode) next2);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }
}
