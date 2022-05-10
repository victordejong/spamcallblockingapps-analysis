package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayu;
/* renamed from: c.d.b.d.g.a.v5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v5.class */
public final class DialogInterface$OnClickListenerC4129v5 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RunnableC4166w5 f15698a;

    public DialogInterface$OnClickListenerC4129v5(RunnableC4166w5 w5Var) {
        this.f15698a = w5Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzp.m17969c();
        zzayu.m16142a(this.f15698a.f15906a, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
