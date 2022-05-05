package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: androidx.appcompat.widget.am */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/am.class */
final class C0447am implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    final /* synthetic */ ListPopupWindow f2242a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0447am(ListPopupWindow listPopupWindow) {
        this.f2242a = listPopupWindow;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0438ai aiVar;
        if (i != -1 && (aiVar = this.f2242a.f1979c) != null) {
            aiVar.m9167a(false);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
