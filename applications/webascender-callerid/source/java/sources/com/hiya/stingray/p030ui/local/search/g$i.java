package com.hiya.stingray.p030ui.local.search;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.o;
import com.hiya.stingray.util.C1808e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.search.g$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/search/g$i.class */
public final class g$i implements TextWatcher {

    /* renamed from: f */
    final /* synthetic */ g f4754f;

    g$i(g gVar) {
        this.f4754f = gVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        g.g1(this.f4754f).onNext(String.valueOf(editable));
        this.f4754f.m1().f().getFilter().filter(String.valueOf(editable));
        g gVar = this.f4754f;
        int i = o.j2;
        RecyclerView f1 = gVar.f1(i);
        k.c(f1, "mainSearchRecyclerView");
        RecyclerView f12 = this.f4754f.f1(i);
        k.c(f12, "mainSearchRecyclerView");
        C1808e0.m960C(f1, C1808e0.m951h(f12));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
