package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
public abstract class RecyclerView$l {
    private AbstractC0361b mListener = null;
    private ArrayList<AbstractC0360a> mFinishedListeners = new ArrayList<>();
    private long mAddDuration = 120;
    private long mRemoveDuration = 120;
    private long mMoveDuration = 250;
    private long mChangeDuration = 250;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$a.class */
    public interface AbstractC0360a {
        /* renamed from: a */
        void m5266a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$b.class */
    interface AbstractC0361b {
        /* renamed from: a */
        void m5265a(RecyclerView$d0 recyclerView$d0);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l$c.class */
    public static class C0362c {

        /* renamed from: a */
        public int f1943a;

        /* renamed from: b */
        public int f1944b;

        /* renamed from: a */
        public C0362c m5264a(RecyclerView$d0 recyclerView$d0) {
            m5263b(recyclerView$d0, 0);
            return this;
        }

        /* renamed from: b */
        public C0362c m5263b(RecyclerView$d0 recyclerView$d0, int i) {
            View view = recyclerView$d0.itemView;
            this.f1943a = view.getLeft();
            this.f1944b = view.getTop();
            view.getRight();
            view.getBottom();
            return this;
        }
    }

    public static int buildAdapterChangeFlagsForAnimations(RecyclerView$d0 recyclerView$d0) {
        int i = recyclerView$d0.mFlags & 14;
        if (recyclerView$d0.isInvalid()) {
            return 4;
        }
        int i2 = i;
        if ((i & 4) == 0) {
            int oldPosition = recyclerView$d0.getOldPosition();
            int adapterPosition = recyclerView$d0.getAdapterPosition();
            i2 = i;
            if (oldPosition != -1) {
                i2 = i;
                if (adapterPosition != -1) {
                    i2 = i;
                    if (oldPosition != adapterPosition) {
                        i2 = i | 2048;
                    }
                }
            }
        }
        return i2;
    }

    public abstract boolean animateAppearance(RecyclerView$d0 recyclerView$d0, C0362c c0362c, C0362c c0362c2);

    public abstract boolean animateChange(RecyclerView$d0 recyclerView$d0, RecyclerView$d0 recyclerView$d02, C0362c c0362c, C0362c c0362c2);

    public abstract boolean animateDisappearance(RecyclerView$d0 recyclerView$d0, C0362c c0362c, C0362c c0362c2);

    public abstract boolean animatePersistence(RecyclerView$d0 recyclerView$d0, C0362c c0362c, C0362c c0362c2);

    public abstract boolean canReuseUpdatedViewHolder(RecyclerView$d0 recyclerView$d0);

    public boolean canReuseUpdatedViewHolder(RecyclerView$d0 recyclerView$d0, List<Object> list) {
        return canReuseUpdatedViewHolder(recyclerView$d0);
    }

    public final void dispatchAnimationFinished(RecyclerView$d0 recyclerView$d0) {
        onAnimationFinished(recyclerView$d0);
        AbstractC0361b abstractC0361b = this.mListener;
        if (abstractC0361b != null) {
            abstractC0361b.m5265a(recyclerView$d0);
        }
    }

    public final void dispatchAnimationsFinished() {
        int size = this.mFinishedListeners.size();
        for (int i = 0; i < size; i++) {
            this.mFinishedListeners.get(i).m5266a();
        }
        this.mFinishedListeners.clear();
    }

    public abstract void endAnimation(RecyclerView$d0 recyclerView$d0);

    public abstract void endAnimations();

    public long getAddDuration() {
        return this.mAddDuration;
    }

    public long getChangeDuration() {
        return this.mChangeDuration;
    }

    public long getMoveDuration() {
        return this.mMoveDuration;
    }

    public long getRemoveDuration() {
        return this.mRemoveDuration;
    }

    public abstract boolean isRunning();

    public C0362c obtainHolderInfo() {
        return new C0362c();
    }

    public void onAnimationFinished(RecyclerView$d0 recyclerView$d0) {
    }

    public C0362c recordPostLayoutInformation(RecyclerView$a0 recyclerView$a0, RecyclerView$d0 recyclerView$d0) {
        C0362c obtainHolderInfo = obtainHolderInfo();
        obtainHolderInfo.m5264a(recyclerView$d0);
        return obtainHolderInfo;
    }

    public C0362c recordPreLayoutInformation(RecyclerView$a0 recyclerView$a0, RecyclerView$d0 recyclerView$d0, int i, List<Object> list) {
        C0362c obtainHolderInfo = obtainHolderInfo();
        obtainHolderInfo.m5264a(recyclerView$d0);
        return obtainHolderInfo;
    }

    public abstract void runPendingAnimations();

    void setListener(AbstractC0361b abstractC0361b) {
        this.mListener = abstractC0361b;
    }
}
