package p193e.p194a.p437c.p438a.p494m.p497c;

import android.text.Editable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p494m.p496b.C9259c0;
import p193e.p194a.p437c.p438a.p494m.p496b.C9272l;
import p193e.p194a.p437c.p438a.p494m.p496b.C9286u;
import p193e.p194a.p437c.p438a.p494m.p496b.C9289x;
import p193e.p194a.p437c.p579q.C10516k;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.c.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/j.class */
public final class C9328j implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C9322i f28358a;

    @e(c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$setupClickListeners$1$onItemSelected$1", f = "InsightsUpdatesClassViewer.kt", l = {107}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.c.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/j$a.class */
    public static final class C9329a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f28359e;

        /* renamed from: g */
        public final /* synthetic */ String f28361g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9329a(String str, d dVar) {
            super(2, dVar);
            C9328j.this = r5;
            this.f28361g = str;
        }

        /* renamed from: i */
        public final d<s> m27683i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9329a(this.f28361g, dVar);
        }

        /* renamed from: k */
        public final Object m27682k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9329a(this.f28361g, dVar).m27681s(s.a);
        }

        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v68, types: [long] */
        /* renamed from: s */
        public final Object m27681s(Object obj) {
            char c;
            a aVar = a.a;
            int i = this.f28359e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C9289x m27694OA = C9322i.m27694OA(C9328j.this.f28358a);
                String str = this.f28361g;
                EditText editText = C9328j.this.f28358a.m27693PA().f27706c;
                l.d(editText, "binding.msgLimitValue");
                Editable text = editText.getText();
                l.d(text, "it");
                int parseInt = text.length() > 0 ? Integer.parseInt(text.toString()) : 0;
                String str2 = C9328j.this.f28358a.f28348g;
                if (str2.length() > 0) {
                    Date parse = new SimpleDateFormat("dd-mm-yyyy").parse(str2);
                    l.d(parse, "SimpleDateFormat(\"dd-mm-yyyy\").parse(this)");
                    c = parse.getTime();
                } else {
                    c = C22128a.m8638c();
                }
                this.f28359e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(m27694OA.f28263b, new C9259c0(m27694OA, str, parseInt, c, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<C10516k> list = (List) obj;
            C9286u c9286u = C9328j.this.f28358a.f28347f;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C10516k c10516k : list) {
                arrayList.add(new C9272l(c10516k, false, 2));
            }
            Objects.requireNonNull(c9286u);
            l.e(arrayList, "newData");
            c9286u.f28257a.clear();
            c9286u.f28257a.addAll(arrayList);
            C9328j.this.f28358a.f28347f.notifyDataSetChanged();
            return s.a;
        }
    }

    public C9328j(C9322i c9322i) {
        this.f28358a = c9322i;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C9322i c9322i = this.f28358a;
        s1.a.l[] lVarArr = C9322i.f28341i;
        Object itemAtPosition = c9322i.m27693PA().f27704a.getItemAtPosition(i);
        Objects.requireNonNull(itemAtPosition, "null cannot be cast to non-null type kotlin.String");
        s1.a.a.a.v0.f.d.w2(this.f28358a.f28346e, (f) null, (j0) null, new C9329a((String) itemAtPosition, null), 3, (Object) null);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        C9286u c9286u = this.f28358a.f28347f;
        Collection<? extends C9272l> collection = s1.u.s.a;
        Objects.requireNonNull(c9286u);
        l.e(collection, "newData");
        c9286u.f28257a.clear();
        c9286u.f28257a.addAll(collection);
        this.f28358a.f28347f.notifyDataSetChanged();
    }
}
