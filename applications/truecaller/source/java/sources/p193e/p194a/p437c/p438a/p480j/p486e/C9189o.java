package p193e.p194a.p437c.p438a.p480j.p486e;

import android.text.Editable;
import android.text.TextWatcher;
import com.truecaller.insights.p168ui.filters.view.FilterSearchEditText;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.c.a.j.e.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/o.class */
public final class C9189o implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ FilterSearchEditText f27933a;

    public C9189o(FilterSearchEditText filterSearchEditText) {
        this.f27933a = filterSearchEditText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "arg0");
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
        FilterSearchEditText filterSearchEditText = this.f27933a;
        int i4 = FilterSearchEditText.f12728j;
        if (!(!h.j(filterSearchEditText.getText()))) {
            filterSearchEditText.m35203a();
        } else if (filterSearchEditText.f12731f) {
            filterSearchEditText.setCompoundDrawables(filterSearchEditText.f12730e, filterSearchEditText.getCompoundDrawables()[1], null, filterSearchEditText.getCompoundDrawables()[3]);
        } else {
            filterSearchEditText.setCompoundDrawables(null, filterSearchEditText.getCompoundDrawables()[1], filterSearchEditText.f12730e, filterSearchEditText.getCompoundDrawables()[3]);
        }
    }
}
