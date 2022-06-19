package p193e.p194a.p619d.p620a;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
/* renamed from: e.a.d.a.z */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/z.class */
public final class C11060z implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C11041v f32698a;

    public C11060z(ArrayAdapter arrayAdapter, C11041v c11041v) {
        this.f32698a = c11041v;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f32698a.f32661c.setValue(EnumC11010h.values()[i].f32583a);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
