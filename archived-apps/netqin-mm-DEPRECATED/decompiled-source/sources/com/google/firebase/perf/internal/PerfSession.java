package com.google.firebase.perf.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.perf.p494v1.SessionVerbosity;
import com.google.firebase.perf.util.Timer;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5993a;
import p131c.p161d.p282e.p340u.p350m.C6039u;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/internal/PerfSession.class */
public class PerfSession implements Parcelable {
    public static final Parcelable.Creator<PerfSession> CREATOR = new C7850a();

    /* renamed from: a */
    public String f31004a;

    /* renamed from: b */
    public boolean f31005b;

    /* renamed from: c */
    public Timer f31006c;

    /* renamed from: com.google.firebase.perf.internal.PerfSession$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/internal/PerfSession$a.class */
    public class C7850a implements Parcelable.Creator<PerfSession> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PerfSession createFromParcel(Parcel parcel) {
            return new PerfSession(parcel, (C7850a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PerfSession[] newArray(int i) {
            return new PerfSession[i];
        }
    }

    public PerfSession(Parcel parcel) {
        boolean z = false;
        this.f31005b = false;
        this.f31004a = parcel.readString();
        this.f31005b = parcel.readByte() != 0 ? true : z;
        this.f31006c = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
    }

    public /* synthetic */ PerfSession(Parcel parcel, C7850a aVar) {
        this(parcel);
    }

    public PerfSession(String str, C5993a aVar) {
        this.f31005b = false;
        this.f31004a = str;
        this.f31006c = aVar.m22373a();
    }

    /* renamed from: a */
    public static C6039u[] m7265a(List<PerfSession> list) {
        if (list.isEmpty()) {
            return null;
        }
        C6039u[] uVarArr = new C6039u[list.size()];
        C6039u a = list.get(0).m7266a();
        boolean z = false;
        for (int i = 1; i < list.size(); i++) {
            C6039u a2 = list.get(i).m7266a();
            if (z || !list.get(i).m7260e()) {
                uVarArr[i] = a2;
            } else {
                uVarArr[0] = a2;
                uVarArr[i] = a;
                z = true;
            }
        }
        if (!z) {
            uVarArr[0] = a;
        }
        return uVarArr;
    }

    /* renamed from: g */
    public static PerfSession m7258g() {
        String replaceAll = UUID.randomUUID().toString().replaceAll("\\-", "");
        PerfSession perfSession = new PerfSession(replaceAll, new C5993a());
        perfSession.m7264a(m7257h());
        C5969a.m22496a().m22495a(String.format("Creating a new %s Session: %s", perfSession.m7260e() ? "Verbose" : "Non Verbose", replaceAll), new Object[0]);
        return perfSession;
    }

    /* renamed from: h */
    public static boolean m7257h() {
        C5927a v = C5927a.m22644v();
        return v.m22645u() && Math.random() < ((double) v.m22649q());
    }

    /* renamed from: a */
    public C6039u m7266a() {
        C6039u.C6042c y = C6039u.m22226y();
        y.m22223a(this.f31004a);
        if (this.f31005b) {
            y.m22224a(SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS);
        }
        return y.mo6937a();
    }

    /* renamed from: a */
    public void m7264a(boolean z) {
        this.f31005b = z;
    }

    /* renamed from: b */
    public Timer m7263b() {
        return this.f31006c;
    }

    /* renamed from: c */
    public boolean m7262c() {
        return TimeUnit.MICROSECONDS.toMinutes(this.f31006c.m7217b()) > C5927a.m22644v().m22652n();
    }

    /* renamed from: d */
    public boolean m7261d() {
        return this.f31005b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public boolean m7260e() {
        return this.f31005b;
    }

    /* renamed from: f */
    public String m7259f() {
        return this.f31004a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f31004a);
        parcel.writeByte(this.f31005b ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f31006c, 0);
    }
}
