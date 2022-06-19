package p193e.p194a.p619d.p620a;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
/* renamed from: e.a.d.a.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/c0.class */
public final class C10992c0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C10975a0 f32551a;

    public C10992c0(ArrayAdapter arrayAdapter, C10975a0 c10975a0) {
        this.f32551a = c10975a0;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f32551a.f32512c.setValue(EnumC11024k.values()[i].f32604a);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
