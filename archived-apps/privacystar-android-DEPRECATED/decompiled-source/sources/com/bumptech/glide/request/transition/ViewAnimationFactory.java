package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.ViewTransition;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/ViewAnimationFactory.class */
public class ViewAnimationFactory<R> implements TransitionFactory<R> {
    private Transition<R> transition;
    private final ViewTransition.ViewTransitionAnimationFactory viewTransitionAnimationFactory;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory.class */
    private static class ConcreteViewTransitionAnimationFactory implements ViewTransition.ViewTransitionAnimationFactory {
        private final Animation animation;

        ConcreteViewTransitionAnimationFactory(Animation animation) {
            this.animation = animation;
        }

        @Override // com.bumptech.glide.request.transition.ViewTransition.ViewTransitionAnimationFactory
        public Animation build(Context context) {
            return this.animation;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory.class */
    private static class ResourceViewTransitionAnimationFactory implements ViewTransition.ViewTransitionAnimationFactory {
        private final int animationId;

        ResourceViewTransitionAnimationFactory(int i) {
            this.animationId = i;
        }

        @Override // com.bumptech.glide.request.transition.ViewTransition.ViewTransitionAnimationFactory
        public Animation build(Context context) {
            return AnimationUtils.loadAnimation(context, this.animationId);
        }
    }

    public ViewAnimationFactory(int i) {
        this(new ResourceViewTransitionAnimationFactory(i));
    }

    public ViewAnimationFactory(Animation animation) {
        this(new ConcreteViewTransitionAnimationFactory(animation));
    }

    ViewAnimationFactory(ViewTransition.ViewTransitionAnimationFactory viewTransitionAnimationFactory) {
        this.viewTransitionAnimationFactory = viewTransitionAnimationFactory;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return NoTransition.get();
        }
        if (this.transition == null) {
            this.transition = new ViewTransition(this.viewTransitionAnimationFactory);
        }
        return this.transition;
    }
}
