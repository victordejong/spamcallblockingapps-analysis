package androidx.preference;

import android.os.Bundle;
import android.view.View;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.p038a.C0696d;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.preference.aa */
/* loaded from: classes-dex2jar.jar:androidx/preference/aa.class */
public final class C0999aa extends C0689a {

    /* renamed from: a */
    final /* synthetic */ C1047z f4133a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0999aa(C1047z zVar) {
        this.f4133a = zVar;
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final void mo802a(View view, C0696d dVar) {
        Preference a;
        this.f4133a.f4405b.mo802a(view, dVar);
        int e = RecyclerView.m7213e(view);
        RecyclerView.AbstractC1056a c = this.f4133a.f4404a.m7226c();
        if ((c instanceof C1036t) && (a = ((C1036t) c).m7376a(e)) != null) {
            a.mo7443a(dVar);
        }
    }

    @Override // androidx.core.p037g.C0689a
    /* renamed from: a */
    public final boolean mo6385a(View view, int i, Bundle bundle) {
        return this.f4133a.f4405b.mo6385a(view, i, bundle);
    }
}
