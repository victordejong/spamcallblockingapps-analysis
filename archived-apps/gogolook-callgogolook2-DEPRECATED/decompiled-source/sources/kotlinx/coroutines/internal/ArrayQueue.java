package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.mopub.common.AdType;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p632u.C15011h;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0010\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028��¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u00020\u000eH\u0002J\r\u0010\u0013\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010\u0014R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m815d2 = {"Lkotlinx/coroutines/internal/ArrayQueue;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "elements", "", "[Ljava/lang/Object;", TtmlNode.TAG_HEAD, "", "isEmpty", "", "()Z", "tail", "addLast", "", "element", "(Ljava/lang/Object;)V", AdType.CLEAR, "ensureCapacity", "removeFirstOrNull", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ArrayQueue.class */
public class ArrayQueue<T> {
    public Object[] elements = new Object[16];
    public int head;
    public int tail;

    private final void ensureCapacity() {
        Object[] objArr = this.elements;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        C15011h.m599a(objArr, objArr2, 0, this.head, 0, 10, null);
        Object[] objArr3 = this.elements;
        int length2 = objArr3.length;
        int i = this.head;
        C15011h.m599a(objArr3, objArr2, length2 - i, 0, i, 4, null);
        this.elements = objArr2;
        this.head = 0;
        this.tail = length;
    }

    public final void addLast(T t) {
        Object[] objArr = this.elements;
        int i = this.tail;
        objArr[i] = t;
        this.tail = (objArr.length - 1) & (i + 1);
        if (this.tail == this.head) {
            ensureCapacity();
        }
    }

    public final void clear() {
        this.head = 0;
        this.tail = 0;
        this.elements = new Object[this.elements.length];
    }

    public final boolean isEmpty() {
        return this.head == this.tail;
    }

    public final T removeFirstOrNull() {
        int i = this.head;
        if (i == this.tail) {
            return null;
        }
        Object[] objArr = this.elements;
        T t = (T) objArr[i];
        objArr[i] = null;
        this.head = (i + 1) & (objArr.length - 1);
        if (t != null) {
            return t;
        }
        throw new C14986p("null cannot be cast to non-null type T");
    }
}
