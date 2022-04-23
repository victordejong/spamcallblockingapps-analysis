package com.hiya.stingray.p000ui.local.location;

import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.SetLocationActivity$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/SetLocationActivity$c.class */
final class SetLocationActivity$c implements View.OnFocusChangeListener {

    /* renamed from: f */
    final /* synthetic */ SetLocationActivity f54f;

    SetLocationActivity$c(SetLocationActivity setLocationActivity) {
        this.f54f = setLocationActivity;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            SetLocationActivity setLocationActivity = this.f54f;
            int i = o.G3;
            EditText editText = (EditText) setLocationActivity.O(i);
            k.c(editText, "searchText");
            editText.setHint(this.f54f.getString(2131820961));
            EditText editText2 = (EditText) this.f54f.O(i);
            k.c(editText2, "searchText");
            editText2.getText().clear();
            SetLocationActivity.T(this.f54f);
            SetLocationActivity setLocationActivity2 = this.f54f;
            RecyclerView O = setLocationActivity2.O(o.h3);
            k.c(O, "recentPlacesRecyclerView");
            SetLocationActivity.V(setLocationActivity2, O);
        }
    }
}
