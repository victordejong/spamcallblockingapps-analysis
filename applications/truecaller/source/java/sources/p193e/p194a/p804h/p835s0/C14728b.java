package p193e.p194a.p804h.p835s0;

import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.s0.b */
/* loaded from: classes3-dex2jar.jar:e/a/h/s0/b.class */
public final class C14728b {

    /* renamed from: a */
    public final boolean f42221a;

    /* renamed from: b */
    public final boolean f42222b;

    /* renamed from: c */
    public final boolean f42223c;

    /* renamed from: d */
    public final ArrayList<C14729d> f42224d;

    /* renamed from: e */
    public final InitiateCallHelper.CallContextOption f42225e;

    /* renamed from: f */
    public final Contact f42226f;

    public C14728b() {
        this(false, false, false, null, null, null, 63);
    }

    public C14728b(boolean z, boolean z2, boolean z3, ArrayList arrayList, InitiateCallHelper.CallContextOption callContextOption, Contact contact, int i) {
        z = (i & 1) != 0 ? false : z;
        z2 = (i & 2) != 0 ? false : z2;
        z3 = (i & 4) != 0 ? false : z3;
        ArrayList<C14729d> arrayList2 = (i & 8) != 0 ? new ArrayList<>() : null;
        callContextOption = (i & 16) != 0 ? InitiateCallHelper.CallContextOption.Skip.a : callContextOption;
        contact = (i & 32) != 0 ? null : contact;
        l.e(arrayList2, "items");
        l.e(callContextOption, "callContextOption");
        this.f42221a = z;
        this.f42222b = z2;
        this.f42223c = z3;
        this.f42224d = arrayList2;
        this.f42225e = callContextOption;
        this.f42226f = contact;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14728b)) {
                return false;
            }
            C14728b c14728b = (C14728b) obj;
            return this.f42221a == c14728b.f42221a && this.f42222b == c14728b.f42222b && this.f42223c == c14728b.f42223c && l.a(this.f42224d, c14728b.f42224d) && l.a(this.f42225e, c14728b.f42225e) && l.a(this.f42226f, c14728b.f42226f);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f42221a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f42222b;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.f42223c;
        if (!z5) {
            i = z5;
        }
        ArrayList<C14729d> arrayList = this.f42224d;
        int i2 = 0;
        int hashCode = arrayList != null ? arrayList.hashCode() : 0;
        InitiateCallHelper.CallContextOption callContextOption = this.f42225e;
        int hashCode2 = callContextOption != null ? callContextOption.hashCode() : 0;
        Contact contact = this.f42226f;
        if (contact != null) {
            i2 = contact.hashCode();
        }
        return ((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + hashCode) * 31) + hashCode2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SelectNumberData(multiSim=");
        m8728C.append(this.f42221a);
        m8728C.append(", sms=");
        m8728C.append(this.f42222b);
        m8728C.append(", voip=");
        m8728C.append(this.f42223c);
        m8728C.append(", items=");
        m8728C.append(this.f42224d);
        m8728C.append(", callContextOption=");
        m8728C.append(this.f42225e);
        m8728C.append(", contact=");
        m8728C.append(this.f42226f);
        m8728C.append(")");
        return m8728C.toString();
    }
}
