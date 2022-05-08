package p081h.p203i.p204a.p224e.p235d.p240n;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h;
/* renamed from: h.i.a.e.d.n.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/g.class */
public abstract class AbstractDialogInterface$OnClickListenerC6989g implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC6989g m21370a(Activity activity, Intent intent, int i) {
        return new C6966b0(intent, activity, i);
    }

    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC6989g m21369a(@NonNull Fragment fragment, Intent intent, int i) {
        return new C6968c0(intent, fragment, i);
    }

    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC6989g m21368a(@NonNull AbstractC6874h hVar, Intent intent, int i) {
        return new C6982d0(intent, hVar, i);
    }

    /* renamed from: a */
    public abstract void mo21371a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo21371a();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
