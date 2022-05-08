package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import java.util.ArrayList;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:androidx/transition/GhostViewHolder.class */
class GhostViewHolder extends FrameLayout {
    @NonNull

    /* renamed from: f */
    private ViewGroup f5157f;

    /* renamed from: g */
    private boolean f5158g = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GhostViewHolder(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f5157f = viewGroup;
        viewGroup.setTag(C0542R.C0545id.ghost_view_holder, this);
        ViewGroupUtils.m16707b(this.f5157f).mo16710c(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static GhostViewHolder m16831b(@NonNull ViewGroup viewGroup) {
        return (GhostViewHolder) viewGroup.getTag(C0542R.C0545id.ghost_view_holder);
    }

    /* renamed from: c */
    private int m16830c(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            m16829d(((GhostViewPort) getChildAt(i2)).f5168h, arrayList2);
            if (m16827f(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    /* renamed from: d */
    private static void m16829d(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m16829d((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* renamed from: e */
    private static boolean m16828e(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        boolean z = false;
        boolean z2 = false;
        if (Build.VERSION.SDK_INT < 21 || view.getZ() == view2.getZ()) {
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(ViewGroupUtils.m16708a(viewGroup, i));
                if (childAt == view) {
                    break;
                } else if (childAt == view2) {
                    break;
                }
            }
            z = true;
            return z;
        }
        if (view.getZ() > view2.getZ()) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: f */
    private static boolean m16827f(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        boolean z = true;
        if (!arrayList.isEmpty()) {
            z = true;
            if (!arrayList2.isEmpty()) {
                if (arrayList.get(0) != arrayList2.get(0)) {
                    z = true;
                } else {
                    int min = Math.min(arrayList.size(), arrayList2.size());
                    for (int i = 1; i < min; i++) {
                        View view = arrayList.get(i);
                        View view2 = arrayList2.get(i);
                        if (view != view2) {
                            return m16828e(view, view2);
                        }
                    }
                    z = arrayList2.size() == min;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m16832a(GhostViewPort ghostViewPort) {
        ArrayList<View> arrayList = new ArrayList<>();
        m16829d(ghostViewPort.f5168h, arrayList);
        int c = m16830c(arrayList);
        if (c < 0 || c >= getChildCount()) {
            addView(ghostViewPort);
        } else {
            addView(ghostViewPort, c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m16826g() {
        if (this.f5158g) {
            ViewGroupUtils.m16707b(this.f5157f).mo16709d(this);
            ViewGroupUtils.m16707b(this.f5157f).mo16710c(this);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (this.f5158g) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f5157f.setTag(C0542R.C0545id.ghost_view_holder, null);
            ViewGroupUtils.m16707b(this.f5157f).mo16709d(this);
            this.f5158g = false;
        }
    }
}
