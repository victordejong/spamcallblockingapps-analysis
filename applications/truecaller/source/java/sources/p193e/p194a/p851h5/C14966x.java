package p193e.p194a.p851h5;

import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19219a0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.h5.x */
/* loaded from: classes14-dex2jar.jar:e/a/h5/x.class */
public final class C14966x implements AbstractC14965w {

    /* renamed from: a */
    public final AbstractC19219a0 f42715a;

    @Inject
    public C14966x(AbstractC19219a0 abstractC19219a0) {
        l.e(abstractC19219a0, "permissionUtil");
        this.f42715a = abstractC19219a0;
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: a */
    public String[] mo19356a() {
        return new String[]{"android.permission.READ_SMS", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS"};
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: b */
    public String[] mo19355b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.READ_PHONE_STATE");
        arrayList.add("android.permission.READ_CALL_LOG");
        arrayList.add("android.permission.WRITE_CALL_LOG");
        arrayList.add("android.permission.CALL_PHONE");
        arrayList.add("android.permission.PROCESS_OUTGOING_CALLS");
        if (Build.VERSION.SDK_INT >= 28) {
            arrayList.add("android.permission.ANSWER_PHONE_CALLS");
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: c */
    public String[] mo19354c() {
        return new String[]{"android.permission.READ_SMS", "android.permission.RECEIVE_SMS"};
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: d */
    public boolean mo19353d() {
        String[] strArr = {"android.permission.ACCESS_FINE_LOCATION"};
        return this.f42715a.mo13825h((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: e */
    public String[] mo19352e() {
        AbstractC19219a0 abstractC19219a0 = this.f42715a;
        String[] mo19350g = mo19350g();
        return (abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19350g, mo19350g.length)) || !mo19348i()) ? new String[0] : mo19350g();
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: f */
    public boolean mo19351f() {
        AbstractC19219a0 abstractC19219a0 = this.f42715a;
        String[] mo19349h = mo19349h();
        return abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19349h, mo19349h.length));
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: g */
    public String[] mo19350g() {
        return Build.VERSION.SDK_INT >= 30 ? new String[]{"android.permission.READ_PHONE_NUMBERS"} : new String[0];
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: h */
    public String[] mo19349h() {
        return Build.VERSION.SDK_INT >= 31 ? new String[]{"android.permission.RECORD_AUDIO", "android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT"} : new String[]{"android.permission.RECORD_AUDIO"};
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: i */
    public boolean mo19348i() {
        boolean z;
        AbstractC19219a0 abstractC19219a0 = this.f42715a;
        String[] mo19355b = mo19355b();
        if (abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19355b, mo19355b.length))) {
            AbstractC19219a0 abstractC19219a02 = this.f42715a;
            String[] mo19346k = mo19346k();
            if (abstractC19219a02.mo13825h((String[]) Arrays.copyOf(mo19346k, mo19346k.length))) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: j */
    public boolean mo19347j() {
        AbstractC19219a0 abstractC19219a0 = this.f42715a;
        String[] mo19356a = mo19356a();
        return abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19356a, mo19356a.length));
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: k */
    public String[] mo19346k() {
        return new String[]{"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS"};
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: l */
    public String[] mo19345l() {
        return new String[]{"android.permission.RECORD_AUDIO"};
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: m */
    public String[] mo19344m() {
        return (String[]) i.t0(mo19355b(), mo19346k());
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: n */
    public boolean mo19343n() {
        AbstractC19219a0 abstractC19219a0 = this.f42715a;
        String[] mo19340q = mo19340q();
        return abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19340q, mo19340q.length));
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: o */
    public String[] mo19342o() {
        return new String[]{"android.permission.ACCESS_FINE_LOCATION"};
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: p */
    public boolean mo19341p() {
        AbstractC19219a0 abstractC19219a0 = this.f42715a;
        String[] mo19350g = mo19350g();
        return abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19350g, mo19350g.length));
    }

    @Override // p193e.p194a.p851h5.AbstractC14965w
    /* renamed from: q */
    public String[] mo19340q() {
        return new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    }
}
