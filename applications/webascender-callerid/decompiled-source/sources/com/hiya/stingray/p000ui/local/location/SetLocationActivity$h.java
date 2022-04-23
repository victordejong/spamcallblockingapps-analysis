package com.hiya.stingray.p000ui.local.location;

import android.view.View;
import android.widget.EditText;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.SetLocationActivity$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/SetLocationActivity$h.class */
final class SetLocationActivity$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SetLocationActivity f58f;

    SetLocationActivity$h(SetLocationActivity setLocationActivity) {
        this.f58f = setLocationActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EditText editText = (EditText) this.f58f.O(o.G3);
        k.c(editText, "searchText");
        editText.getText().clear();
    }
}
