package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$a.class */
class i0$a implements AdapterView.OnItemSelectedListener {

    /* renamed from: f */
    final /* synthetic */ i0 f509f;

    i0$a(i0 i0Var) {
        this.f509f = i0Var;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0101e0 c0101e0;
        if (i == -1 || (c0101e0 = this.f509f.h) == null) {
            return;
        }
        c0101e0.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
