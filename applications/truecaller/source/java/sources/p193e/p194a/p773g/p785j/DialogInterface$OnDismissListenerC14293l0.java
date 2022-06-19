package p193e.p194a.p773g.p785j;

import android.content.DialogInterface;
import java.util.Objects;
import p193e.p194a.p682e.p683a.View$OnClickListenerC12752i4;
import s1.z.b.a;
/* renamed from: e.a.g.j.l0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/l0.class */
public final class DialogInterface$OnDismissListenerC14293l0 implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ a f41356a;

    /* renamed from: b */
    public final /* synthetic */ a f41357b;

    public DialogInterface$OnDismissListenerC14293l0(a aVar, a aVar2) {
        this.f41356a = aVar;
        this.f41357b = aVar2;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Objects.requireNonNull(dialogInterface, "null cannot be cast to non-null type com.truecaller.ui.dialogs.WarnYourFriendsDialog");
        if (((View$OnClickListenerC12752i4) dialogInterface).f37136e) {
            this.f41356a.invoke();
        } else {
            this.f41357b.invoke();
        }
    }
}
