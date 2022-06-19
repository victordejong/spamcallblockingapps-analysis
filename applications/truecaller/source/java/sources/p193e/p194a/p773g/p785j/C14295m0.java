package p193e.p194a.p773g.p785j;

import android.os.Environment;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1031t2.C17241d;
import p193e.p194a.p195a.AbstractC6755k0;
import p193e.p194a.p702e0.AbstractC13344c;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.z.c.l;
/* renamed from: e.a.g.j.m0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/m0.class */
public final class C14295m0 implements AbstractC13344c {

    /* renamed from: a */
    public final AbstractC14840m f41358a;

    /* renamed from: b */
    public final AbstractC6755k0 f41359b;

    /* renamed from: c */
    public final C17241d f41360c;

    /* renamed from: d */
    public final CallingSettings f41361d;

    /* renamed from: e */
    public final AbstractC16613a2 f41362e;

    @Inject
    public C14295m0(AbstractC14840m abstractC14840m, AbstractC6755k0 abstractC6755k0, C17241d c17241d, CallingSettings callingSettings, AbstractC16613a2 abstractC16613a2) {
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC6755k0, "smsPermissionPromoManager");
        l.e(c17241d, "reportSpamPromoManager");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        this.f41358a = abstractC14840m;
        this.f41359b = abstractC6755k0;
        this.f41360c = c17241d;
        this.f41361d = callingSettings;
        this.f41362e = abstractC16613a2;
    }

    /* renamed from: a */
    public boolean m20284a() {
        boolean z = false;
        if (this.f41361d.getInt("afterCallWarnFriends", 0) < 3) {
            z = false;
            if (l.a("mounted", Environment.getExternalStorageState())) {
                z = true;
            }
        }
        return z;
    }
}
