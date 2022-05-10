package com.google.protobuf;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import p131c.p161d.p367h.AbstractC6324i;
import p131c.p161d.p367h.AbstractC6327j;
import p131c.p161d.p367h.C6288d;
import p131c.p161d.p367h.C6321h1;
import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString.class */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    public static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new LiteralByteString(C6381y.f20054b);
    public static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    public static final int MIN_READ_FROM_CHUNK_SIZE = 256;
    public static final int UNSIGNED_BYTE_MASK = 255;
    public static final Comparator<ByteString> UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    public static final AbstractC7920e byteArrayCopier;
    public int hash = 0;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$BoundedByteString.class */
    public static final class BoundedByteString extends LiteralByteString {
        public static final long serialVersionUID = 1;
        public final int bytesLength;
        public final int bytesOffset;

        public BoundedByteString(byte[] bArr, int i, int i2) {
            super(bArr);
            ByteString.checkRange(i, i + i2, bArr.length);
            this.bytesOffset = i;
            this.bytesLength = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public byte byteAt(int i) {
            ByteString.checkIndex(i, size());
            return this.bytes[this.bytesOffset + i];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + i, bArr, i2, i3);
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString
        public int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[this.bytesOffset + i];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        public Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$LeafByteString.class */
    public static abstract class LeafByteString extends ByteString {
        public abstract boolean equalsRange(ByteString byteString, int i, int i2);

        @Override // com.google.protobuf.ByteString
        public final int getTreeDepth() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isBalanced() {
            return true;
        }

        @Override // com.google.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return ByteString.super.iterator2();
        }

        @Override // com.google.protobuf.ByteString
        public void writeToReverse(AbstractC6324i iVar) throws IOException {
            writeTo(iVar);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$LiteralByteString.class */
    public static class LiteralByteString extends LeafByteString {
        public static final long serialVersionUID = 1;
        public final byte[] bytes;

        public LiteralByteString(byte[] bArr) {
            if (bArr != null) {
                this.bytes = bArr;
                return;
            }
            throw null;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
        }

        @Override // com.google.protobuf.ByteString
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override // com.google.protobuf.ByteString
        public byte byteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, i, bArr, i2, i3);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int peekCachedHashCode = peekCachedHashCode();
            int peekCachedHashCode2 = literalByteString.peekCachedHashCode();
            if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
                return equalsRange(literalByteString, 0, size());
            }
            return false;
        }

        @Override // com.google.protobuf.ByteString.LeafByteString
        public final boolean equalsRange(ByteString byteString, int i, int i2) {
            if (i2 <= byteString.size()) {
                int i3 = i + i2;
                if (i3 > byteString.size()) {
                    throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + byteString.size());
                } else if (!(byteString instanceof LiteralByteString)) {
                    return byteString.substring(i, i3).equals(substring(0, i2));
                } else {
                    LiteralByteString literalByteString = (LiteralByteString) byteString;
                    byte[] bArr = this.bytes;
                    byte[] bArr2 = literalByteString.bytes;
                    int offsetIntoBytes = getOffsetIntoBytes();
                    int offsetIntoBytes2 = getOffsetIntoBytes();
                    int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i;
                    while (offsetIntoBytes2 < offsetIntoBytes + i2) {
                        if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                            return false;
                        }
                        offsetIntoBytes2++;
                        offsetIntoBytes3++;
                    }
                    return true;
                }
            } else {
                throw new IllegalArgumentException("Length too large: " + i2 + size());
            }
        }

        public int getOffsetIntoBytes() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return Utf8.m6881d(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public final AbstractC6327j newCodedInput() {
            return AbstractC6327j.m21463a(this.bytes, getOffsetIntoBytes(), size(), true);
        }

        @Override // com.google.protobuf.ByteString
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public final int partialHash(int i, int i2, int i3) {
            return C6381y.m21011a(i, this.bytes, getOffsetIntoBytes() + i2, i3);
        }

        @Override // com.google.protobuf.ByteString
        public final int partialIsValidUtf8(int i, int i2, int i3) {
            int offsetIntoBytes = getOffsetIntoBytes() + i2;
            return Utf8.m6898a(i, this.bytes, offsetIntoBytes, i3 + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString substring(int i, int i2) {
            int checkRange = ByteString.checkRange(i, i2, size());
            return checkRange == 0 ? ByteString.EMPTY : new BoundedByteString(this.bytes, getOffsetIntoBytes() + i, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        public final String toStringInternal(Charset charset) {
            return new String(this.bytes, getOffsetIntoBytes(), size(), charset);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(AbstractC6324i iVar) throws IOException {
            iVar.mo6984a(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override // com.google.protobuf.ByteString
        public final void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException {
            outputStream.write(this.bytes, getOffsetIntoBytes() + i, i2);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$a.class */
    public class C7916a extends AbstractC7918c {

        /* renamed from: a */
        public int f31095a = 0;

        /* renamed from: b */
        public final int f31096b;

        public C7916a() {
            this.f31096b = ByteString.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f31095a < this.f31096b;
        }

        @Override // com.google.protobuf.ByteString.AbstractC7921f
        public byte nextByte() {
            int i = this.f31095a;
            if (i < this.f31096b) {
                this.f31095a = i + 1;
                return ByteString.this.internalByteAt(i);
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$b.class */
    public static final class C7917b implements Comparator<ByteString> {
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Iterator, com.google.protobuf.ByteString$f] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Iterator, com.google.protobuf.ByteString$f] */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(com.google.protobuf.ByteString r4, com.google.protobuf.ByteString r5) {
            /*
                r3 = this;
                r0 = r4
                com.google.protobuf.ByteString$f r0 = r0.iterator2()
                r6 = r0
                r0 = r5
                com.google.protobuf.ByteString$f r0 = r0.iterator2()
                r7 = r0
            L_0x000b:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x003e
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x003e
                r0 = r6
                byte r0 = r0.nextByte()
                int r0 = com.google.protobuf.ByteString.access$200(r0)
                r1 = r7
                byte r1 = r1.nextByte()
                int r1 = com.google.protobuf.ByteString.access$200(r1)
                int r0 = java.lang.Integer.compare(r0, r1)
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x000b
                r0 = r8
                return r0
            L_0x003e:
                r0 = r4
                int r0 = r0.size()
                r1 = r5
                int r1 = r1.size()
                int r0 = java.lang.Integer.compare(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.ByteString.C7917b.compare(com.google.protobuf.ByteString, com.google.protobuf.ByteString):int");
        }
    }

    /* renamed from: com.google.protobuf.ByteString$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$c.class */
    public static abstract class AbstractC7918c implements AbstractC7921f {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$d.class */
    public static final class C7919d implements AbstractC7920e {
        public C7919d() {
        }

        public /* synthetic */ C7919d(C7916a aVar) {
            this();
        }

        @Override // com.google.protobuf.ByteString.AbstractC7920e
        /* renamed from: a */
        public byte[] mo7085a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$e.class */
    public interface AbstractC7920e {
        /* renamed from: a */
        byte[] mo7085a(byte[] bArr, int i, int i2);
    }

    /* renamed from: com.google.protobuf.ByteString$f */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$f.class */
    public interface AbstractC7921f extends Iterator<Byte> {
        byte nextByte();
    }

    /* renamed from: com.google.protobuf.ByteString$g */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$g.class */
    public static final class C7922g {

        /* renamed from: a */
        public final CodedOutputStream f31098a;

        /* renamed from: b */
        public final byte[] f31099b;

        public C7922g(int i) {
            byte[] bArr = new byte[i];
            this.f31099b = bArr;
            this.f31098a = CodedOutputStream.m7045c(bArr);
        }

        public /* synthetic */ C7922g(int i, C7916a aVar) {
            this(i);
        }

        /* renamed from: a */
        public ByteString m7088a() {
            this.f31098a.m7084a();
            return new LiteralByteString(this.f31099b);
        }

        /* renamed from: b */
        public CodedOutputStream m7087b() {
            return this.f31098a;
        }
    }

    /* renamed from: com.google.protobuf.ByteString$h */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$h.class */
    public static final class C7923h extends OutputStream {

        /* renamed from: a */
        public final int f31100a;

        /* renamed from: b */
        public final ArrayList<ByteString> f31101b;

        /* renamed from: c */
        public int f31102c;

        /* renamed from: d */
        public byte[] f31103d;

        /* renamed from: e */
        public int f31104e;

        public C7923h(int i) {
            if (i >= 0) {
                this.f31100a = i;
                this.f31101b = new ArrayList<>();
                this.f31103d = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        /* renamed from: a */
        public final void m7086a(int i) {
            this.f31101b.add(new LiteralByteString(this.f31103d));
            int length = this.f31102c + this.f31103d.length;
            this.f31102c = length;
            this.f31103d = new byte[Math.max(this.f31100a, Math.max(i, length >>> 1))];
            this.f31104e = 0;
        }

        public int size() {
            int i;
            int i2;
            synchronized (this) {
                i = this.f31102c;
                i2 = this.f31104e;
            }
            return i + i2;
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            synchronized (this) {
                if (this.f31104e == this.f31103d.length) {
                    m7086a(1);
                }
                byte[] bArr = this.f31103d;
                int i2 = this.f31104e;
                this.f31104e = i2 + 1;
                bArr[i2] = (byte) i;
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            synchronized (this) {
                if (i2 <= this.f31103d.length - this.f31104e) {
                    System.arraycopy(bArr, i, this.f31103d, this.f31104e, i2);
                    this.f31104e += i2;
                } else {
                    int length = this.f31103d.length - this.f31104e;
                    System.arraycopy(bArr, i, this.f31103d, this.f31104e, length);
                    int i3 = i2 - length;
                    m7086a(i3);
                    System.arraycopy(bArr, i + length, this.f31103d, 0, i3);
                    this.f31104e = i3;
                }
            }
        }
    }

    /* renamed from: com.google.protobuf.ByteString$i */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$i.class */
    public static final class C7924i implements AbstractC7920e {
        public C7924i() {
        }

        public /* synthetic */ C7924i(C7916a aVar) {
            this();
        }

        @Override // com.google.protobuf.ByteString.AbstractC7920e
        /* renamed from: a */
        public byte[] mo7085a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    static {
        byteArrayCopier = C6288d.m21669b() ? new C7924i(null) : new C7919d(null);
        UNSIGNED_LEXICOGRAPHICAL_COMPARATOR = new C7917b();
    }

    public static ByteString balancedConcat(Iterator<ByteString> it, int i) {
        ByteString byteString;
        if (i >= 1) {
            if (i == 1) {
                byteString = it.next();
            } else {
                int i2 = i >>> 1;
                byteString = balancedConcat(it, i2).concat(balancedConcat(it, i - i2));
            }
            return byteString;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static void checkIndex(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
    }

    public static int checkRange(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        } else if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        } else {
            throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
        }
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            int i2 = 0;
            Iterator<ByteString> it = iterable.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                it.next();
                i2++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        return i == 0 ? EMPTY : balancedConcat(iterable.iterator(), i);
    }

    public static ByteString copyFrom(String str, String str2) throws UnsupportedEncodingException {
        return new LiteralByteString(str.getBytes(str2));
    }

    public static ByteString copyFrom(String str, Charset charset) {
        return new LiteralByteString(str.getBytes(charset));
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int i) {
        checkRange(0, i, byteBuffer.remaining());
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return new LiteralByteString(bArr);
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString copyFrom(byte[] bArr, int i, int i2) {
        checkRange(i, i + i2, bArr.length);
        return new LiteralByteString(byteArrayCopier.mo7085a(bArr, i, i2));
    }

    public static ByteString copyFromUtf8(String str) {
        return new LiteralByteString(str.getBytes(C6381y.f20053a));
    }

    public static C7922g newCodedBuilder(int i) {
        return new C7922g(i, null);
    }

    public static C7923h newOutput() {
        return new C7923h(128);
    }

    public static C7923h newOutput(int i) {
        return new C7923h(i);
    }

    public static ByteString readChunk(InputStream inputStream, int i) throws IOException {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
            i2 += read;
        }
        if (i2 == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i2);
    }

    public static ByteString readFrom(InputStream inputStream) throws IOException {
        return readFrom(inputStream, 256, 8192);
    }

    public static ByteString readFrom(InputStream inputStream, int i) throws IOException {
        return readFrom(inputStream, i, i);
    }

    public static ByteString readFrom(InputStream inputStream, int i, int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString readChunk = readChunk(inputStream, i);
            if (readChunk == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(readChunk);
            i = Math.min(i * 2, i2);
        }
    }

    public static int toInt(byte b) {
        return b & 255;
    }

    private String truncateAndEscapeForDisplay() {
        String str;
        if (size() <= 50) {
            str = C6321h1.m21474a(this);
        } else {
            str = C6321h1.m21474a(substring(0, 47)) + "...";
        }
        return str;
    }

    public static Comparator<ByteString> unsignedLexicographicalComparator() {
        return UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    }

    public static ByteString wrap(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasArray()) {
            return new NioByteString(byteBuffer);
        }
        return wrap(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
    }

    public static ByteString wrap(byte[] bArr) {
        return new LiteralByteString(bArr);
    }

    public static ByteString wrap(byte[] bArr, int i, int i2) {
        return new BoundedByteString(bArr, i, i2);
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int i);

    public final ByteString concat(ByteString byteString) {
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - size() >= byteString.size()) {
            return RopeByteString.concatenate(this, byteString);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + byteString.size());
    }

    public abstract void copyTo(ByteBuffer byteBuffer);

    public void copyTo(byte[] bArr, int i) {
        copyTo(bArr, 0, i, size());
    }

    @Deprecated
    public final void copyTo(byte[] bArr, int i, int i2, int i3) {
        checkRange(i, i + i3, size());
        checkRange(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            copyToInternal(bArr, i, i2, i3);
        }
    }

    public abstract void copyToInternal(byte[] bArr, int i, int i2, int i3);

    public final boolean endsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(size() - byteString.size()).equals(byteString);
    }

    public abstract boolean equals(Object obj);

    public abstract int getTreeDepth();

    public final int hashCode() {
        int i = this.hash;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int partialHash = partialHash(size, 0, size);
            i2 = partialHash;
            if (partialHash == 0) {
                i2 = 1;
            }
            this.hash = i2;
        }
        return i2;
    }

    public abstract byte internalByteAt(int i);

    public abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new C7916a();
    }

    public abstract AbstractC6327j newCodedInput();

    public abstract InputStream newInput();

    public abstract int partialHash(int i, int i2, int i3);

    public abstract int partialIsValidUtf8(int i, int i2, int i3);

    public final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString byteString) {
        boolean z = false;
        if (size() >= byteString.size()) {
            z = false;
            if (substring(0, byteString.size()).equals(byteString)) {
                z = true;
            }
        }
        return z;
    }

    public final ByteString substring(int i) {
        return substring(i, size());
    }

    public abstract ByteString substring(int i, int i2);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return C6381y.f20054b;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), truncateAndEscapeForDisplay());
    }

    public final String toString(String str) throws UnsupportedEncodingException {
        try {
            return toString(Charset.forName(str));
        } catch (UnsupportedCharsetException e) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(str);
            unsupportedEncodingException.initCause(e);
            throw unsupportedEncodingException;
        }
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    public abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(C6381y.f20053a);
    }

    public abstract void writeTo(AbstractC6324i iVar) throws IOException;

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    public final void writeTo(OutputStream outputStream, int i, int i2) throws IOException {
        checkRange(i, i + i2, size());
        if (i2 > 0) {
            writeToInternal(outputStream, i, i2);
        }
    }

    public abstract void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException;

    public abstract void writeToReverse(AbstractC6324i iVar) throws IOException;
}
