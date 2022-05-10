package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand.class */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new C0319a();

    /* renamed from: a */
    public final List<C0321c> f1819a;

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a.class */
    public class C0319a implements Parcelable.Creator<SpliceScheduleCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class C0320b {

        /* renamed from: a */
        public final int f1820a;

        /* renamed from: b */
        public final long f1821b;

        public C0320b(int i, long j) {
            this.f1820a = i;
            this.f1821b = j;
        }

        public /* synthetic */ C0320b(int i, long j, C0319a aVar) {
            this(i, j);
        }

        /* renamed from: c */
        public static C0320b m38005c(Parcel parcel) {
            return new C0320b(parcel.readInt(), parcel.readLong());
        }

        /* renamed from: a */
        public final void m38008a(Parcel parcel) {
            parcel.writeInt(this.f1820a);
            parcel.writeLong(this.f1821b);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c.class */
    public static final class C0321c {

        /* renamed from: a */
        public final long f1822a;

        /* renamed from: b */
        public final boolean f1823b;

        /* renamed from: c */
        public final boolean f1824c;

        /* renamed from: d */
        public final boolean f1825d;

        /* renamed from: e */
        public final long f1826e;

        /* renamed from: f */
        public final List<C0320b> f1827f;

        /* renamed from: g */
        public final boolean f1828g;

        /* renamed from: h */
        public final long f1829h;

        /* renamed from: i */
        public final int f1830i;

        /* renamed from: j */
        public final int f1831j;

        /* renamed from: k */
        public final int f1832k;

        public C0321c(long j, boolean z, boolean z2, boolean z3, List<C0320b> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f1822a = j;
            this.f1823b = z;
            this.f1824c = z2;
            this.f1825d = z3;
            this.f1827f = Collections.unmodifiableList(list);
            this.f1826e = j2;
            this.f1828g = z4;
            this.f1829h = j3;
            this.f1830i = i;
            this.f1831j = i2;
            this.f1832k = i3;
        }

        public C0321c(Parcel parcel) {
            this.f1822a = parcel.readLong();
            boolean z = false;
            this.f1823b = parcel.readByte() == 1;
            this.f1824c = parcel.readByte() == 1;
            this.f1825d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(C0320b.m38005c(parcel));
            }
            this.f1827f = Collections.unmodifiableList(arrayList);
            this.f1826e = parcel.readLong();
            this.f1828g = parcel.readByte() == 1 ? true : z;
            this.f1829h = parcel.readLong();
            this.f1830i = parcel.readInt();
            this.f1831j = parcel.readInt();
            this.f1832k = parcel.readInt();
        }

        /* renamed from: b */
        public static C0321c m38000b(C1184p pVar) {
            boolean z;
            long j;
            int i;
            int i2;
            long j2;
            boolean z2;
            boolean z3;
            int i3;
            long t = pVar.m34342t();
            boolean z4 = (pVar.m34344r() & 128) != 0;
            ArrayList arrayList = new ArrayList();
            if (!z4) {
                int r = pVar.m34344r();
                z3 = (r & 128) != 0;
                z2 = (r & 64) != 0;
                boolean z5 = (r & 32) != 0;
                j2 = z2 ? pVar.m34342t() : -9223372036854775807L;
                if (!z2) {
                    int r2 = pVar.m34344r();
                    arrayList = new ArrayList(r2);
                    for (int i4 = 0; i4 < r2; i4++) {
                        arrayList.add(new C0320b(pVar.m34344r(), pVar.m34342t(), null));
                    }
                }
                if (z5) {
                    long r3 = pVar.m34344r();
                    z = (128 & r3) != 0;
                    j = ((((r3 & 1) << 32) | pVar.m34342t()) * 1000) / 90;
                } else {
                    z = false;
                    j = -9223372036854775807L;
                }
                i2 = pVar.m34338x();
                i = pVar.m34344r();
                i3 = pVar.m34344r();
            } else {
                z3 = false;
                j2 = -9223372036854775807L;
                z = false;
                j = -9223372036854775807L;
                i2 = 0;
                i = 0;
                i3 = 0;
                z2 = false;
            }
            return new C0321c(t, z4, z3, z2, arrayList, j2, z, j, i2, i, i3);
        }

        /* renamed from: c */
        public static C0321c m37999c(Parcel parcel) {
            return new C0321c(parcel);
        }

        /* renamed from: a */
        public final void m38004a(Parcel parcel) {
            parcel.writeLong(this.f1822a);
            parcel.writeByte(this.f1823b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f1824c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f1825d ? (byte) 1 : (byte) 0);
            int size = this.f1827f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f1827f.get(i).m38008a(parcel);
            }
            parcel.writeLong(this.f1826e);
            parcel.writeByte(this.f1828g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f1829h);
            parcel.writeInt(this.f1830i);
            parcel.writeInt(this.f1831j);
            parcel.writeInt(this.f1832k);
        }
    }

    public SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C0321c.m37999c(parcel));
        }
        this.f1819a = Collections.unmodifiableList(arrayList);
    }

    public /* synthetic */ SpliceScheduleCommand(Parcel parcel, C0319a aVar) {
        this(parcel);
    }

    public SpliceScheduleCommand(List<C0321c> list) {
        this.f1819a = Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    public static SpliceScheduleCommand m38009a(C1184p pVar) {
        int r = pVar.m34344r();
        ArrayList arrayList = new ArrayList(r);
        for (int i = 0; i < r; i++) {
            arrayList.add(C0321c.m38000b(pVar));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f1819a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f1819a.get(i2).m38004a(parcel);
        }
    }
}
