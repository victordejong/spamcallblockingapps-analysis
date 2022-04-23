package com.hiya.stingray.p000ui.local.location;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.SetLocationActivity$d */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/SetLocationActivity$d.class */
final class SetLocationActivity$d implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ SetLocationActivity f55f;

    SetLocationActivity$d(SetLocationActivity setLocationActivity) {
        this.f55f = setLocationActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if ((keyEvent == null || keyEvent.getAction() != 0) && i != 3) {
            return true;
        }
        SetLocationActivity setLocationActivity = this.f55f;
        int i2 = o.G3;
        EditText editText = (EditText) setLocationActivity.O(i2);
        k.c(editText, "searchText");
        if (k.b(editText.getText().toString(), "��")) {
            SetLocationActivity setLocationActivity2 = this.f55f;
            setLocationActivity2.t(setLocationActivity2.X().e());
            return true;
        }
        f a0 = this.f55f.a0();
        EditText editText2 = (EditText) this.f55f.O(i2);
        k.c(editText2, "searchText");
        a0.z(editText2.getText().toString());
        return true;
    }
}
