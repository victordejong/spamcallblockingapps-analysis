package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.google.android.material.textfield.TextInputLayout;
import com.truecaller.insights.p168ui.p169qa.presentation.SmartSmsFeatureFilterStatus;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p437c.p438a.p477g.C9052m1;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.c.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/a0.class */
public final class C9297a0<T> implements AbstractC27012l0<T> {

    /* renamed from: a */
    public final /* synthetic */ C9052m1 f28281a;

    /* renamed from: b */
    public final /* synthetic */ View f28282b;

    public C9297a0(C9052m1 c9052m1, C9367z c9367z, View view) {
        this.f28281a = c9052m1;
        this.f28282b = view;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public final void onChanged(T t) {
        int ordinal = ((SmartSmsFeatureFilterStatus) t).ordinal();
        Editable editable = null;
        if (ordinal == 0) {
            Context context = this.f28282b.getContext();
            StringBuilder sb = new StringBuilder();
            TextInputLayout textInputLayout = this.f28281a.f27538e;
            l.d(textInputLayout, "senderInput");
            EditText editText = textInputLayout.getEditText();
            Editable editable2 = null;
            if (editText != null) {
                editable2 = editText.getText();
            }
            sb.append((Object) editable2);
            sb.append(" was added successfully");
            Toast.makeText(context, sb.toString(), 1).show();
        } else if (ordinal != 1) {
        } else {
            Context context2 = this.f28282b.getContext();
            StringBuilder sb2 = new StringBuilder();
            TextInputLayout textInputLayout2 = this.f28281a.f27538e;
            l.d(textInputLayout2, "senderInput");
            EditText editText2 = textInputLayout2.getEditText();
            if (editText2 != null) {
                editable = editText2.getText();
            }
            sb2.append((Object) editable);
            sb2.append(" could not be added. Task failed");
            Toast.makeText(context2, sb2.toString(), 1).show();
        }
    }
}
