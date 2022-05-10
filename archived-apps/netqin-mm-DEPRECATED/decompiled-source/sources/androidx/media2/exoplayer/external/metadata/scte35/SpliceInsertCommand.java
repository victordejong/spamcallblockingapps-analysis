package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new C0316a();

    /* renamed from: a */
    public final long f1803a;

    /* renamed from: b */
    public final boolean f1804b;

    /* renamed from: c */
    public final boolean f1805c;

    /* renamed from: d */
    public final boolean f1806d;

    /* renamed from: e */
    public final boolean f1807e;

    /* renamed from: f */
    public final long f1808f;

    /* renamed from: g */
    public final long f1809g;

    /* renamed from: h */
    public final List<C0317b> f1810h;

    /* renamed from: i */
    public final boolean f1811i;

    /* renamed from: j */
    public final long f1812j;

    /* renamed from: k */
    public final int f1813k;

    /* renamed from: l */
    public final int f1814l;

    /* renamed from: m */
    public final int f1815m;

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceInsertCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$a.class */
    public class C0316a implements Parcelable.Creator<SpliceInsertCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceInsertCommand$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$b.class */
    public static final class C0317b {

        /* renamed from: a */
        public final int f1816a;

        /* renamed from: b */
        public final long f1817b;

        /* renamed from: c */
        public final long f1818c;

        public C0317b(int i, long j, long j2) {
            this.f1816a = i;
            this.f1817b = j;
            this.f1818c = j2;
        }

        public /* synthetic */ C0317b(int i, long j, long j2, C0316a aVar) {
            this(i, j, j2);
        }

        /* renamed from: b */
        public static C0317b m38010b(Parcel parcel) {
            return new C0317b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        /* renamed from: a */
        public void m38011a(Parcel parcel) {
            parcel.writeInt(this.f1816a);
            parcel.writeLong(this.f1817b);
            parcel.writeLong(this.f1818c);
        }
    }

    public SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C0317b> list, boolean z5, long j4, int i, int i2, int i3) {
        this.f1803a = j;
        this.f1804b = z;
        this.f1805c = z2;
        this.f1806d = z3;
        this.f1807e = z4;
        this.f1808f = j2;
        this.f1809g = j3;
        this.f1810h = Collections.unmodifiableList(list);
        this.f1811i = z5;
        this.f1812j = j4;
        this.f1813k = i;
        this.f1814l = i2;
        this.f1815m = i3;
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.f1803a = parcel.readLong();
        boolean z = false;
        this.f1804b = parcel.readByte() == 1;
        this.f1805c = parcel.readByte() == 1;
        this.f1806d = parcel.readByte() == 1;
        this.f1807e = parcel.readByte() == 1;
        this.f1808f = parcel.readLong();
        this.f1809g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C0317b.m38010b(parcel));
        }
        this.f1810h = Collections.unmodifiableList(arrayList);
        this.f1811i = parcel.readByte() == 1 ? true : z;
        this.f1812j = parcel.readLong();
        this.f1813k = parcel.readInt();
        this.f1814l = parcel.readInt();
        this.f1815m = parcel.readInt();
    }

    public /* synthetic */ SpliceInsertCommand(Parcel parcel, C0316a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static SpliceInsertCommand m38012a(C1184p pVar, long j, C1196z zVar) {
        boolean z;
        int i;
        long j2;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        long j3;
        long t = pVar.m34342t();
        boolean z5 = (pVar.m34344r() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (!z5) {
            int r = pVar.m34344r();
            z2 = (r & 128) != 0;
            z3 = (r & 64) != 0;
            boolean z6 = (r & 32) != 0;
            boolean z7 = (r & 16) != 0;
            j2 = (!z3 || z7) ? -9223372036854775807L : TimeSignalCommand.m37998a(pVar, j);
            if (!z3) {
                int r2 = pVar.m34344r();
                emptyList = new ArrayList(r2);
                for (int i4 = 0; i4 < r2; i4++) {
                    int r3 = pVar.m34344r();
                    long a = !z7 ? TimeSignalCommand.m37998a(pVar, j) : -9223372036854775807L;
                    emptyList.add(new C0317b(r3, a, zVar.m34292b(a), null));
                }
            }
            if (z6) {
                long r4 = pVar.m34344r();
                z = (128 & r4) != 0;
                j3 = ((((r4 & 1) << 32) | pVar.m34342t()) * 1000) / 90;
            } else {
                z = false;
                j3 = -9223372036854775807L;
            }
            i = pVar.m34338x();
            i3 = pVar.m34344r();
            i2 = pVar.m34344r();
            z4 = z7;
        } else {
            z2 = false;
            z4 = false;
            j2 = -9223372036854775807L;
            z = false;
            j3 = -9223372036854775807L;
            i = 0;
            i3 = 0;
            i2 = 0;
            z3 = false;
        }
        return new SpliceInsertCommand(t, z5, z2, z3, z4, j2, zVar.m34292b(j2), emptyList, z, j3, i, i3, i2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1803a);
        parcel.writeByte(this.f1804b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1805c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1806d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1807e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f1808f);
        parcel.writeLong(this.f1809g);
        int size = this.f1810h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f1810h.get(i2).m38011a(parcel);
        }
        parcel.writeByte(this.f1811i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f1812j);
        parcel.writeInt(this.f1813k);
        parcel.writeInt(this.f1814l);
        parcel.writeInt(this.f1815m);
    }
}
