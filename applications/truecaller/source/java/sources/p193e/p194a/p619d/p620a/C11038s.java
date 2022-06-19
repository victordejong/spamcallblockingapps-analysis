package p193e.p194a.p619d.p620a;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
/* renamed from: e.a.d.a.s */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/s.class */
public final class C11038s implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C11029o f32652a;

    public C11038s(ArrayAdapter arrayAdapter, C11029o c11029o) {
        this.f32652a = c11029o;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f32652a.f32619b.setValue(EnumC10993d.values()[i].f32554a);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
