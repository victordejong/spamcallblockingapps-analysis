package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p131c.p161d.p367h.AbstractC6324i;
import p131c.p161d.p367h.AbstractC6327j;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString.class */
public final class RopeByteString extends ByteString {
    public static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT};
    public static final long serialVersionUID = 1;
    public final ByteString left;
    public final int leftLength;
    public final ByteString right;
    public final int totalLength;
    public final int treeDepth;

    /* renamed from: com.google.protobuf.RopeByteString$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$a.class */
    public class C7955a extends ByteString.AbstractC7918c {

        /* renamed from: a */
        public final C7957c f31142a;

        /* renamed from: b */
        public ByteString.AbstractC7921f f31143b = m6913a();

        public C7955a() {
            this.f31142a = new C7957c(RopeByteString.this, null);
        }

        /* renamed from: a */
        public final ByteString.AbstractC7921f m6913a() {
            return this.f31142a.hasNext() ? this.f31142a.next().iterator2() : null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f31143b != null;
        }

        @Override // com.google.protobuf.ByteString.AbstractC7921f
        public byte nextByte() {
            ByteString.AbstractC7921f fVar = this.f31143b;
            if (fVar != null) {
                byte nextByte = fVar.nextByte();
                if (!this.f31143b.hasNext()) {
                    this.f31143b = m6913a();
                }
                return nextByte;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: com.google.protobuf.RopeByteString$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$b.class */
    public static class C7956b {

        /* renamed from: a */
        public final ArrayDeque<ByteString> f31145a;

        public C7956b() {
            this.f31145a = new ArrayDeque<>();
        }

        public /* synthetic */ C7956b(C7955a aVar) {
            this();
        }

        /* renamed from: a */
        public final int m6912a(int i) {
            int binarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i);
            int i2 = binarySearch;
            if (binarySearch < 0) {
                i2 = (-(binarySearch + 1)) - 1;
            }
            return i2;
        }

        /* renamed from: a */
        public final ByteString m6910a(ByteString byteString, ByteString byteString2) {
            m6911a(byteString);
            m6911a(byteString2);
            ByteString pop = this.f31145a.pop();
            while (!this.f31145a.isEmpty()) {
                pop = new RopeByteString(this.f31145a.pop(), pop, null);
            }
            return pop;
        }

        /* renamed from: a */
        public final void m6911a(ByteString byteString) {
            if (byteString.isBalanced()) {
                m6908b(byteString);
            } else if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                m6911a(ropeByteString.left);
                m6911a(ropeByteString.right);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        /* renamed from: b */
        public final void m6908b(ByteString byteString) {
            int a = m6912a(byteString.size());
            int minLength = RopeByteString.minLength(a + 1);
            if (this.f31145a.isEmpty() || this.f31145a.peek().size() >= minLength) {
                this.f31145a.push(byteString);
                return;
            }
            int minLength2 = RopeByteString.minLength(a);
            ByteString pop = this.f31145a.pop();
            while (!this.f31145a.isEmpty() && this.f31145a.peek().size() < minLength2) {
                pop = new RopeByteString(this.f31145a.pop(), pop, null);
            }
            RopeByteString ropeByteString = new RopeByteString(pop, byteString, null);
            while (!this.f31145a.isEmpty()) {
                if (this.f31145a.peek().size() >= RopeByteString.minLength(m6912a(ropeByteString.size()) + 1)) {
                    break;
                }
                ropeByteString = new RopeByteString(this.f31145a.pop(), ropeByteString, null);
            }
            this.f31145a.push(ropeByteString);
        }
    }

    /* renamed from: com.google.protobuf.RopeByteString$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$c.class */
    public static final class C7957c implements Iterator<ByteString.LeafByteString> {

        /* renamed from: a */
        public final ArrayDeque<RopeByteString> f31146a;

        /* renamed from: b */
        public ByteString.LeafByteString f31147b;

        public C7957c(ByteString byteString) {
            if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
                this.f31146a = arrayDeque;
                arrayDeque.push(ropeByteString);
                this.f31147b = m6906a(ropeByteString.left);
                return;
            }
            this.f31146a = null;
            this.f31147b = (ByteString.LeafByteString) byteString;
        }

        public /* synthetic */ C7957c(ByteString byteString, C7955a aVar) {
            this(byteString);
        }

        /* renamed from: a */
        public final ByteString.LeafByteString m6907a() {
            ByteString.LeafByteString a;
            do {
                ArrayDeque<RopeByteString> arrayDeque = this.f31146a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                a = m6906a(this.f31146a.pop().right);
            } while (a.isEmpty());
            return a;
        }

        /* renamed from: a */
        public final ByteString.LeafByteString m6906a(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.f31146a.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (ByteString.LeafByteString) byteString;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f31147b != null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.f31147b;
            if (leafByteString != null) {
                this.f31147b = m6907a();
                return leafByteString;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.RopeByteString$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$d.class */
    public class C7958d extends InputStream {

        /* renamed from: a */
        public C7957c f31148a;

        /* renamed from: b */
        public ByteString.LeafByteString f31149b;

        /* renamed from: c */
        public int f31150c;

        /* renamed from: d */
        public int f31151d;

        /* renamed from: e */
        public int f31152e;

        /* renamed from: f */
        public int f31153f;

        public C7958d() {
            m6904b();
        }

        /* renamed from: a */
        public final void m6905a() {
            if (this.f31149b != null) {
                int i = this.f31151d;
                int i2 = this.f31150c;
                if (i == i2) {
                    this.f31152e += i2;
                    this.f31151d = 0;
                    if (this.f31148a.hasNext()) {
                        ByteString.LeafByteString next = this.f31148a.next();
                        this.f31149b = next;
                        this.f31150c = next.size();
                        return;
                    }
                    this.f31149b = null;
                    this.f31150c = 0;
                }
            }
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return RopeByteString.this.size() - (this.f31152e + this.f31151d);
        }

        /* renamed from: b */
        public final int m6903b(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (i3 > 0) {
                m6905a();
                if (this.f31149b == null) {
                    break;
                }
                int min = Math.min(this.f31150c - this.f31151d, i3);
                i = i;
                if (bArr != null) {
                    this.f31149b.copyTo(bArr, this.f31151d, i, min);
                    i += min;
                }
                this.f31151d += min;
                i3 -= min;
            }
            return i2 - i3;
        }

        /* renamed from: b */
        public final void m6904b() {
            C7957c cVar = new C7957c(RopeByteString.this, null);
            this.f31148a = cVar;
            ByteString.LeafByteString next = cVar.next();
            this.f31149b = next;
            this.f31150c = next.size();
            this.f31151d = 0;
            this.f31152e = 0;
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f31153f = this.f31152e + this.f31151d;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            m6905a();
            ByteString.LeafByteString leafByteString = this.f31149b;
            if (leafByteString == null) {
                return -1;
            }
            int i = this.f31151d;
            this.f31151d = i + 1;
            return leafByteString.byteAt(i) & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (bArr == null) {
                throw null;
            } else if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            } else {
                int b = m6903b(bArr, i, i2);
                int i3 = b;
                if (b == 0) {
                    i3 = -1;
                }
                return i3;
            }
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                m6904b();
                m6903b(null, 0, this.f31153f);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v2 */
        @Override // java.io.InputStream
        public long skip(long j) {
            if (j >= 0) {
                long j2 = j;
                if (j > 2147483647L) {
                    j2 = 2147483647;
                }
                return m6903b(null, 0, (int) j2);
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public RopeByteString(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    public /* synthetic */ RopeByteString(ByteString byteString, ByteString byteString2, C7955a aVar) {
        this(byteString, byteString2);
    }

    public static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return concatenateBytes(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.right.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.left, concatenateBytes(ropeByteString.right, byteString2));
            } else if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            }
        }
        return size >= minLength(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1) ? new RopeByteString(byteString, byteString2) : new C7956b(null).m6910a(byteString, byteString2);
    }

    public static ByteString concatenateBytes(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean equalsFragments(ByteString byteString) {
        C7957c cVar = new C7957c(this, null);
        ByteString.LeafByteString next = cVar.next();
        C7957c cVar2 = new C7957c(byteString, null);
        ByteString.LeafByteString next2 = cVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int min = Math.min(size, size2);
            if (!(i == 0 ? next.equalsRange(next2, i2, min) : next2.equalsRange(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.totalLength;
            if (i3 < i4) {
                if (min == size) {
                    i = 0;
                    next = cVar.next();
                } else {
                    i += min;
                    next = next;
                }
                if (min == size2) {
                    next2 = cVar2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    public static int minLength(int i) {
        int[] iArr = minLengthByDepth;
        return i >= iArr.length ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : iArr[i];
    }

    public static RopeByteString newInstanceForTest(ByteString byteString, ByteString byteString2) {
        return new RopeByteString(byteString, byteString2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        C7957c cVar = new C7957c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i) {
        ByteString.checkIndex(i, this.totalLength);
        return internalByteAt(i);
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        this.left.copyTo(byteBuffer);
        this.right.copyTo(byteBuffer);
    }

    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.leftLength;
        if (i + i3 <= i4) {
            this.left.copyToInternal(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.right.copyToInternal(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.left.copyToInternal(bArr, i, i2, i5);
            this.right.copyToInternal(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int peekCachedHashCode = peekCachedHashCode();
        int peekCachedHashCode2 = byteString.peekCachedHashCode();
        if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
            return equalsFragments(byteString);
        }
        return false;
    }

    @Override // com.google.protobuf.ByteString
    public int getTreeDepth() {
        return this.treeDepth;
    }

    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int i) {
        int i2 = this.leftLength;
        return i < i2 ? this.left.internalByteAt(i) : this.right.internalByteAt(i - i2);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isBalanced() {
        return this.totalLength >= minLength(this.treeDepth);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        boolean z = false;
        int partialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        if (byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0) {
            z = true;
        }
        return z;
    }

    @Override // com.google.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new C7955a();
    }

    @Override // com.google.protobuf.ByteString
    public AbstractC6327j newCodedInput() {
        return AbstractC6327j.m21468a(new C7958d());
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new C7958d();
    }

    @Override // com.google.protobuf.ByteString
    public int partialHash(int i, int i2, int i3) {
        int i4 = this.leftLength;
        if (i2 + i3 <= i4) {
            return this.left.partialHash(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.right.partialHash(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.right.partialHash(this.left.partialHash(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int i, int i2, int i3) {
        int i4 = this.leftLength;
        if (i2 + i3 <= i4) {
            return this.left.partialIsValidUtf8(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.right.partialIsValidUtf8(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i, int i2) {
        int checkRange = ByteString.checkRange(i, i2, this.totalLength);
        if (checkRange == 0) {
            return ByteString.EMPTY;
        }
        if (checkRange == this.totalLength) {
            return this;
        }
        int i3 = this.leftLength;
        return i2 <= i3 ? this.left.substring(i, i2) : i >= i3 ? this.right.substring(i - i3, i2 - i3) : new RopeByteString(this.left.substring(i), this.right.substring(0, i2 - this.leftLength));
    }

    @Override // com.google.protobuf.ByteString
    public String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    public Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(AbstractC6324i iVar) throws IOException {
        this.left.writeTo(iVar);
        this.right.writeTo(iVar);
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    @Override // com.google.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = this.leftLength;
        if (i + i2 <= i3) {
            this.left.writeToInternal(outputStream, i, i2);
        } else if (i >= i3) {
            this.right.writeToInternal(outputStream, i - i3, i2);
        } else {
            int i4 = i3 - i;
            this.left.writeToInternal(outputStream, i, i4);
            this.right.writeToInternal(outputStream, 0, i2 - i4);
        }
    }

    @Override // com.google.protobuf.ByteString
    public void writeToReverse(AbstractC6324i iVar) throws IOException {
        this.right.writeToReverse(iVar);
        this.left.writeToReverse(iVar);
    }
}
