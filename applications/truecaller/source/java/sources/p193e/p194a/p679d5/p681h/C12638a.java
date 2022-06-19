package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import com.truecaller.wizard.backup.RestoreDataBackupPendingAction;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.AbstractC18320e;
import p193e.p194a.p1066n.AbstractC18342i0;
import p193e.p194a.p1066n.C18251b;
import p193e.p194a.p1066n.C18270c;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p679d5.AbstractC12607b;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d5.h.a */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/a.class */
public final class C12638a implements AbstractC12607b {

    /* renamed from: a */
    public final boolean f36808a = true;

    /* renamed from: b */
    public final StartupDialogType f36809b = StartupDialogType.BACKUP_ONBOARDING;

    /* renamed from: c */
    public final g f36810c = C25225a.m3978P1(new C12639a());

    /* renamed from: d */
    public StartupDialogDismissReason f36811d;

    /* renamed from: e */
    public long f36812e;

    /* renamed from: f */
    public final AbstractC8432l f36813f;

    /* renamed from: g */
    public final AbstractC18320e f36814g;

    /* renamed from: h */
    public final AbstractC8541a f36815h;

    /* renamed from: i */
    public final AbstractC21881d f36816i;

    /* renamed from: j */
    public final AbstractC18342i0 f36817j;

    /* renamed from: e.a.d5.h.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/a$a.class */
    public static final class C12639a extends m implements a<RestoreDataBackupPendingAction> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12639a() {
            super(0);
            C12638a.this = r4;
        }

        public Object invoke() {
            RestoreDataBackupPendingAction restoreDataBackupPendingAction;
            RestoreDataBackupPendingAction.C4868a c4868a = RestoreDataBackupPendingAction.Companion;
            String string = C12638a.this.f36815h.getString("restoreDataBackupPendingAction");
            Objects.requireNonNull(c4868a);
            RestoreDataBackupPendingAction[] values = RestoreDataBackupPendingAction.values();
            int i = 0;
            while (true) {
                if (i >= 2) {
                    restoreDataBackupPendingAction = null;
                    break;
                }
                restoreDataBackupPendingAction = values[i];
                if (l.a(restoreDataBackupPendingAction.getValue(), string)) {
                    break;
                }
                i++;
            }
            return restoreDataBackupPendingAction;
        }
    }

    @e(c = "com.truecaller.startup_dialogs.resolvers.BackupOnboardingResolver", f = "BackupOnboardingResolver.kt", l = {66}, m = "shouldShow")
    /* renamed from: e.a.d5.h.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/a$b.class */
    public static final class C12640b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36819d;

        /* renamed from: e */
        public int f36820e;

        /* renamed from: g */
        public Object f36822g;

        /* renamed from: h */
        public int f36823h;

        /* renamed from: i */
        public int f36824i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12640b(d dVar) {
            super(dVar);
            C12638a.this = r4;
        }

        /* renamed from: s */
        public final Object m22803s(Object obj) {
            this.f36819d = obj;
            this.f36820e |= Integer.MIN_VALUE;
            return C12638a.this.mo22765e(this);
        }
    }

    @Inject
    public C12638a(AbstractC8432l abstractC8432l, AbstractC18320e abstractC18320e, AbstractC8541a abstractC8541a, AbstractC21881d abstractC21881d, AbstractC18342i0 abstractC18342i0) {
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC18320e, "backupAvailabilityProvider");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC18342i0, "backupUtil");
        this.f36813f = abstractC8432l;
        this.f36814g = abstractC18320e;
        this.f36815h = abstractC8541a;
        this.f36816i = abstractC21881d;
        this.f36817j = abstractC18342i0;
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
        return this.f36809b;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
        this.f36811d = startupDialogDismissReason;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36816i.putBoolean("backupOnboardingShown", true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0161, code lost:
        if (r7.f36812e > 0) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x014f  */
    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo22765e(s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.p681h.C12638a.mo22765e(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        Fragment fragment;
        char c = this.f36815h.getLong("key_backup_fetched_timestamp", 0L);
        boolean z = false;
        boolean z2 = this.f36811d == StartupDialogDismissReason.BACKUP_FOUND;
        if (c != 0 || z2) {
            fragment = new C18251b();
            Bundle bundle = new Bundle();
            if (z2) {
                c = this.f36812e;
            }
            bundle.putLong("last_backup_time", c);
            bundle.putString(AnalyticsConstants.CONTEXT, "wizard");
            if (z2) {
                bundle.putBoolean("enable_backup_if_skipped", true);
            } else {
                if (((RestoreDataBackupPendingAction) this.f36810c.getValue()) == RestoreDataBackupPendingAction.RESTORE) {
                    z = true;
                }
                bundle.putBoolean("auto_restore", z);
            }
            fragment.setArguments(bundle);
        } else {
            fragment = new C18270c();
        }
        return fragment;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return this.f36808a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return startupDialogDismissReason == StartupDialogDismissReason.BACKUP_RESTORED;
    }
}
