package p193e.p194a.p619d.p643d.p644a;

import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/i.class */
public final class C11672i extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public final /* synthetic */ VoipContactsActivity f34241a;

    public C11672i(VoipContactsActivity voipContactsActivity) {
        this.f34241a = voipContactsActivity;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        l.e(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i);
        this.f34241a.m34340wa().mo24255Fa();
    }
}
