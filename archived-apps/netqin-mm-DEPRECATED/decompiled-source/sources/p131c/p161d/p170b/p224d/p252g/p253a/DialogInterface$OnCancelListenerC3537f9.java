package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: c.d.b.d.g.a.f9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f9.class */
public final class DialogInterface$OnCancelListenerC3537f9 implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ JsPromptResult f12895a;

    public DialogInterface$OnCancelListenerC3537f9(JsPromptResult jsPromptResult) {
        this.f12895a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f12895a.cancel();
    }
}
