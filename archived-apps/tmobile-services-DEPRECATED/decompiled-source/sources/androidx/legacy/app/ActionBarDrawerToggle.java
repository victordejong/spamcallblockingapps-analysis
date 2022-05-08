package androidx.legacy.app;

import android.app.ActionBar;
import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import java.lang.reflect.Method;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/app/ActionBarDrawerToggle.class */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: a */
    final Activity f3944a;

    /* renamed from: b */
    private final Delegate f3945b;

    /* renamed from: c */
    private boolean f3946c;

    /* renamed from: d */
    private SlideDrawable f3947d;

    /* renamed from: e */
    private final int f3948e;

    /* renamed from: f */
    private final int f3949f;

    /* renamed from: g */
    private SetIndicatorInfo f3950g;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/legacy/app/ActionBarDrawerToggle$Delegate.class */
    public interface Delegate {
        /* renamed from: a */
        void m18270a(@StringRes int i);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/legacy/app/ActionBarDrawerToggle$DelegateProvider.class */
    public interface DelegateProvider {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo.class */
    public static class SetIndicatorInfo {

        /* renamed from: a */
        Method f3951a;

        /* renamed from: b */
        Method f3952b;

        SetIndicatorInfo(Activity activity) {
            try {
                this.f3951a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f3952b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        r9 = viewGroup.getChildAt(1);
                        View view = childAt;
                        if (childAt.getId() == 16908332) {
                        }
                        if (view instanceof ImageView) {
                            ImageView imageView = (ImageView) view;
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/legacy/app/ActionBarDrawerToggle$SlideDrawable.class */
    private class SlideDrawable extends InsetDrawable implements Drawable.Callback {

        /* renamed from: f */
        private final boolean f3953f;

        /* renamed from: g */
        private final Rect f3954g;

        /* renamed from: h */
        private float f3955h;

        /* renamed from: i */
        private float f3956i;

        /* renamed from: j */
        final /* synthetic */ ActionBarDrawerToggle f3957j;

        /* renamed from: a */
        public float m18269a() {
            return this.f3955h;
        }

        /* renamed from: b */
        public void m18268b(float f) {
            this.f3955h = f;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            copyBounds(this.f3954g);
            canvas.save();
            int i = 1;
            boolean z = ViewCompat.m19244A(this.f3957j.f3944a.getWindow().getDecorView()) == 1;
            if (z) {
                i = -1;
            }
            float width = this.f3954g.width();
            canvas.translate((-this.f3956i) * width * this.f3955h * i, 0.0f);
            if (z && !this.f3953f) {
                canvas.translate(width, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            super.draw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: e */
    private void m18271e(int i) {
        Delegate delegate = this.f3945b;
        if (delegate != null) {
            delegate.m18270a(i);
        } else if (Build.VERSION.SDK_INT >= 18) {
            ActionBar actionBar = this.f3944a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
            }
        } else {
            if (this.f3950g == null) {
                this.f3950g = new SetIndicatorInfo(this.f3944a);
            }
            if (this.f3950g.f3951a != null) {
                try {
                    ActionBar actionBar2 = this.f3944a.getActionBar();
                    this.f3950g.f3952b.invoke(actionBar2, Integer.valueOf(i));
                    actionBar2.setSubtitle(actionBar2.getSubtitle());
                } catch (Exception e) {
                    Log.w("ActionBarDrawerToggle", "Couldn't set content description via JB-MR2 API", e);
                }
            }
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: a */
    public void mo18275a(View view) {
        this.f3947d.m18268b(1.0f);
        if (this.f3946c) {
            m18271e(this.f3949f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: b */
    public void mo18274b(View view) {
        this.f3947d.m18268b(0.0f);
        if (this.f3946c) {
            m18271e(this.f3948e);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: c */
    public void mo18273c(int i) {
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    /* renamed from: d */
    public void mo18272d(View view, float f) {
        float a = this.f3947d.m18269a();
        this.f3947d.m18268b(f > 0.5f ? Math.max(a, Math.max(0.0f, f - 0.5f) * 2.0f) : Math.min(a, f * 2.0f));
    }
}
