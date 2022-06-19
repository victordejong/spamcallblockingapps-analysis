package p193e.p194a.p679d5.p680g;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import com.truecaller.TrueApp;
import com.truecaller.consentrefresh.ConsentRefreshActivity;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import kotlin.Metadata;
import n3.b.a.g;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\f\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Le/a/d5/g/h;", "Le/a/d5/g/e;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", C22021b.f61237c, "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "PA", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.h */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/h.class */
public final class C12624h extends AbstractView$OnClickListenerC12621e {

    /* renamed from: b */
    public final StartupDialogEvent.Type f36776b = StartupDialogEvent.Type.RegionC;

    /* renamed from: e.a.d5.g.h$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/g/h$a.class */
    public static final class C12625a extends m implements l<Boolean, s> {

        /* renamed from: c */
        public final /* synthetic */ Context f36778c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12625a(Context context) {
            super(1);
            C12624h.this = r4;
            this.f36778c = context;
        }

        /* renamed from: d */
        public Object m22810d(Object obj) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (C12624h.this.isAdded()) {
                TrueApp m36032b0 = TrueApp.m36032b0();
                s1.z.c.l.d(m36032b0, "TrueApp.getApp()");
                m36032b0.m28549N().mo12484Y().putBoolean("region_c_accepted", booleanValue);
                if (booleanValue) {
                    ConsentRefreshActivity.f11306d.m35615a(this.f36778c, false);
                    C12624h c12624h = C12624h.this;
                    Bundle arguments = c12624h.getArguments();
                    if (arguments == null) {
                        arguments = new Bundle();
                    }
                    arguments.putString("StartupDialogDismissReason", StartupDialogDismissReason.USER_IS_IN_REGION2.name());
                    c12624h.setArguments(arguments);
                }
                C12624h.this.dismissAllowingStateLoss();
            }
            return s.a;
        }
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    /* renamed from: PA */
    public StartupDialogEvent.Type mo22805PA() {
        return this.f36776b;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Context context = getContext();
        if (context == null) {
            Dialog onCreateDialog = C12624h.super.onCreateDialog(bundle);
            s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
            return onCreateDialog;
        }
        s1.z.c.l.d(context, "context ?: return super.…ialog(savedInstanceState)");
        setCancelable(false);
        g m3668a = C19291g.m13533m(context, new C12625a(context)).m3668a();
        s1.z.c.l.d(m3668a, "dialog.create()");
        return m3668a;
    }
}
