package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/util/ByteArrayBuilder.class */
public final class ByteArrayBuilder extends OutputStream {
    public static final byte[] NO_BYTES = new byte[0];
    public final BufferRecycler _bufferRecycler;
    public byte[] _currBlock;
    public int _currBlockPtr;
    public final LinkedList<byte[]> _pastBlocks;
    public int _pastLen;

    public ByteArrayBuilder() {
        this((BufferRecycler) null);
    }

    public ByteArrayBuilder(int i) {
        this(null, i);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler) {
        this(bufferRecycler, 500);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler, int i) {
        this._pastBlocks = new LinkedList<>();
        this._bufferRecycler = bufferRecycler;
        this._currBlock = bufferRecycler == null ? new byte[i] : bufferRecycler.allocByteBuffer(2);
    }

    public final void _allocMore() {
        this._pastLen += this._currBlock.length;
        int max = Math.max(this._pastLen >> 1, 1000);
        int i = max;
        if (max > 262144) {
            i = 262144;
        }
        this._pastBlocks.add(this._currBlock);
        this._currBlock = new byte[i];
        this._currBlockPtr = 0;
    }

    public void append(int i) {
        if (this._currBlockPtr >= this._currBlock.length) {
            _allocMore();
        }
        byte[] bArr = this._currBlock;
        int i2 = this._currBlockPtr;
        this._currBlockPtr = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void appendThreeBytes(int i) {
        int i2 = this._currBlockPtr;
        byte[] bArr = this._currBlock;
        if (i2 + 2 < bArr.length) {
            this._currBlockPtr = i2 + 1;
            bArr[i2] = (byte) (i >> 16);
            int i3 = this._currBlockPtr;
            this._currBlockPtr = i3 + 1;
            bArr[i3] = (byte) (i >> 8);
            int i4 = this._currBlockPtr;
            this._currBlockPtr = i4 + 1;
            bArr[i4] = (byte) i;
            return;
        }
        append(i >> 16);
        append(i >> 8);
        append(i);
    }

    public void appendTwoBytes(int i) {
        int i2 = this._currBlockPtr;
        byte[] bArr = this._currBlock;
        if (i2 + 1 < bArr.length) {
            this._currBlockPtr = i2 + 1;
            bArr[i2] = (byte) (i >> 8);
            int i3 = this._currBlockPtr;
            this._currBlockPtr = i3 + 1;
            bArr[i3] = (byte) i;
            return;
        }
        append(i >> 8);
        append(i);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public byte[] completeAndCoalesce(int i) {
        this._currBlockPtr = i;
        return toByteArray();
    }

    public byte[] finishCurrentSegment() {
        _allocMore();
        return this._currBlock;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public byte[] getCurrentSegment() {
        return this._currBlock;
    }

    public int getCurrentSegmentLength() {
        return this._currBlockPtr;
    }

    public void release() {
        byte[] bArr;
        reset();
        BufferRecycler bufferRecycler = this._bufferRecycler;
        if (bufferRecycler != null && (bArr = this._currBlock) != null) {
            bufferRecycler.releaseByteBuffer(2, bArr);
            this._currBlock = null;
        }
    }

    public void reset() {
        this._pastLen = 0;
        this._currBlockPtr = 0;
        if (!this._pastBlocks.isEmpty()) {
            this._pastBlocks.clear();
        }
    }

    public byte[] resetAndGetFirstSegment() {
        reset();
        return this._currBlock;
    }

    public void setCurrentSegmentLength(int i) {
        this._currBlockPtr = i;
    }

    public byte[] toByteArray() {
        int i = this._pastLen + this._currBlockPtr;
        if (i == 0) {
            return NO_BYTES;
        }
        byte[] bArr = new byte[i];
        Iterator<byte[]> it = this._pastBlocks.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            byte[] next = it.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i2, length);
            i2 += length;
        }
        System.arraycopy(this._currBlock, 0, bArr, i2, this._currBlockPtr);
        int i3 = i2 + this._currBlockPtr;
        if (i3 == i) {
            if (!this._pastBlocks.isEmpty()) {
                reset();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i + ", copied " + i3 + " bytes");
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        append(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3 = i;
        while (true) {
            int min = Math.min(this._currBlock.length - this._currBlockPtr, i2);
            i3 = i3;
            int i4 = i2;
            if (min > 0) {
                System.arraycopy(bArr, i3, this._currBlock, this._currBlockPtr, min);
                i3 += min;
                this._currBlockPtr += min;
                i4 = i2 - min;
            }
            if (i4 > 0) {
                _allocMore();
                i2 = i4;
            } else {
                return;
            }
        }
    }
}
