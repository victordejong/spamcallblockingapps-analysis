package p193e.p194a.p679d5.p680g;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import kotlin.Metadata;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\r\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Le/a/d5/g/k;", "Le/a/d5/g/e;", "Landroid/view/View$OnClickListener;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", C22021b.f61237c, "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "PA", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.k */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/k.class */
public final class View$OnClickListenerC12631k extends AbstractView$OnClickListenerC12621e implements View.OnClickListener {

    /* renamed from: b */
    public final StartupDialogEvent.Type f36799b = StartupDialogEvent.Type.PinShortcutRequest;

    /* renamed from: e.a.d5.g.k$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/g/k$a.class */
    public static final class DialogInterface$OnClickListenerC12632a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC12632a f36800a = new DialogInterface$OnClickListenerC12632a();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            TrueApp m36032b0 = TrueApp.m36032b0();
            l.d(m36032b0, "TrueApp.getApp()");
            m36032b0.mo10154s().mo12733F6().mo14252a(0);
        }
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    /* renamed from: PA */
    public StartupDialogEvent.Type mo22805PA() {
        return this.f36799b;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        g gVar;
        Context context = getContext();
        if (context != null) {
            g$a g_a = new g$a(context);
            g_a.m3664e(C2752R.string.addShortcutTruecallerDialog);
            g_a.f70854a.f163m = false;
            g_a.m3660i(C2752R.string.add, DialogInterface$OnClickListenerC12632a.f36800a);
            g_a.m3662g(C2752R.string.shortcutDialogBtnNoThanks, null);
            gVar = g_a.m3668a();
        } else {
            gVar = View$OnClickListenerC12631k.super.onCreateDialog(bundle);
            l.d(gVar, "super.onCreateDialog(savedInstanceState)");
        }
        return gVar;
    }
}
