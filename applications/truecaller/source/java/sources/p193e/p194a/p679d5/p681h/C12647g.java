package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p679d5.p680g.C12626i;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.g */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/g.class */
public final class C12647g implements AbstractC12607b {

    /* renamed from: a */
    public final StartupDialogType f36845a = StartupDialogType.DIALOG_MDAU_PROMO;

    /* renamed from: b */
    public final AbstractC19230g f36846b;

    /* renamed from: c */
    public final AbstractC21881d f36847c;

    /* renamed from: d */
    public final C8601l0 f36848d;

    @Inject
    public C12647g(AbstractC19230g abstractC19230g, AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        this.f36846b = abstractC19230g;
        this.f36847c = abstractC21881d;
        this.f36848d = c8601l0;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        C17422k.m16063o(activity);
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36845a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36847c.putLong("key_mdau_promo_shown_timestamp", this.f36848d.m28258c());
        this.f36847c.m8947l("key_mdau_promo_shown_times");
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        if (this.f36846b.mo13794c()) {
            return Boolean.FALSE;
        }
        AbstractC21881d abstractC21881d = this.f36847c;
        boolean z = false;
        char c = 0;
        int i = 0;
        while (i < 3) {
            String str = new String[]{"key_mdau_promo_shown_timestamp", "key_upgrade_timestamp", "key_init_timestamp"}[i];
            char c2 = c;
            if (c == 0) {
                c2 = abstractC21881d.getLong(str, 0L);
            }
            i++;
            c = c2;
        }
        int i2 = this.f36847c.getInt("key_mdau_promo_shown_times", 0);
        if (i2 == 0) {
            z = this.f36848d.m28260a(c, 1L, TimeUnit.DAYS);
        } else if (i2 == 1) {
            z = this.f36848d.m28260a(c, 7L, TimeUnit.DAYS);
        } else if (i2 == 2) {
            z = this.f36848d.m28260a(c, 30L, TimeUnit.DAYS);
        }
        return Boolean.valueOf(z);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new C12626i();
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return false;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
