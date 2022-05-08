package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.p018io.ByteOrderMark;
/* renamed from: org.apache.commons.io.input.BOMInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/BOMInputStream.class */
public class BOMInputStream extends ProxyInputStream {
    private static final Comparator<ByteOrderMark> ByteOrderMarkLengthComparator = new Comparator<ByteOrderMark>() { // from class: org.apache.commons.io.input.BOMInputStream.1
        public int compare(ByteOrderMark byteOrderMark, ByteOrderMark byteOrderMark2) {
            int length = byteOrderMark.length();
            int length2 = byteOrderMark2.length();
            if (length > length2) {
                return -1;
            }
            return length2 > length ? 1 : 0;
        }
    };
    private final List<ByteOrderMark> boms;
    private ByteOrderMark byteOrderMark;
    private int fbIndex;
    private int fbLength;
    private int[] firstBytes;
    private final boolean include;
    private int markFbIndex;
    private boolean markedAtStart;

    public BOMInputStream(InputStream inputStream) {
        this(inputStream, false, ByteOrderMark.UTF_8);
    }

    public BOMInputStream(InputStream inputStream, boolean z) {
        this(inputStream, z, ByteOrderMark.UTF_8);
    }

    public BOMInputStream(InputStream inputStream, boolean z, ByteOrderMark... byteOrderMarkArr) {
        super(inputStream);
        if (byteOrderMarkArr == null || byteOrderMarkArr.length == 0) {
            throw new IllegalArgumentException("No BOMs specified");
        }
        this.include = z;
        Arrays.sort(byteOrderMarkArr, ByteOrderMarkLengthComparator);
        this.boms = Arrays.asList(byteOrderMarkArr);
    }

    public BOMInputStream(InputStream inputStream, ByteOrderMark... byteOrderMarkArr) {
        this(inputStream, false, byteOrderMarkArr);
    }

    private ByteOrderMark find() {
        for (ByteOrderMark byteOrderMark : this.boms) {
            if (matches(byteOrderMark)) {
                return byteOrderMark;
            }
        }
        return null;
    }

    private boolean matches(ByteOrderMark byteOrderMark) {
        for (int i = 0; i < byteOrderMark.length(); i++) {
            if (byteOrderMark.get(i) != this.firstBytes[i]) {
                return false;
            }
        }
        return true;
    }

    private int readFirstBytes() throws IOException {
        int i;
        getBOM();
        if (this.fbIndex < this.fbLength) {
            int[] iArr = this.firstBytes;
            int i2 = this.fbIndex;
            this.fbIndex = i2 + 1;
            i = iArr[i2];
        } else {
            i = -1;
        }
        return i;
    }

    public ByteOrderMark getBOM() throws IOException {
        if (this.firstBytes == null) {
            this.fbLength = 0;
            this.firstBytes = new int[this.boms.get(0).length()];
            for (int i = 0; i < this.firstBytes.length; i++) {
                this.firstBytes[i] = this.in.read();
                this.fbLength++;
                if (this.firstBytes[i] < 0) {
                    break;
                }
            }
            this.byteOrderMark = find();
            if (this.byteOrderMark != null && !this.include) {
                if (this.byteOrderMark.length() < this.firstBytes.length) {
                    this.fbIndex = this.byteOrderMark.length();
                } else {
                    this.fbLength = 0;
                }
            }
        }
        return this.byteOrderMark;
    }

    public String getBOMCharsetName() throws IOException {
        getBOM();
        return this.byteOrderMark == null ? null : this.byteOrderMark.getCharsetName();
    }

    public boolean hasBOM() throws IOException {
        return getBOM() != null;
    }

    public boolean hasBOM(ByteOrderMark byteOrderMark) throws IOException {
        if (!this.boms.contains(byteOrderMark)) {
            throw new IllegalArgumentException("Stream not configure to detect " + byteOrderMark);
        }
        return this.byteOrderMark != null && getBOM().equals(byteOrderMark);
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.markFbIndex = this.fbIndex;
            this.markedAtStart = this.firstBytes == null;
            this.in.mark(i);
        }
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int readFirstBytes = readFirstBytes();
        if (readFirstBytes < 0) {
            readFirstBytes = this.in.read();
        }
        return readFirstBytes;
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        int i4 = 0;
        int i5 = i2;
        int i6 = i;
        while (i5 > 0 && i3 >= 0) {
            int readFirstBytes = readFirstBytes();
            i3 = readFirstBytes;
            if (readFirstBytes >= 0) {
                bArr[i6] = (byte) (readFirstBytes & 255);
                i5--;
                i4++;
                i6++;
                i3 = readFirstBytes;
            }
        }
        int read = this.in.read(bArr, i6, i5);
        if (read >= 0) {
            i4 += read;
        } else if (i4 <= 0) {
            i4 = -1;
        }
        return i4;
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.fbIndex = this.markFbIndex;
            if (this.markedAtStart) {
                this.firstBytes = null;
            }
            this.in.reset();
        }
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        int i = 0;
        while (true) {
            j2 = i;
            if (j <= j2 || readFirstBytes() < 0) {
                break;
            }
            i++;
        }
        return this.in.skip(j - j2) + j2;
    }
}
