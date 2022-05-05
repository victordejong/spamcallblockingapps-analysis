package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.C0869ac;
import androidx.p026b.C0529a;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.ag */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ag.class */
public final class RunnableC0874ag implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC0880am f3712a;

    /* renamed from: b */
    final /* synthetic */ C0529a f3713b;

    /* renamed from: c */
    final /* synthetic */ Object f3714c;

    /* renamed from: d */
    final /* synthetic */ C0869ac.C0870a f3715d;

    /* renamed from: e */
    final /* synthetic */ ArrayList f3716e;

    /* renamed from: f */
    final /* synthetic */ View f3717f;

    /* renamed from: g */
    final /* synthetic */ Fragment f3718g;

    /* renamed from: h */
    final /* synthetic */ Fragment f3719h;

    /* renamed from: i */
    final /* synthetic */ boolean f3720i;

    /* renamed from: j */
    final /* synthetic */ ArrayList f3721j;

    /* renamed from: k */
    final /* synthetic */ Object f3722k;

    /* renamed from: l */
    final /* synthetic */ Rect f3723l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0874ag(AbstractC0880am amVar, C0529a aVar, Object obj, C0869ac.C0870a aVar2, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f3712a = amVar;
        this.f3713b = aVar;
        this.f3714c = obj;
        this.f3715d = aVar2;
        this.f3716e = arrayList;
        this.f3717f = view;
        this.f3718g = fragment;
        this.f3719h = fragment2;
        this.f3720i = z;
        this.f3721j = arrayList2;
        this.f3722k = obj2;
        this.f3723l = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0529a<String, View> a = C0869ac.m7808a(this.f3712a, this.f3713b, this.f3714c, this.f3715d);
        if (a != null) {
            this.f3716e.addAll(a.values());
            this.f3716e.add(this.f3717f);
        }
        C0869ac.m7812a(this.f3718g, this.f3719h, this.f3720i, a);
        Object obj = this.f3714c;
        if (obj != null) {
            this.f3712a.mo6487a(obj, this.f3721j, this.f3716e);
            View a2 = C0869ac.m7815a(a, this.f3715d, this.f3722k, this.f3720i);
            if (a2 != null) {
                AbstractC0880am.m7794a(a2, this.f3723l);
            }
        }
    }
}
