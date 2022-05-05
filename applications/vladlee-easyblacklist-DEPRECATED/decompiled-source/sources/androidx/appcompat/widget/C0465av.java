package androidx.appcompat.widget;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: androidx.appcompat.widget.av */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/av.class */
final class C0465av implements TextWatcher {

    /* renamed from: a */
    final /* synthetic */ SearchView f2287a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0465av(SearchView searchView) {
        this.f2287a = searchView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f2287a.m9349b(charSequence);
    }
}
