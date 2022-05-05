package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: androidx.appcompat.widget.bc */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bc.class */
final class C0473bc implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f2295a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0473bc(SearchView searchView) {
        this.f2295a = searchView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f2295a.m9359a(i);
    }
}
