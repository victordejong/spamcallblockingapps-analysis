package p193e.p194a.p437c.p438a.p521s;

import android.view.MotionEvent;
import android.view.View;
import com.truecaller.insights.p168ui.widget.SearchEditText;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.c.a.s.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/a.class */
public final class View$OnTouchListenerC9590a implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ SearchEditText f29006a;

    public View$OnTouchListenerC9590a(SearchEditText searchEditText) {
        this.f29006a = searchEditText;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        l.e(motionEvent, "event");
        if (this.f29006a.getCompoundDrawables()[(this.f29006a.f12948e ? null : 2) == 1 ? 1 : 0] != null && motionEvent.getAction() == 1) {
            boolean m = h.m(this.f29006a.getText());
            if (m) {
                SearchEditText searchEditText = this.f29006a;
                if (searchEditText.f12948e) {
                    if (motionEvent.getX() < this.f29006a.f12947d.getIntrinsicWidth() + this.f29006a.getPaddingLeft()) {
                        z = true;
                        searchEditText.f12949f = z;
                        SearchEditText searchEditText2 = this.f29006a;
                        searchEditText2.f12950g = searchEditText2.f12948e && motionEvent.getX() > ((float) ((this.f29006a.getWidth() - this.f29006a.getPaddingRight()) - this.f29006a.f12947d.getIntrinsicWidth()));
                    }
                }
                z = false;
                searchEditText.f12949f = z;
                SearchEditText searchEditText22 = this.f29006a;
                searchEditText22.f12950g = searchEditText22.f12948e && motionEvent.getX() > ((float) ((this.f29006a.getWidth() - this.f29006a.getPaddingRight()) - this.f29006a.f12947d.getIntrinsicWidth()));
            }
            SearchEditText searchEditText3 = this.f29006a;
            if ((!searchEditText3.f12949f && !searchEditText3.f12950g) || !m) {
                return false;
            }
            searchEditText3.setText("");
            this.f29006a.m35145a();
            return false;
        }
        return false;
    }
}
