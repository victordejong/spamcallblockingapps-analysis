package p193e.p194a.p682e.p683a;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import com.truecaller.C2752R;
import p1727n3.p1734b.p1735a.DialogC25424p;
/* renamed from: e.a.e.a.c3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/c3.class */
public class DialogC12697c3 extends DialogC25424p {
    public DialogC12697c3(Context context, boolean z) {
        super(context, 0);
        setCancelable(z);
        setCanceledOnTouchOutside(z);
    }

    @Override // p1727n3.p1734b.p1735a.DialogC25424p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setContentView(C2752R.layout.animated_loading);
    }
}
