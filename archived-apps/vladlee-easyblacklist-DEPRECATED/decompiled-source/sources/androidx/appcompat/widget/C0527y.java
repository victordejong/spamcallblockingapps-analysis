package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.AppCompatSpinner;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public final class C0527y implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ AppCompatSpinner f2458a;

    /* renamed from: b */
    final /* synthetic */ AppCompatSpinner.C0411c f2459b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0527y(AppCompatSpinner.C0411c cVar, AppCompatSpinner appCompatSpinner) {
        this.f2459b = cVar;
        this.f2458a = appCompatSpinner;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        AppCompatSpinner.this.setSelection(i);
        if (AppCompatSpinner.this.getOnItemClickListener() != null) {
            AppCompatSpinner.this.performItemClick(view, i, this.f2459b.f1926a.getItemId(i));
        }
        this.f2459b.mo9377d();
    }
}
