package androidx.databinding.adapters;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
@BindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter.class */
public class ViewGroupBindingAdapter {

    /* renamed from: androidx.databinding.adapters.ViewGroupBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$1.class */
    final class ViewGroup$OnHierarchyChangeListenerC02891 implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: f */
        final /* synthetic */ OnChildViewAdded f3628f;

        /* renamed from: g */
        final /* synthetic */ OnChildViewRemoved f3629g;

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            OnChildViewAdded onChildViewAdded = this.f3628f;
            if (onChildViewAdded != null) {
                onChildViewAdded.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            OnChildViewRemoved onChildViewRemoved = this.f3629g;
            if (onChildViewRemoved != null) {
                onChildViewRemoved.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.databinding.adapters.ViewGroupBindingAdapter$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$2.class */
    final class animationAnimation$AnimationListenerC02902 implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ OnAnimationStart f3630a;

        /* renamed from: b */
        final /* synthetic */ OnAnimationEnd f3631b;

        /* renamed from: c */
        final /* synthetic */ OnAnimationRepeat f3632c;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            OnAnimationEnd onAnimationEnd = this.f3631b;
            if (onAnimationEnd != null) {
                onAnimationEnd.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            OnAnimationRepeat onAnimationRepeat = this.f3632c;
            if (onAnimationRepeat != null) {
                onAnimationRepeat.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            OnAnimationStart onAnimationStart = this.f3630a;
            if (onAnimationStart != null) {
                onAnimationStart.onAnimationStart(animation);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd.class */
    public interface OnAnimationEnd {
        void onAnimationEnd(Animation animation);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat.class */
    public interface OnAnimationRepeat {
        void onAnimationRepeat(Animation animation);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart.class */
    public interface OnAnimationStart {
        void onAnimationStart(Animation animation);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded.class */
    public interface OnChildViewAdded {
        void onChildViewAdded(View view, View view2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved.class */
    public interface OnChildViewRemoved {
        void onChildViewRemoved(View view, View view2);
    }
}
