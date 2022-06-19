package p193e.p194a.p804h.p835s0;

import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.s0.d */
/* loaded from: classes3-dex2jar.jar:e/a/h/s0/d.class */
public final class C14729d {

    /* renamed from: a */
    public final Number f42227a;

    /* renamed from: b */
    public final HistoryEvent f42228b;

    public C14729d(Number number, HistoryEvent historyEvent) {
        l.e(number, "number");
        this.f42227a = number;
        this.f42228b = historyEvent;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14729d)) {
                return false;
            }
            C14729d c14729d = (C14729d) obj;
            return l.a(this.f42227a, c14729d.f42227a) && l.a(this.f42228b, c14729d.f42228b);
        }
        return true;
    }

    public int hashCode() {
        Number number = this.f42227a;
        int i = 0;
        int hashCode = number != null ? number.hashCode() : 0;
        HistoryEvent historyEvent = this.f42228b;
        if (historyEvent != null) {
            i = historyEvent.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SelectNumberItem(number=");
        m8728C.append(this.f42227a);
        m8728C.append(", historyEvent=");
        m8728C.append(this.f42228b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
