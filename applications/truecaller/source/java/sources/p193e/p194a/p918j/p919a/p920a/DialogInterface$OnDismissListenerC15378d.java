package p193e.p194a.p918j.p919a.p920a;

import android.content.DialogInterface;
/* renamed from: e.a.j.a.a.d */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/d.class */
public final class DialogInterface$OnDismissListenerC15378d implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ C15373c f43682a;

    public DialogInterface$OnDismissListenerC15378d(C15373c c15373c) {
        this.f43682a = c15373c;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f43682a.requireActivity().finish();
    }
}
