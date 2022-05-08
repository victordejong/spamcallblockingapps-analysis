package org.threeten.p040bp.zone;

import com.privacystar.core.service.jobs.JobConstants;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import org.threeten.p040bp.ZoneOffset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.zone.Ser */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/Ser.class */
public final class Ser implements Externalizable {
    static final byte SZR = 1;
    static final byte ZOT = 2;
    static final byte ZOTRULE = 3;
    private static final long serialVersionUID = -8885321777449118786L;
    private Object object;
    private byte type;

    public Ser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ser(byte b, Object obj) {
        this.type = b;
        this.object = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object read(DataInput dataInput) throws IOException, ClassNotFoundException {
        return readInternal(dataInput.readByte(), dataInput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readEpochSec(DataInput dataInput) throws IOException {
        int readByte = dataInput.readByte() & 255;
        return readByte == 255 ? dataInput.readLong() : ((((readByte << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255)) * 900) - 4575744000L;
    }

    private static Object readInternal(byte b, DataInput dataInput) throws IOException, ClassNotFoundException {
        switch (b) {
            case 1:
                return StandardZoneRules.readExternal(dataInput);
            case 2:
                return ZoneOffsetTransition.readExternal(dataInput);
            case 3:
                return ZoneOffsetTransitionRule.readExternal(dataInput);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneOffset readOffset(DataInput dataInput) throws IOException {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds(readByte * JobConstants.HIGH);
    }

    private Object readResolve() {
        return this.object;
    }

    static void write(Object obj, DataOutput dataOutput) throws IOException {
        writeInternal((byte) 1, obj, dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeEpochSec(long j, DataOutput dataOutput) throws IOException {
        if (j < -4575744000L || j >= 10413792000L || j % 900 != 0) {
            dataOutput.writeByte(255);
            dataOutput.writeLong(j);
            return;
        }
        int i = (int) ((j + 4575744000L) / 900);
        dataOutput.writeByte((i >>> 16) & 255);
        dataOutput.writeByte((i >>> 8) & 255);
        dataOutput.writeByte(i & 255);
    }

    private static void writeInternal(byte b, Object obj, DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(b);
        switch (b) {
            case 1:
                ((StandardZoneRules) obj).writeExternal(dataOutput);
                return;
            case 2:
                ((ZoneOffsetTransition) obj).writeExternal(dataOutput);
                return;
            case 3:
                ((ZoneOffsetTransitionRule) obj).writeExternal(dataOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeOffset(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i = totalSeconds % JobConstants.HIGH == 0 ? totalSeconds / JobConstants.HIGH : 127;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.type = objectInput.readByte();
        this.object = readInternal(this.type, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        writeInternal(this.type, this.object, objectOutput);
    }
}
