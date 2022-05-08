package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: androidx.appcompat.widget.bd */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bd.class */
final class C0474bd implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f2296a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0474bd(SearchView searchView) {
        this.f2296a = searchView;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f2296a.m9343d(i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
