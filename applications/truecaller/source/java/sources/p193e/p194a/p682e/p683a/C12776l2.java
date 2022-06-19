package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AlertController;
import com.truecaller.C2752R;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
/* renamed from: e.a.e.a.l2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/l2.class */
public class C12776l2 extends AbstractC12695c2 {

    /* renamed from: a */
    public EditText f37231a;

    public Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        int i = arguments.getInt("layout_resource");
        int i2 = arguments.getInt("title_resource");
        String string = arguments.getString("title");
        View inflate = View.inflate(getActivity(), i, null);
        this.f37231a = (EditText) inflate.findViewById(C2752R.C2754id.number_edit);
        Bundle arguments2 = getArguments();
        this.f37231a.setText(arguments2.getString("initial_text"));
        this.f37231a.setSelectAllOnFocus(true);
        int i3 = arguments2.getInt("hint_resource");
        if (i3 > 0) {
            this.f37231a.setHint(i3);
        }
        g$a g_a = new g$a(getActivity());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        g_a.m3662g(2131887867, new DialogInterface.OnClickListener() { // from class: e.a.e.a.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                C12776l2.this.m22742OA(i4);
            }
        });
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.e.a.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                C12776l2.this.m22742OA(i4);
            }
        });
        if (i2 > 0) {
            g_a.m3656m(i2);
        } else if (string != null) {
            g_a.f70854a.f154d = string;
        }
        g m3668a = g_a.m3668a();
        m3668a.getWindow().setSoftInputMode(5);
        return m3668a;
    }
}
