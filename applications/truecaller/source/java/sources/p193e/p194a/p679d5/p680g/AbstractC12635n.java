package p193e.p194a.p679d5.p680g;

import android.content.DialogInterface;
import android.os.Bundle;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p194a.p679d5.AbstractC12606a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Le/a/d5/g/n;", "Ln3/b/a/q;", "Landroid/content/DialogInterface;", "dialog", "Ls1/s;", "onDismiss", "(Landroid/content/DialogInterface;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.n */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/n.class */
public abstract class AbstractC12635n extends q {
    public void onDismiss(DialogInterface dialogInterface) {
        StartupDialogType startupDialogType;
        StartupDialogDismissReason startupDialogDismissReason;
        l.e(dialogInterface, "dialog");
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("StartupDialogType");
            n3.r.a.l lVar = null;
            if (string != null) {
                l.d(string, "it");
                startupDialogType = StartupDialogType.valueOf(string);
            } else {
                startupDialogType = null;
            }
            String string2 = arguments.getString("StartupDialogDismissReason");
            if (string2 != null) {
                l.d(string2, "it");
                startupDialogDismissReason = StartupDialogDismissReason.valueOf(string2);
            } else {
                startupDialogDismissReason = null;
            }
            if (startupDialogType != null) {
                n3.r.a.l activity = getActivity();
                if (activity instanceof AbstractC12606a) {
                    lVar = activity;
                }
                AbstractC12606a abstractC12606a = lVar;
                if (abstractC12606a != null) {
                    abstractC12606a.mo22833M2(startupDialogType, startupDialogDismissReason);
                }
            }
        }
        AbstractC12635n.super.onDismiss(dialogInterface);
    }
}
