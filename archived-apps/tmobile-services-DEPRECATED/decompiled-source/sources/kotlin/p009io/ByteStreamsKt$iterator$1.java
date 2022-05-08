package kotlin.p009io;

import java.io.BufferedInputStream;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.ByteIterator;
@Metadata(bv = {1, 0, 3}, d1 = {"��)\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u0004\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0006\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u0004\"\u0004\b\u0018\u0010\u000f¨\u0006\u0019"}, d2 = {"kotlin/io/ByteStreamsKt$iterator$1", "Lkotlin/collections/ByteIterator;", "", "hasNext", "()Z", "", "nextByte", "()B", "", "prepareNext", "()V", "finished", "Z", "getFinished", "setFinished", "(Z)V", "", "I", "getNextByte", "()I", "setNextByte", "(I)V", "nextPrepared", "getNextPrepared", "setNextPrepared", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.ByteStreamsKt$iterator$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/ByteStreamsKt$iterator$1.class */
public final class ByteStreamsKt$iterator$1 extends ByteIterator {

    /* renamed from: f */
    private int f20673f;

    /* renamed from: g */
    private boolean f20674g;

    /* renamed from: h */
    private boolean f20675h;

    /* renamed from: i */
    final /* synthetic */ BufferedInputStream f20676i;

    /* renamed from: b */
    private final void m1888b() {
        if (!this.f20674g && !this.f20675h) {
            int read = this.f20676i.read();
            this.f20673f = read;
            boolean z = true;
            this.f20674g = true;
            if (read != -1) {
                z = false;
            }
            this.f20675h = z;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        m1888b();
        return !this.f20675h;
    }

    @Override // kotlin.collections.ByteIterator
    public byte nextByte() {
        m1888b();
        if (!this.f20675h) {
            byte b = (byte) this.f20673f;
            this.f20674g = false;
            return b;
        }
        throw new NoSuchElementException("Input stream is over.");
    }
}
