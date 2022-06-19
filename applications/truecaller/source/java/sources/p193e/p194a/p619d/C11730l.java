package p193e.p194a.p619d;

import com.truecaller.voip.C4781R;
import com.truecaller.voip.ConnectionState;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/l.class */
public final class C11730l {

    /* renamed from: a */
    public final VoipState f34449a;

    /* renamed from: b */
    public final VoipStateReason f34450b;

    /* renamed from: c */
    public final ConnectionState f34451c;

    /* renamed from: d */
    public final int f34452d;

    /* renamed from: e */
    public final int f34453e;

    /* renamed from: f */
    public final boolean f34454f;

    /* renamed from: g */
    public final String f34455g;

    /* renamed from: h */
    public final boolean f34456h;

    public C11730l() {
        this(null, null, null, 0, 0, false, null, false, 255);
    }

    public C11730l(VoipState voipState, VoipStateReason voipStateReason, ConnectionState connectionState, int i, int i2, boolean z, String str, boolean z2) {
        l.e(voipState, "state");
        l.e(connectionState, "connectionState");
        l.e(str, "logMessage");
        this.f34449a = voipState;
        this.f34450b = voipStateReason;
        this.f34451c = connectionState;
        this.f34452d = i;
        this.f34453e = i2;
        this.f34454f = z;
        this.f34455g = str;
        this.f34456h = z2;
    }

    public /* synthetic */ C11730l(VoipState voipState, VoipStateReason voipStateReason, ConnectionState connectionState, int i, int i2, boolean z, String str, boolean z2, int i3) {
        this((i3 & 1) != 0 ? VoipState.INITIAL : voipState, null, (i3 & 4) != 0 ? ConnectionState.CONNECTED : null, (i3 & 8) != 0 ? C4781R.string.voip_empty : i, (i3 & 16) != 0 ? C4781R.attr.voip_call_status_neutral_color : i2, (i3 & 32) != 0 ? false : z, (i3 & 64) != 0 ? "" : str, (i3 & 128) != 0 ? false : z2);
    }

    /* renamed from: a */
    public static C11730l m24133a(C11730l c11730l, VoipState voipState, VoipStateReason voipStateReason, ConnectionState connectionState, int i, int i2, boolean z, String str, boolean z2, int i3) {
        VoipState voipState2 = (i3 & 1) != 0 ? c11730l.f34449a : null;
        if ((i3 & 2) != 0) {
            voipStateReason = c11730l.f34450b;
        }
        if ((i3 & 4) != 0) {
            connectionState = c11730l.f34451c;
        }
        if ((i3 & 8) != 0) {
            i = c11730l.f34452d;
        }
        if ((i3 & 16) != 0) {
            i2 = c11730l.f34453e;
        }
        if ((i3 & 32) != 0) {
            z = c11730l.f34454f;
        }
        if ((i3 & 64) != 0) {
            str = c11730l.f34455g;
        }
        if ((i3 & 128) != 0) {
            z2 = c11730l.f34456h;
        }
        Objects.requireNonNull(c11730l);
        l.e(voipState2, "state");
        l.e(connectionState, "connectionState");
        l.e(str, "logMessage");
        return new C11730l(voipState2, voipStateReason, connectionState, i, i2, z, str, z2);
    }

    /* renamed from: b */
    public final int m24132b() {
        Integer callStatusColor = this.f34451c.getCallStatusColor();
        return callStatusColor != null ? callStatusColor.intValue() : this.f34453e;
    }

    /* renamed from: c */
    public final boolean m24131c() {
        Boolean showAvatarRing = this.f34451c.getShowAvatarRing();
        return showAvatarRing != null ? showAvatarRing.booleanValue() : this.f34454f;
    }

    /* renamed from: d */
    public final boolean m24130d() {
        Boolean startTimer = this.f34451c.getStartTimer();
        return startTimer != null ? startTimer.booleanValue() : this.f34456h;
    }

    /* renamed from: e */
    public final int m24129e() {
        Integer statusId = this.f34451c.getStatusId();
        return statusId != null ? statusId.intValue() : this.f34452d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11730l)) {
                return false;
            }
            C11730l c11730l = (C11730l) obj;
            return l.a(this.f34449a, c11730l.f34449a) && l.a(this.f34450b, c11730l.f34450b) && l.a(this.f34451c, c11730l.f34451c) && this.f34452d == c11730l.f34452d && this.f34453e == c11730l.f34453e && this.f34454f == c11730l.f34454f && l.a(this.f34455g, c11730l.f34455g) && this.f34456h == c11730l.f34456h;
        }
        return true;
    }

    public int hashCode() {
        VoipState voipState = this.f34449a;
        int i = 0;
        int hashCode = voipState != null ? voipState.hashCode() : 0;
        VoipStateReason voipStateReason = this.f34450b;
        int hashCode2 = voipStateReason != null ? voipStateReason.hashCode() : 0;
        ConnectionState connectionState = this.f34451c;
        int hashCode3 = connectionState != null ? connectionState.hashCode() : 0;
        int i2 = this.f34452d;
        int i3 = this.f34453e;
        boolean z = this.f34454f;
        int i4 = 1;
        int i5 = z ? 1 : 0;
        if (z) {
            i5 = 1;
        }
        String str = this.f34455g;
        if (str != null) {
            i = str.hashCode();
        }
        boolean z2 = this.f34456h;
        if (!z2) {
            i4 = z2 ? 1 : 0;
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + i5) * 31) + i) * 31) + i4;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipServiceState(state=");
        m8728C.append(this.f34449a);
        m8728C.append(", stateReason=");
        m8728C.append(this.f34450b);
        m8728C.append(", connectionState=");
        m8728C.append(this.f34451c);
        m8728C.append(", statusId=");
        m8728C.append(this.f34452d);
        m8728C.append(", callStatusColor=");
        m8728C.append(this.f34453e);
        m8728C.append(", showAvatarRing=");
        m8728C.append(this.f34454f);
        m8728C.append(", logMessage=");
        m8728C.append(this.f34455g);
        m8728C.append(", startTimer=");
        return C22128a.m8590o(m8728C, this.f34456h, ")");
    }
}
