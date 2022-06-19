package p193e.p194a.p852i.p879e.p883g.p884a.p886f.p888b;

import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
/* renamed from: e.a.i.e.g.a.f.b.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/g/a/f/b/a$a.class */
public final class a$a implements View.OnFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatAutoCompleteTextView f43114a;

    public a$a(AppCompatAutoCompleteTextView appCompatAutoCompleteTextView) {
        this.f43114a = appCompatAutoCompleteTextView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (z) {
            this.f43114a.showDropDown();
        }
    }
}
