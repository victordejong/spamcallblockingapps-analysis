package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.content.Context;
import java.util.Objects;
/* renamed from: e.a.e.a.h2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/h2.class */
public class DialogC12744h2 extends Dialog {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC12750i2 f37115a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC12744h2(View$OnClickListenerC12750i2 view$OnClickListenerC12750i2, Context context, int i) {
        super(context, i);
        this.f37115a = view$OnClickListenerC12750i2;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        Objects.requireNonNull(this.f37115a);
    }
}
