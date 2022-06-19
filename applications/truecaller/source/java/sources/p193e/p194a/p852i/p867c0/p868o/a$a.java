package p193e.p194a.p852i.p867c0.p868o;

import android.view.View;
import android.widget.AutoCompleteTextView;
/* renamed from: e.a.i.c0.o.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/o/a$a.class */
public final class a$a implements View.OnFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ AutoCompleteTextView f43006a;

    public a$a(AutoCompleteTextView autoCompleteTextView) {
        this.f43006a = autoCompleteTextView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            this.f43006a.showDropDown();
        }
    }
}
