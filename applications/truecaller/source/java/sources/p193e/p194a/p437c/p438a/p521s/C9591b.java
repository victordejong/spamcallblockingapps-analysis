package p193e.p194a.p437c.p438a.p521s;

import android.text.Editable;
import android.text.TextWatcher;
import com.truecaller.insights.p168ui.widget.SearchEditText;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.c.a.s.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/b.class */
public final class C9591b implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ SearchEditText f29007a;

    public C9591b(SearchEditText searchEditText) {
        this.f29007a = searchEditText;
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
        SearchEditText searchEditText = this.f29007a;
        int i4 = SearchEditText.f12946h;
        if (!(!h.j(searchEditText.getText()))) {
            searchEditText.m35145a();
        } else if (searchEditText.f12948e) {
            searchEditText.setCompoundDrawables(searchEditText.f12947d, searchEditText.getCompoundDrawables()[1], searchEditText.getCompoundDrawables()[2], searchEditText.getCompoundDrawables()[3]);
        } else {
            searchEditText.setCompoundDrawables(searchEditText.getCompoundDrawables()[0], searchEditText.getCompoundDrawables()[1], searchEditText.f12947d, searchEditText.getCompoundDrawables()[3]);
        }
    }
}
