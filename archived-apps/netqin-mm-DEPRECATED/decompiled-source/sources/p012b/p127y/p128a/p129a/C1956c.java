package p012b.p127y.p128a.p129a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p012b.p035f.C0780a;
import p012b.p042i.p044i.p045c.C0889g;
import p012b.p042i.p046j.p047m.C0907a;
/* renamed from: b.y.a.a.c */
/* loaded from: classes-dex2jar.jar:b/y/a/a/c.class */
public class C1956c extends AbstractC1965h implements AbstractC1955b {

    /* renamed from: b */
    public C1958b f7703b;

    /* renamed from: c */
    public Context f7704c;

    /* renamed from: d */
    public ArgbEvaluator f7705d;

    /* renamed from: e */
    public final Drawable.Callback f7706e;

    /* renamed from: b.y.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/c$a.class */
    public class C1957a implements Drawable.Callback {
        public C1957a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C1956c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C1956c.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C1956c.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: b.y.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/c$b.class */
    public static class C1958b extends Drawable.ConstantState {

        /* renamed from: a */
        public int f7708a;

        /* renamed from: b */
        public C1966i f7709b;

        /* renamed from: c */
        public AnimatorSet f7710c;

        /* renamed from: d */
        public ArrayList<Animator> f7711d;

        /* renamed from: e */
        public C0780a<Animator, String> f7712e;

        public C1958b(Context context, C1958b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.f7708a = bVar.f7708a;
                C1966i iVar = bVar.f7709b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.f7709b = (C1966i) constantState.newDrawable(resources);
                    } else {
                        this.f7709b = (C1966i) constantState.newDrawable();
                    }
                    C1966i iVar2 = this.f7709b;
                    iVar2.mutate();
                    C1966i iVar3 = iVar2;
                    this.f7709b = iVar3;
                    iVar3.setCallback(callback);
                    this.f7709b.setBounds(bVar.f7709b.getBounds());
                    this.f7709b.m31422a(false);
                }
                ArrayList<Animator> arrayList = bVar.f7711d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f7711d = new ArrayList<>(size);
                    this.f7712e = new C0780a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = bVar.f7711d.get(i);
                        Animator clone = animator.clone();
                        String str = bVar.f7712e.get(animator);
                        clone.setTarget(this.f7709b.m31423a(str));
                        this.f7711d.add(clone);
                        this.f7712e.put(clone, str);
                    }
                    m31458a();
                }
            }
        }

        /* renamed from: a */
        public void m31458a() {
            if (this.f7710c == null) {
                this.f7710c = new AnimatorSet();
            }
            this.f7710c.playTogether(this.f7711d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7708a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* renamed from: b.y.a.a.c$c */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/c$c.class */
    public static class C1959c extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f7713a;

        public C1959c(Drawable.ConstantState constantState) {
            this.f7713a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f7713a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7713a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C1956c cVar = new C1956c();
            Drawable newDrawable = this.f7713a.newDrawable();
            cVar.f7718a = newDrawable;
            newDrawable.setCallback(cVar.f7706e);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C1956c cVar = new C1956c();
            Drawable newDrawable = this.f7713a.newDrawable(resources);
            cVar.f7718a = newDrawable;
            newDrawable.setCallback(cVar.f7706e);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C1956c cVar = new C1956c();
            Drawable newDrawable = this.f7713a.newDrawable(resources, theme);
            cVar.f7718a = newDrawable;
            newDrawable.setCallback(cVar.f7706e);
            return cVar;
        }
    }

    public C1956c() {
        this(null, null, null);
    }

    public C1956c(Context context) {
        this(context, null, null);
    }

    public C1956c(Context context, C1958b bVar, Resources resources) {
        this.f7705d = null;
        this.f7706e = new C1957a();
        this.f7704c = context;
        if (bVar != null) {
            this.f7703b = bVar;
        } else {
            this.f7703b = new C1958b(context, bVar, this.f7706e, resources);
        }
    }

    /* renamed from: a */
    public static C1956c m31460a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1956c cVar = new C1956c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    /* renamed from: a */
    public final void m31461a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m31461a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f7705d == null) {
                    this.f7705d = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f7705d);
            }
        }
    }

    /* renamed from: a */
    public final void m31459a(String str, Animator animator) {
        animator.setTarget(this.f7703b.f7709b.m31423a(str));
        if (Build.VERSION.SDK_INT < 21) {
            m31461a(animator);
        }
        C1958b bVar = this.f7703b;
        if (bVar.f7711d == null) {
            bVar.f7711d = new ArrayList<>();
            this.f7703b.f7712e = new C0780a<>();
        }
        this.f7703b.f7711d.add(animator);
        this.f7703b.f7712e.put(animator, str);
    }

    @Override // p012b.p127y.p128a.p129a.AbstractC1965h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35525a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            return C0907a.m35530a(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f7703b.f7709b.draw(canvas);
        if (this.f7703b.f7710c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f7718a;
        return drawable != null ? C0907a.m35521b(drawable) : this.f7703b.f7709b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f7703b.f7708a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f7718a;
        return drawable != null ? C0907a.m35519c(drawable) : this.f7703b.f7709b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f7718a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C1959c(this.f7718a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f7703b.f7709b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f7703b.f7709b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getOpacity() : this.f7703b.f7709b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35524a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C1954a.f7695e);
                    int resourceId = a.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C1966i a2 = C1966i.m31427a(resources, resourceId, theme);
                        a2.m31422a(false);
                        a2.setCallback(this.f7706e);
                        C1966i iVar = this.f7703b.f7709b;
                        if (iVar != null) {
                            iVar.setCallback(null);
                        }
                        this.f7703b.f7709b = a2;
                    }
                    a.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C1954a.f7696f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f7704c;
                        if (context != null) {
                            m31459a(string, C1961e.m31451a(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f7703b.m31458a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f7718a;
        return drawable != null ? C0907a.m35517e(drawable) : this.f7703b.f7709b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f7718a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f7703b.f7710c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.isStateful() : this.f7703b.f7709b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f7703b.f7709b.setBounds(rect);
        }
    }

    @Override // p012b.p127y.p128a.p129a.AbstractC1965h, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.setLevel(i) : this.f7703b.f7709b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.setState(iArr) : this.f7703b.f7709b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f7703b.f7709b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35522a(drawable, z);
        } else {
            this.f7703b.f7709b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f7703b.f7709b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTint(int i) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35520b(drawable, i);
        } else {
            this.f7703b.f7709b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35526a(drawable, colorStateList);
        } else {
            this.f7703b.f7709b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35523a(drawable, mode);
        } else {
            this.f7703b.f7709b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f7703b.f7709b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (!this.f7703b.f7710c.isStarted()) {
            this.f7703b.f7710c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f7703b.f7710c.end();
        }
    }
}
