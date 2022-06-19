package p193e.p194a.p804h.p806b.p807d.p808a.p811b;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.flashsdk.p166ui.ProgressAwareFlashButton;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
/* renamed from: e.a.h.b.d.a.b.r$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/a/b/r$a.class */
public final class r$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ r f41920a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC18905m f41921b;

    public r$a(r rVar, AbstractC18905m abstractC18905m) {
        this.f41920a = rVar;
        this.f41921b = abstractC18905m;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!this.f41921b.mo14327t(new C18900h("ItemEvent.CLICKED", (RecyclerView.AbstractC0313c0) this.f41920a, (View) null, (Object) null, 12))) {
            ((ProgressAwareFlashButton) this.f41920a.b.getValue()).callOnClick();
        }
    }
}
