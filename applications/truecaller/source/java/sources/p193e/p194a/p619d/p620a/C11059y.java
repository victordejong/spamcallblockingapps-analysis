package p193e.p194a.p619d.p620a;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import s1.u.s;
/* renamed from: e.a.d.a.y */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/y.class */
public final class C11059y implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C11041v f32697a;

    public C11059y(ArrayAdapter arrayAdapter, C11041v c11041v) {
        this.f32697a = c11041v;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C11519b c11519b = (C11519b) this.f32697a.f32662d.getValue();
        AbstractC11514a abstractC11514a = EnumC10990c.values()[i].f32550a;
        this.f32697a.f32662d.setValue(c11519b.m24558a(abstractC11514a, abstractC11514a instanceof AbstractC11514a.C11515a ? C25225a.m3962T1(((AbstractC11514a.C11515a) abstractC11514a).f33807a) : s.a));
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
