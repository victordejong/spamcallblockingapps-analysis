package org.msgpack.core.buffer;

import java.lang.reflect.Constructor;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import org.msgpack.core.Preconditions;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/MessageBuffer.class */
public class MessageBuffer {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int ARRAY_BYTE_BASE_OFFSET;
    public static final String BIGENDIAN_MESSAGE_BUFFER = "org.msgpack.core.buffer.MessageBufferBE";
    public static final String DEFAULT_MESSAGE_BUFFER = "org.msgpack.core.buffer.MessageBuffer";
    public static final String UNIVERSAL_MESSAGE_BUFFER = "org.msgpack.core.buffer.MessageBufferU";
    public static final boolean isUniversalBuffer;
    public static final Constructor<?> mbArrConstructor;
    public static final Unsafe unsafe;
    public final long address;
    public final Object base;
    public final int size;

    /* JADX WARN: Can't wrap try/catch for region: R(21:137|3|4|(4:135|6|7|(17:14|140|17|(12:19|21|(2:23|24)(1:25)|26|(1:37)(1:36)|38|(9:40|144|41|42|43|44|45|149|(6:47|48|49|50|51|(1:53)(15:54|55|56|57|58|59|60|61|62|63|64|65|66|67|68))(8:69|70|71|72|73|74|75|76))|82|(4:84|(1:86)(1:87)|88|(1:90)(1:91))|138|92|150)|20|21|(0)(0)|26|(1:28)|37|38|(0)|82|(0)|138|92|150))|13|140|17|(0)|20|21|(0)(0)|26|(0)|37|38|(0)|82|(0)|138|92|150) */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x02d6: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:118:0x02d6 */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x02d9: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:118:0x02d6 */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f4  */
    static {
        /*
            Method dump skipped, instructions count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.msgpack.core.buffer.MessageBuffer.m42051clinit():void");
    }

    public MessageBuffer(Object obj, long j, int i) {
        this.base = obj;
        this.address = j;
        this.size = i;
    }

    public MessageBuffer(byte[] bArr, int i, int i2) {
        this.base = bArr;
        this.address = ARRAY_BYTE_BASE_OFFSET + i;
        this.size = i2;
    }

    public static MessageBuffer allocate(int i) {
        return wrap(new byte[i]);
    }

    public static MessageBuffer newMessageBuffer(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        try {
            return (MessageBuffer) mbArrConstructor.newInstance(bArr, Integer.valueOf(i), Integer.valueOf(i2));
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static void releaseBuffer(MessageBuffer messageBuffer) {
        if (!isUniversalBuffer && !(messageBuffer.base instanceof byte[])) {
            unsafe.freeMemory(messageBuffer.address);
        }
    }

    public static MessageBuffer wrap(byte[] bArr) {
        return newMessageBuffer(bArr, 0, bArr.length);
    }

    public static MessageBuffer wrap(byte[] bArr, int i, int i2) {
        return newMessageBuffer(bArr, i, i2);
    }

    public byte[] array() {
        return (byte[]) this.base;
    }

    public int arrayOffset() {
        return ((int) this.address) - ARRAY_BYTE_BASE_OFFSET;
    }

    public void copyTo(int i, MessageBuffer messageBuffer, int i2, int i3) {
        unsafe.copyMemory(this.base, this.address + i, messageBuffer.base, i2 + messageBuffer.address, i3);
    }

    public boolean getBoolean(int i) {
        return unsafe.getBoolean(this.base, this.address + i);
    }

    public byte getByte(int i) {
        return unsafe.getByte(this.base, this.address + i);
    }

    public void getBytes(int i, int i2, ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= i2) {
            byteBuffer.put(sliceAsByteBuffer(i, i2));
            return;
        }
        throw new BufferOverflowException();
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        unsafe.copyMemory(this.base, this.address + i, bArr, ARRAY_BYTE_BASE_OFFSET + i2, i3);
    }

    public double getDouble(int i) {
        return Double.longBitsToDouble(getLong(i));
    }

    public float getFloat(int i) {
        return Float.intBitsToFloat(getInt(i));
    }

    public int getInt(int i) {
        return Integer.reverseBytes(unsafe.getInt(this.base, this.address + i));
    }

    public long getLong(int i) {
        return Long.reverseBytes(unsafe.getLong(this.base, this.address + i));
    }

    public short getShort(int i) {
        return Short.reverseBytes(unsafe.getShort(this.base, this.address + i));
    }

    public void putBoolean(int i, boolean z) {
        unsafe.putBoolean(this.base, this.address + i, z);
    }

    public void putByte(int i, byte b) {
        unsafe.putByte(this.base, this.address + i, b);
    }

    public void putByteBuffer(int i, ByteBuffer byteBuffer, int i2) {
        if (byteBuffer.isDirect()) {
            unsafe.copyMemory((Object) null, DirectBufferAccess.getAddress(byteBuffer) + byteBuffer.position(), this.base, this.address + i, i2);
            byteBuffer.position(byteBuffer.position() + i2);
        } else if (byteBuffer.hasArray()) {
            unsafe.copyMemory(byteBuffer.array(), ARRAY_BYTE_BASE_OFFSET + byteBuffer.position(), this.base, this.address + i, i2);
            byteBuffer.position(byteBuffer.position() + i2);
        } else {
            Object obj = this.base;
            if (obj != null) {
                byteBuffer.get((byte[]) obj, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                unsafe.putByte(this.base, this.address + i, byteBuffer.get());
            }
        }
    }

    public void putBytes(int i, byte[] bArr, int i2, int i3) {
        unsafe.copyMemory(bArr, ARRAY_BYTE_BASE_OFFSET + i2, this.base, this.address + i, i3);
    }

    public void putDouble(int i, double d) {
        putLong(i, Double.doubleToRawLongBits(d));
    }

    public void putFloat(int i, float f) {
        putInt(i, Float.floatToRawIntBits(f));
    }

    public void putInt(int i, int i2) {
        unsafe.putInt(this.base, this.address + i, Integer.reverseBytes(i2));
    }

    public void putLong(int i, long j) {
        unsafe.putLong(this.base, i + this.address, Long.reverseBytes(j));
    }

    public void putShort(int i, short s) {
        unsafe.putShort(this.base, this.address + i, Short.reverseBytes(s));
    }

    public int size() {
        return this.size;
    }

    public MessageBuffer slice(int i, int i2) {
        if (i == 0 && i2 == size()) {
            return this;
        }
        Preconditions.checkArgument(i + i2 <= size());
        return new MessageBuffer(this.base, this.address + i, i2);
    }

    public ByteBuffer sliceAsByteBuffer() {
        return sliceAsByteBuffer(0, size());
    }

    public ByteBuffer sliceAsByteBuffer(int i, int i2) {
        return ByteBuffer.wrap((byte[]) this.base, (int) ((this.address - ARRAY_BYTE_BASE_OFFSET) + i), i2);
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        unsafe.copyMemory(this.base, this.address, bArr, ARRAY_BYTE_BASE_OFFSET, size());
        return bArr;
    }

    public String toHexString(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < i2; i3++) {
            if (i3 != i) {
                sb.append(" ");
            }
            sb.append(String.format("%02x", Byte.valueOf(getByte(i3))));
        }
        return sb.toString();
    }
}
