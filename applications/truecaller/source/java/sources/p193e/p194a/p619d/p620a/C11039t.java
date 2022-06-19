package p193e.p194a.p619d.p620a;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import java.util.List;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import q3.a.x2.a1;
/* renamed from: e.a.d.a.t */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/t.class */
public final class C11039t implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ List f32653a;

    /* renamed from: b */
    public final /* synthetic */ a1 f32654b;

    public C11039t(ArrayAdapter arrayAdapter, List list, a1 a1Var) {
        this.f32653a = list;
        this.f32654b = a1Var;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f32654b.setValue((AbstractC11416j) this.f32653a.get(i));
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
