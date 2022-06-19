package p193e.p194a.p982k0.p987l;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.callrecording.recorder.CallRecorder;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k0.l.k */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/k.class */
public final class C16345k {

    /* renamed from: a */
    public final CallRecorder f45998a;

    /* renamed from: b */
    public final C16346l f45999b;

    public C16345k(CallRecorder callRecorder, C16346l c16346l) {
        l.e(callRecorder, "recorder");
        l.e(c16346l, RemoteMessageConst.DATA);
        this.f45998a = callRecorder;
        this.f45999b = c16346l;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16345k)) {
                return false;
            }
            C16345k c16345k = (C16345k) obj;
            return l.a(this.f45998a, c16345k.f45998a) && l.a(this.f45999b, c16345k.f45999b);
        }
        return true;
    }

    public int hashCode() {
        CallRecorder callRecorder = this.f45998a;
        int i = 0;
        int hashCode = callRecorder != null ? callRecorder.hashCode() : 0;
        C16346l c16346l = this.f45999b;
        if (c16346l != null) {
            i = c16346l.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RecordingSession(recorder=");
        m8728C.append(this.f45998a);
        m8728C.append(", data=");
        m8728C.append(this.f45999b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
