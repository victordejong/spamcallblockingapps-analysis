package com.facebook.stetho.websocket;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/websocket/Frame.class */
public class Frame {
    public static final byte OPCODE_BINARY_FRAME = 2;
    public static final byte OPCODE_CONNECTION_CLOSE = 8;
    public static final byte OPCODE_CONNECTION_PING = 9;
    public static final byte OPCODE_CONNECTION_PONG = 10;
    public static final byte OPCODE_TEXT_FRAME = 1;
    public boolean fin;
    public boolean hasMask;
    public byte[] maskingKey;
    public byte opcode;
    public byte[] payloadData;
    public long payloadLen;
    public boolean rsv1;
    public boolean rsv2;
    public boolean rsv3;

    private void decodeFirstByte(byte b) {
        boolean z = false;
        this.fin = (b & 128) != 0;
        this.rsv1 = (b & 64) != 0;
        this.rsv2 = (b & 32) != 0;
        if ((b & 16) != 0) {
            z = true;
        }
        this.rsv3 = z;
        this.opcode = (byte) (b & 15);
    }

    private long decodeLength(byte b, InputStream inputStream) throws IOException {
        if (b <= 125) {
            return b;
        }
        if (b == 126) {
            return ((readByteOrThrow(inputStream) & 255) << 8) | (readByteOrThrow(inputStream) & 255);
        }
        if (b == Byte.MAX_VALUE) {
            long j = 0;
            for (int i = 0; i < 8; i++) {
                j = (j | (readByteOrThrow(inputStream) & 255)) << 8;
            }
            return j;
        }
        throw new IOException("Unexpected length byte: " + ((int) b));
    }

    private static byte[] decodeMaskingKey(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        readBytesOrThrow(inputStream, bArr, 0, bArr.length);
        return bArr;
    }

    private byte encodeFirstByte() {
        byte b = this.fin ? (byte) 128 : (byte) 0;
        byte b2 = b;
        if (this.rsv1) {
            b2 = (byte) (b | 64);
        }
        byte b3 = b2;
        if (this.rsv2) {
            b3 = (byte) (b2 | 32);
        }
        byte b4 = b3;
        if (this.rsv3) {
            b4 = (byte) (b3 | 16);
        }
        return (byte) (b4 | (this.opcode & 15));
    }

    private static byte[] encodeLength(long j) {
        return j <= 125 ? new byte[]{(byte) j} : j <= 65535 ? new byte[]{126, (byte) ((j >> 8) & 255), (byte) (j & 255)} : new byte[]{Byte.MAX_VALUE, (byte) ((j >> 56) & 255), (byte) ((j >> 48) & 255), (byte) ((j >> 40) & 255), (byte) ((j >> 32) & 255), (byte) ((j >> 24) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 8) & 255), (byte) (j & 255)};
    }

    private static byte readByteOrThrow(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return (byte) read;
        }
        throw new EOFException();
    }

    private static void readBytesOrThrow(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 -= read;
            i += read;
        }
    }

    public void readFrom(BufferedInputStream bufferedInputStream) throws IOException {
        decodeFirstByte(readByteOrThrow(bufferedInputStream));
        byte readByteOrThrow = readByteOrThrow(bufferedInputStream);
        this.hasMask = (readByteOrThrow & 128) != 0;
        this.payloadLen = decodeLength((byte) (readByteOrThrow & (-129)), bufferedInputStream);
        this.maskingKey = this.hasMask ? decodeMaskingKey(bufferedInputStream) : null;
        this.payloadData = new byte[(int) this.payloadLen];
        readBytesOrThrow(bufferedInputStream, this.payloadData, 0, (int) this.payloadLen);
        MaskingHelper.unmask(this.maskingKey, this.payloadData, 0, (int) this.payloadLen);
    }

    public void writeTo(BufferedOutputStream bufferedOutputStream) throws IOException {
        bufferedOutputStream.write(encodeFirstByte());
        byte[] encodeLength = encodeLength(this.payloadLen);
        if (this.hasMask) {
            encodeLength[0] = (byte) (encodeLength[0] | 128);
        }
        bufferedOutputStream.write(encodeLength, 0, encodeLength.length);
        if (this.hasMask) {
            throw new UnsupportedOperationException("Writing masked data not implemented");
        }
        bufferedOutputStream.write(this.payloadData, 0, (int) this.payloadLen);
    }
}
