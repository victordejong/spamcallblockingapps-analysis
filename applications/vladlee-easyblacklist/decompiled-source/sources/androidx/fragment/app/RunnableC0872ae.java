package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.ae */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ae.class */
public final class RunnableC0872ae implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Object f3697a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0880am f3698b;

    /* renamed from: c */
    final /* synthetic */ View f3699c;

    /* renamed from: d */
    final /* synthetic */ Fragment f3700d;

    /* renamed from: e */
    final /* synthetic */ ArrayList f3701e;

    /* renamed from: f */
    final /* synthetic */ ArrayList f3702f;

    /* renamed from: g */
    final /* synthetic */ ArrayList f3703g;

    /* renamed from: h */
    final /* synthetic */ Object f3704h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0872ae(Object obj, AbstractC0880am amVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f3697a = obj;
        this.f3698b = amVar;
        this.f3699c = view;
        this.f3700d = fragment;
        this.f3701e = arrayList;
        this.f3702f = arrayList2;
        this.f3703g = arrayList3;
        this.f3704h = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f3697a;
        if (obj != null) {
            this.f3698b.mo6480c(obj, this.f3699c);
            this.f3702f.addAll(C0869ac.m7805a(this.f3698b, this.f3697a, this.f3700d, this.f3701e, this.f3699c));
        }
        if (this.f3703g != null) {
            if (this.f3704h != null) {
                ArrayList<View> arrayList = new ArrayList<>();
                arrayList.add(this.f3699c);
                this.f3698b.mo6482b(this.f3704h, this.f3703g, arrayList);
            }
            this.f3703g.clear();
            this.f3703g.add(this.f3699c);
        }
    }
}
