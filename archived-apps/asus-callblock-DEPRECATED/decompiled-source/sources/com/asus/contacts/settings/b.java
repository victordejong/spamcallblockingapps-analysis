package com.asus.contacts.settings;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.Toast;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/b.class */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f2743a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2744b = false;

    public b(Context context) {
        this.f2743a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LayoutInflater from = LayoutInflater.from(this.f2743a.getApplicationContext());
        int i = Build.VERSION.SDK_INT;
        ViewGroup viewGroup = (ViewGroup) from.inflate(2131427348, (ViewGroup) null);
        viewGroup.setBackgroundColor(Color.argb(80, 0, 0, 0));
        Toast toast = new Toast(this.f2743a);
        toast.setDuration(1);
        toast.setView(viewGroup);
        toast.setGravity(119, 0, 100);
        toast.show();
        ImageView imageView = (ImageView) viewGroup.findViewById(2131296537);
        AnimationSet animationSet = new AnimationSet(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, this.f2743a.getResources().getInteger(2131361825));
        translateAnimation.setDuration(1300L);
        translateAnimation.setStartOffset(480L);
        translateAnimation.setFillAfter(true);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setStartOffset(0L);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.5f, 1.0f, 1.5f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setStartOffset(0L);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(scaleAnimation);
        this.f2744b = false;
        animationSet.setAnimationListener(new Animation.AnimationListener() { // from class: com.asus.contacts.settings.b.1
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                Log.d("xxx", "onAnimationEnd");
                if (!b.this.f2744b) {
                    animation.start();
                    b.this.f2744b = true;
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
                Log.d("xxx", "onAnimationStart");
            }
        });
        imageView.startAnimation(animationSet);
    }
}
