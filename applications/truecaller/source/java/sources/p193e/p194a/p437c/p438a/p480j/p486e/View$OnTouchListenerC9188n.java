package p193e.p194a.p437c.p438a.p480j.p486e;

import android.view.MotionEvent;
import android.view.View;
import com.truecaller.insights.p168ui.filters.view.FilterSearchEditText;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.c.a.j.e.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/n.class */
public final class View$OnTouchListenerC9188n implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ FilterSearchEditText f27932a;

    public View$OnTouchListenerC9188n(FilterSearchEditText filterSearchEditText) {
        this.f27932a = filterSearchEditText;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        l.e(motionEvent, "event");
        if (this.f27932a.getCompoundDrawables()[(this.f27932a.f12731f ? null : 2) == 1 ? 1 : 0] != null && motionEvent.getAction() == 1) {
            boolean m = h.m(this.f27932a.getText());
            if (m) {
                FilterSearchEditText filterSearchEditText = this.f27932a;
                if (filterSearchEditText.f12731f) {
                    if (motionEvent.getX() < this.f27932a.f12730e.getIntrinsicWidth() + this.f27932a.getPaddingLeft()) {
                        z = true;
                        filterSearchEditText.f12732g = z;
                        FilterSearchEditText filterSearchEditText2 = this.f27932a;
                        filterSearchEditText2.f12733h = filterSearchEditText2.f12731f && motionEvent.getX() > ((float) ((this.f27932a.getWidth() - this.f27932a.getPaddingRight()) - this.f27932a.f12730e.getIntrinsicWidth()));
                    }
                }
                z = false;
                filterSearchEditText.f12732g = z;
                FilterSearchEditText filterSearchEditText22 = this.f27932a;
                filterSearchEditText22.f12733h = filterSearchEditText22.f12731f && motionEvent.getX() > ((float) ((this.f27932a.getWidth() - this.f27932a.getPaddingRight()) - this.f27932a.f12730e.getIntrinsicWidth()));
            }
            FilterSearchEditText filterSearchEditText3 = this.f27932a;
            if ((!filterSearchEditText3.f12732g && !filterSearchEditText3.f12733h) || !m) {
                return false;
            }
            filterSearchEditText3.setText("");
            a<s> aVar = this.f27932a.f12734i;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
            this.f27932a.m35203a();
            return false;
        }
        return false;
    }
}
