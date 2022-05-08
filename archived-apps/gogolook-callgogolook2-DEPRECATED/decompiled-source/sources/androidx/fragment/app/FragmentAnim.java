package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.core.p005os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.C0317R;
import androidx.fragment.app.FragmentTransition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentAnim.class */
public class FragmentAnim {

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentAnim$AnimationOrAnimator.class */
    public static class AnimationOrAnimator {
        public final Animation animation;
        public final Animator animator;

        public AnimationOrAnimator(Animator animator) {
            this.animation = null;
            this.animator = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        public AnimationOrAnimator(Animation animation) {
            this.animation = animation;
            this.animator = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentAnim$EndViewTransitionAnimation.class */
    public static class EndViewTransitionAnimation extends AnimationSet implements Runnable {
        public boolean mAnimating = true;
        public final View mChild;
        public boolean mEnded;
        public final ViewGroup mParent;
        public boolean mTransitionEnded;

        public EndViewTransitionAnimation(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.mParent = viewGroup;
            this.mChild = view;
            addAnimation(animation);
            this.mParent.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.mEnded = true;
            OneShotPreDrawListener.add(this.mParent, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation, float f) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.mEnded = true;
            OneShotPreDrawListener.add(this.mParent, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mEnded || !this.mAnimating) {
                this.mParent.endViewTransition(this.mChild);
                this.mTransitionEnded = true;
                return;
            }
            this.mAnimating = false;
            this.mParent.post(this);
        }
    }

    public static void animateRemoveFragment(@NonNull final Fragment fragment, @NonNull AnimationOrAnimator animationOrAnimator, @NonNull final FragmentTransition.Callback callback) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        final CancellationSignal cancellationSignal = new CancellationSignal();
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.FragmentAnim.1
            @Override // androidx.core.p005os.CancellationSignal.OnCancelListener
            public void onCancel() {
                if (Fragment.this.getAnimatingAway() != null) {
                    View animatingAway = Fragment.this.getAnimatingAway();
                    Fragment.this.setAnimatingAway(null);
                    animatingAway.clearAnimation();
                }
                Fragment.this.setAnimator(null);
            }
        });
        callback.onStart(fragment, cancellationSignal);
        Animation animation = animationOrAnimator.animation;
        if (animation != null) {
            EndViewTransitionAnimation endViewTransitionAnimation = new EndViewTransitionAnimation(animation, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.FragmentAnim.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation2) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.FragmentAnim.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                animationAnimation$AnimationListenerC03312 r0 = animationAnimation$AnimationListenerC03312.this;
                                callback.onComplete(fragment, cancellationSignal);
                            }
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation2) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation2) {
                }
            });
            fragment.mView.startAnimation(endViewTransitionAnimation);
            return;
        }
        Animator animator = animationOrAnimator.animator;
        fragment.setAnimator(animator);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.FragmentAnim.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 != null && viewGroup.indexOfChild(view) < 0) {
                    callback.onComplete(fragment, cancellationSignal);
                }
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }

    public static AnimationOrAnimator loadAnimation(@NonNull Context context, @NonNull FragmentContainer fragmentContainer, @NonNull Fragment fragment, boolean z) {
        int transitToAnimResourceId;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = fragment.getNextAnim();
        fragment.setNextAnim(0);
        View onFindViewById = fragmentContainer.onFindViewById(fragment.mContainerId);
        if (!(onFindViewById == null || onFindViewById.getTag(C0317R.C0319id.visible_removing_fragment_view_tag) == null)) {
            onFindViewById.setTag(C0317R.C0319id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, nextAnim);
        if (onCreateAnimation != null) {
            return new AnimationOrAnimator(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, nextAnim);
        if (onCreateAnimator != null) {
            return new AnimationOrAnimator(onCreateAnimator);
        }
        if (nextAnim != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
            boolean z2 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, nextAnim);
                    if (loadAnimation != null) {
                        return new AnimationOrAnimator(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z2 = false;
                }
            }
            if (!z2) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                    if (loadAnimator != null) {
                        return new AnimationOrAnimator(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, nextAnim);
                        if (loadAnimation2 != null) {
                            return new AnimationOrAnimator(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (nextTransition != 0 && (transitToAnimResourceId = transitToAnimResourceId(nextTransition, z)) >= 0) {
            return new AnimationOrAnimator(AnimationUtils.loadAnimation(context, transitToAnimResourceId));
        }
        return null;
    }

    @AnimRes
    public static int transitToAnimResourceId(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? C0317R.anim.fragment_close_enter : C0317R.anim.fragment_close_exit : z ? C0317R.anim.fragment_fade_enter : C0317R.anim.fragment_fade_exit : z ? C0317R.anim.fragment_open_enter : C0317R.anim.fragment_open_exit;
    }
}
