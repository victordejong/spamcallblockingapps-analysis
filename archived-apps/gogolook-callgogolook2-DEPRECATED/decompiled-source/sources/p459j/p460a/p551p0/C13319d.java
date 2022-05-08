package p459j.p460a.p551p0;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: j.a.p0.d */
/* loaded from: classes3-dex2jar.jar:j/a/p0/d.class */
public class C13319d implements RecyclerView.OnItemTouchListener {

    /* renamed from: a */
    public AbstractC13318c f29976a;

    /* renamed from: b */
    public GestureDetector f29977b;

    /* renamed from: c */
    public volatile int[] f29978c = {-1, -1};

    /* renamed from: j.a.p0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/d$a.class */
    public class C13320a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        public final /* synthetic */ RecyclerView f29979a;

        public C13320a(RecyclerView recyclerView) {
            this.f29979a = recyclerView;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View findChildViewUnder;
            RecyclerView recyclerView = this.f29979a;
            if (recyclerView != null && (findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) != null && findChildViewUnder != null && C13319d.this.f29976a != null) {
                C13319d.this.f29976a.mo4266a(findChildViewUnder, this.f29979a.getChildAdapterPosition(findChildViewUnder));
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return true;
        }
    }

    public C13319d(Context context, RecyclerView recyclerView, AbstractC13318c cVar) {
        this.f29976a = cVar;
        this.f29977b = new GestureDetector(context, new C13320a(recyclerView));
    }

    /* renamed from: a */
    public View m4264a(View view, float f, float f2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                float translationX = ViewCompat.getTranslationX(childAt);
                float translationY = ViewCompat.getTranslationY(childAt);
                childAt.getLocationOnScreen(this.f29978c);
                if (childAt.getVisibility() == 0 && f >= this.f29978c[0] + translationX && f <= ((this.f29978c[0] + childAt.getRight()) - childAt.getLeft()) + translationX && f2 >= this.f29978c[1] + translationY && f2 <= ((this.f29978c[1] + childAt.getBottom()) - childAt.getTop()) + translationY) {
                    View view2 = childAt;
                    if (childAt instanceof ViewGroup) {
                        view2 = m4264a(childAt, f, f2);
                    }
                    return view2;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        View findChildViewUnder;
        View a;
        if (!this.f29977b.onTouchEvent(motionEvent) || (findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) == null || (a = m4264a(findChildViewUnder, motionEvent.getRawX(), motionEvent.getRawY())) == null || this.f29976a == null || !this.f29977b.onTouchEvent(motionEvent)) {
            return false;
        }
        return this.f29976a.mo4265b(a, recyclerView.getChildAdapterPosition(findChildViewUnder));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
    }
}
