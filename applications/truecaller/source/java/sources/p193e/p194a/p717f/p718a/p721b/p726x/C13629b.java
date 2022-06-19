package p193e.p194a.p717f.p718a.p721b.p726x;

import android.content.DialogInterface;
import javax.inject.Inject;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Le/a/f/a/b/x/b;", "Ln3/r/a/k;", "", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "dialog", "Ls1/s;", "onCancel", "(Landroid/content/DialogInterface;)V", "<init>", "()V", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.b.x.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/x/b.class */
public final class C13629b extends AbstractC13628a {
    @Inject

    /* renamed from: e */
    public C13633d f39490e;

    /* renamed from: e.a.f.a.b.x.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/x/b$a.class */
    public static final class DialogInterface$OnClickListenerC13630a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13630a() {
            C13629b.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13633d c13633d = C13629b.this.f39490e;
            if (c13633d != null) {
                c13633d.f39493b.mo21189r();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.f.a.b.x.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/x/b$b.class */
    public static final class DialogInterface$OnClickListenerC13631b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13631b f39492a = new DialogInterface$OnClickListenerC13631b();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            l.e(dialogInterface, "dialog");
            dialogInterface.cancel();
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        C13629b.super.onCancel(dialogInterface);
        C13633d c13633d = this.f39490e;
        if (c13633d != null) {
            c13633d.f39493b.mo21220J();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r8 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Dialog onCreateDialog(android.os.Bundle r8) {
        /*
            r7 = this;
            r0 = r7
            android.os.Bundle r0 = r0.getArguments()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L17
            r0 = r8
            java.lang.String r1 = "POST_DIAL_SEQUENCE"
            java.lang.String r0 = r0.getString(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r8 = r0
        L1a:
            r0 = r8
            java.lang.String r1 = "arguments?.getString(ARG_POST_DIAL_SEQUENCE) ?: \"\""
            s1.z.c.l.d(r0, r1)
            n3.b.a.g$a r0 = new n3.b.a.g$a
            r1 = r0
            r2 = r7
            android.content.Context r2 = r2.requireContext()
            r1.<init>(r2)
            r9 = r0
            r0 = r7
            int r1 = com.truecaller.incallui.C4013R.string.incallui_post_dial_message
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5
            java.lang.String r0 = r0.getString(r1, r2)
            r8 = r0
            r0 = r9
            androidx.appcompat.app.AlertController$b r0 = r0.f70854a
            r1 = r8
            r0.f156f = r1
            r0 = r9
            int r1 = com.truecaller.incallui.C4013R.string.incallui_post_dial_positive
            e.a.f.a.b.x.b$a r2 = new e.a.f.a.b.x.b$a
            r3 = r2
            r4 = r7
            r3.<init>()
            n3.b.a.g$a r0 = r0.m3660i(r1, r2)
            r0 = r9
            int r1 = com.truecaller.incallui.C4013R.string.incallui_post_dial_negative
            e.a.f.a.b.x.b$b r2 = p193e.p194a.p717f.p718a.p721b.p726x.C13629b.DialogInterface$OnClickListenerC13631b.f39492a
            n3.b.a.g$a r0 = r0.m3662g(r1, r2)
            r0 = r9
            n3.b.a.g r0 = r0.m3652q()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "AlertDialog.Builder(requ…l() }\n            .show()"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.p726x.C13629b.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }
}
