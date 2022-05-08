package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: androidx.media2.exoplayer.external.metadata.scte35.SpliceInsertCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    };
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice.class */
    public static final class ComponentSplice {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        public ComponentSplice(int i, long j, long j2) {
            this.componentTag = i;
            this.componentSplicePts = j;
            this.componentSplicePlaybackPositionUs = j2;
        }

        public static ComponentSplice createFromParcel(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.componentSplicePts);
            parcel.writeLong(this.componentSplicePlaybackPositionUs);
        }
    }

    public SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<ComponentSplice> list, boolean z5, long j4, int i, int i2, int i3) {
        this.spliceEventId = j;
        this.spliceEventCancelIndicator = z;
        this.outOfNetworkIndicator = z2;
        this.programSpliceFlag = z3;
        this.spliceImmediateFlag = z4;
        this.programSplicePts = j2;
        this.programSplicePlaybackPositionUs = j3;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z5;
        this.breakDurationUs = j4;
        this.uniqueProgramId = i;
        this.availNum = i2;
        this.availsExpected = i3;
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        boolean z = false;
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(ComponentSplice.createFromParcel(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1 ? true : z;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    public static SpliceInsertCommand parseFromSection(ParsableByteArray parsableByteArray, long j, TimestampAdjuster timestampAdjuster) {
        boolean z;
        int i;
        long j2;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        long j3;
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        boolean z5 = (parsableByteArray.readUnsignedByte() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (!z5) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            z4 = (readUnsignedByte & 128) != 0;
            z3 = (readUnsignedByte & 64) != 0;
            boolean z6 = (readUnsignedByte & 32) != 0;
            boolean z7 = (readUnsignedByte & 16) != 0;
            j3 = (!z3 || z7) ? C0463C.TIME_UNSET : TimeSignalCommand.parseSpliceTime(parsableByteArray, j);
            if (!z3) {
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                ArrayList arrayList = new ArrayList(readUnsignedByte2);
                int i4 = 0;
                while (true) {
                    emptyList = arrayList;
                    if (i4 >= readUnsignedByte2) {
                        break;
                    }
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    long parseSpliceTime = !z7 ? TimeSignalCommand.parseSpliceTime(parsableByteArray, j) : C0463C.TIME_UNSET;
                    arrayList.add(new ComponentSplice(readUnsignedByte3, parseSpliceTime, timestampAdjuster.adjustTsTimestamp(parseSpliceTime)));
                    i4++;
                }
            }
            if (z6) {
                long readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                z2 = (128 & readUnsignedByte4) != 0;
                j2 = ((((readUnsignedByte4 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
            } else {
                j2 = C0463C.TIME_UNSET;
                z2 = false;
            }
            i = parsableByteArray.readUnsignedShort();
            i3 = parsableByteArray.readUnsignedByte();
            i2 = parsableByteArray.readUnsignedByte();
            z = z7;
        } else {
            z4 = false;
            z = false;
            j3 = C0463C.TIME_UNSET;
            z2 = false;
            j2 = C0463C.TIME_UNSET;
            i = 0;
            i3 = 0;
            i2 = 0;
            z3 = false;
        }
        return new SpliceInsertCommand(readUnsignedInt, z5, z4, z3, z, j3, timestampAdjuster.adjustTsTimestamp(j3), emptyList, z2, j2, i, i3, i2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.componentSpliceList.get(i2).writeToParcel(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
