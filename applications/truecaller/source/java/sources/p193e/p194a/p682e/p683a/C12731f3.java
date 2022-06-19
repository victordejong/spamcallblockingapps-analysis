package p193e.p194a.p682e.p683a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.truecaller.C2752R;
/* renamed from: e.a.e.a.f3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/f3.class */
public class C12731f3 extends AbstractC12695c2 {

    /* renamed from: a */
    public TextView f37098a;

    /* renamed from: RA */
    public static C12731f3 m22714RA(int i) {
        C12731f3 c12731f3 = new C12731f3();
        c12731f3.getArguments().putInt("message", i);
        c12731f3.setCancelable(false);
        return c12731f3;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C2752R.layout.dialog_progress, viewGroup);
        this.f37098a = (TextView) inflate.findViewById(2131364785);
        this.f37098a.setText(getArguments().getInt("message"));
        return inflate;
    }
}
