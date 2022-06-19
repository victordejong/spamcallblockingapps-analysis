package p193e.p194a.p804h.p806b;

import android.text.Editable;
import android.text.TextWatcher;
import e.a.h.b.e.e.a;
import s1.z.c.l;
/* renamed from: e.a.h.b.c$d */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/c$d.class */
public final class c$d implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ c f41889a;

    public c$d(c cVar) {
        this.f41889a = cVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "s");
        this.f41889a.s.Kg(new a(editable));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
