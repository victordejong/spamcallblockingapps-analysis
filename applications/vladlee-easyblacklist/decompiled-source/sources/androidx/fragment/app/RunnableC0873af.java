package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.p026b.C0529a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.af */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/af.class */
public final class RunnableC0873af implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Fragment f3705a;

    /* renamed from: b */
    final /* synthetic */ Fragment f3706b;

    /* renamed from: c */
    final /* synthetic */ boolean f3707c;

    /* renamed from: d */
    final /* synthetic */ C0529a f3708d;

    /* renamed from: e */
    final /* synthetic */ View f3709e;

    /* renamed from: f */
    final /* synthetic */ AbstractC0880am f3710f;

    /* renamed from: g */
    final /* synthetic */ Rect f3711g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0873af(Fragment fragment, Fragment fragment2, boolean z, C0529a aVar, View view, AbstractC0880am amVar, Rect rect) {
        this.f3705a = fragment;
        this.f3706b = fragment2;
        this.f3707c = z;
        this.f3708d = aVar;
        this.f3709e = view;
        this.f3710f = amVar;
        this.f3711g = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0869ac.m7812a(this.f3705a, this.f3706b, this.f3707c, this.f3708d);
        View view = this.f3709e;
        if (view != null) {
            AbstractC0880am.m7794a(view, this.f3711g);
        }
    }
}
