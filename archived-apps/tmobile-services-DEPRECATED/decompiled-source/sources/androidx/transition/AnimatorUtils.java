package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import androidx.annotation.NonNull;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/transition/AnimatorUtils.class */
class AnimatorUtils {

    /* loaded from: classes-dex2jar.jar:androidx/transition/AnimatorUtils$AnimatorPauseListenerCompat.class */
    interface AnimatorPauseListenerCompat {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    private AnimatorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m16912a(@NonNull Animator animator, @NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m16911b(@NonNull Animator animator) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.pause();
            return;
        }
        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners != null) {
            int size = listeners.size();
            for (int i = 0; i < size; i++) {
                Animator.AnimatorListener animatorListener = listeners.get(i);
                if (animatorListener instanceof AnimatorPauseListenerCompat) {
                    ((AnimatorPauseListenerCompat) animatorListener).onAnimationPause(animator);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m16910c(@NonNull Animator animator) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.resume();
            return;
        }
        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners != null) {
            int size = listeners.size();
            for (int i = 0; i < size; i++) {
                Animator.AnimatorListener animatorListener = listeners.get(i);
                if (animatorListener instanceof AnimatorPauseListenerCompat) {
                    ((AnimatorPauseListenerCompat) animatorListener).onAnimationResume(animator);
                }
            }
        }
    }
}
