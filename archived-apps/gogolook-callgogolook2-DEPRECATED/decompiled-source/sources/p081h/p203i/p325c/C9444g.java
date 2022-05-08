package p081h.p203i.p325c;

import android.content.Context;
import p081h.p203i.p325c.p326a0.C9391h;
/* renamed from: h.i.c.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/g.class */
public final /* synthetic */ class C9444g implements C9391h.AbstractC9392a {

    /* renamed from: a */
    public static final C9444g f21553a = new C9444g();

    /* renamed from: a */
    public static C9391h.AbstractC9392a m15152a() {
        return f21553a;
    }

    @Override // p081h.p203i.p325c.p326a0.C9391h.AbstractC9392a
    public String extract(Object obj) {
        return r0.getPackageManager().getInstallerPackageName(((Context) obj).getPackageName());
    }
}
