package p193e.p194a.p437c.p438a.p480j.p483c;

import android.view.MotionEvent;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/d.class */
public final class C9145d implements RecyclerView.AbstractC0337s {
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: a */
    public void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent) {
        l.e(recyclerView, ViewAction.VIEW);
        l.e(motionEvent, "event");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: b */
    public boolean mo3154b(RecyclerView recyclerView, MotionEvent motionEvent) {
        ViewParent parent;
        l.e(recyclerView, "rv");
        l.e(motionEvent, "e");
        if (motionEvent.getAction() == 0 && (parent = recyclerView.getParent()) != null) {
            parent.requestDisallowInterceptTouchEvent(true);
            return false;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: c */
    public void mo3153c(boolean z) {
    }
}
