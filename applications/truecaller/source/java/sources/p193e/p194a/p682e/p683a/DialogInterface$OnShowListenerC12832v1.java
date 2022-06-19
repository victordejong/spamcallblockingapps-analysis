package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.widget.TextView;
import com.truecaller.C2752R;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.e.a.v1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/v1.class */
public final /* synthetic */ class DialogInterface$OnShowListenerC12832v1 implements DialogInterface.OnShowListener {

    /* renamed from: a */
    public static final /* synthetic */ DialogInterface$OnShowListenerC12832v1 f37323a = new DialogInterface$OnShowListenerC12832v1();

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        int i = View$OnClickListenerC12763k3.f37157s0;
        ((TextView) ((Dialog) dialogInterface).findViewById(C2752R.C2754id.debugInput)).setText(String.valueOf(C15571h.m18642i("VERSION_CODE")));
    }
}
