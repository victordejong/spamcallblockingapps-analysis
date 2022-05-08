package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.p038a.C0696d;
import androidx.recyclerview.widget.RecyclerView;
import com.crashlytics.android.core.CodedOutputStream;
/* renamed from: androidx.recyclerview.widget.ak */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ak.class */
public class C1098ak extends C0689a {

    /* renamed from: d */
    final RecyclerView f4750d;

    /* renamed from: e */
    final C0689a f4751e = new C1099a(this);

    /* renamed from: androidx.recyclerview.widget.ak$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ak$a.class */
    public static final class C1099a extends C0689a {

        /* renamed from: a */
        final C1098ak f4752a;

        public C1099a(C1098ak akVar) {
            this.f4752a = akVar;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            super.mo802a(view, dVar);
            if (!this.f4752a.f4750d.m7200k() && this.f4752a.f4750d.f4550n != null) {
                this.f4752a.f4750d.f4550n.m7140a(view, dVar);
            }
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final boolean mo6385a(View view, int i, Bundle bundle) {
            if (super.mo6385a(view, i, bundle)) {
                return true;
            }
            if (this.f4752a.f4750d.m7200k() || this.f4752a.f4750d.f4550n != null) {
            }
            return false;
        }
    }

    public C1098ak(RecyclerView recyclerView) {
        this.f4750d = recyclerView;
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final void mo802a(View view, C0696d dVar) {
        super.mo802a(view, dVar);
        dVar.m8514b((CharSequence) RecyclerView.class.getName());
        if (!this.f4750d.m7200k() && this.f4750d.f4550n != null) {
            RecyclerView.AbstractC1066i iVar = this.f4750d.f4550n;
            RecyclerView.C1074n nVar = iVar.f4590q.f4541e;
            RecyclerView.C1079q qVar = iVar.f4590q.f4492C;
            if (iVar.f4590q.canScrollVertically(-1) || iVar.f4590q.canScrollHorizontally(-1)) {
                dVar.m8535a(8192);
                dVar.m8482k(true);
            }
            if (iVar.f4590q.canScrollVertically(1) || iVar.f4590q.canScrollHorizontally(1)) {
                dVar.m8535a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                dVar.m8482k(true);
            }
            dVar.m8523a(C0696d.C0698b.m8462a(iVar.mo6977a(nVar, qVar), iVar.mo6958b(nVar, qVar)));
        }
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final boolean mo6385a(View view, int i, Bundle bundle) {
        if (super.mo6385a(view, i, bundle)) {
            return true;
        }
        if (this.f4750d.m7200k() || this.f4750d.f4550n == null) {
            return false;
        }
        return this.f4750d.f4550n.m7113i(i);
    }

    /* renamed from: b */
    public C0689a mo6852b() {
        return this.f4751e;
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: d */
    public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo1060d(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !this.f4750d.m7200k()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.f4550n != null) {
                recyclerView.f4550n.mo6980a(accessibilityEvent);
            }
        }
    }
}
