package androidx.p046f.p047a.p048a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
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
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import androidx.core.graphics.drawable.C0758a;
import androidx.p026b.C0529a;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.f.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a/c.class */
public final class C0840c extends AbstractC0849i implements AbstractC0839b {

    /* renamed from: a */
    ArrayList<Object> f3443a;

    /* renamed from: b */
    final Drawable.Callback f3444b;

    /* renamed from: d */
    private C0841a f3445d;

    /* renamed from: e */
    private Context f3446e;

    /* renamed from: f */
    private ArgbEvaluator f3447f;

    /* renamed from: g */
    private Animator.AnimatorListener f3448g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/c$a.class */
    public static final class C0841a extends Drawable.ConstantState {

        /* renamed from: a */
        int f3449a;

        /* renamed from: b */
        C0850j f3450b;

        /* renamed from: c */
        AnimatorSet f3451c;

        /* renamed from: d */
        ArrayList<Animator> f3452d;

        /* renamed from: e */
        C0529a<Animator, String> f3453e;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f3449a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* renamed from: androidx.f.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/c$b.class */
    private static final class C0842b extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f3454a;

        public C0842b(Drawable.ConstantState constantState) {
            this.f3454a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f3454a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f3454a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C0840c cVar = new C0840c();
            cVar.f3460c = this.f3454a.newDrawable();
            cVar.f3460c.setCallback(cVar.f3444b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C0840c cVar = new C0840c();
            cVar.f3460c = this.f3454a.newDrawable(resources);
            cVar.f3460c.setCallback(cVar.f3444b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0840c cVar = new C0840c();
            cVar.f3460c = this.f3454a.newDrawable(resources, theme);
            cVar.f3460c.setCallback(cVar.f3444b);
            return cVar;
        }
    }

    C0840c() {
        this(null, (byte) 0);
    }

    private C0840c(Context context) {
        this(context, (byte) 0);
    }

    private C0840c(Context context, byte b) {
        this.f3447f = null;
        this.f3448g = null;
        this.f3443a = null;
        this.f3444b = new C0843d(this);
        this.f3446e = context;
        this.f3445d = new C0841a();
    }

    /* renamed from: a */
    public static C0840c m7945a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0840c cVar = new C0840c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    /* renamed from: a */
    private void m7946a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m7946a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f3447f == null) {
                    this.f3447f = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f3447f);
            }
        }
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        if (this.f3460c != null) {
            C0758a.m8250a(this.f3460c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        if (this.f3460c != null) {
            return C0758a.m8244c(this.f3460c);
        }
        return false;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f3460c != null) {
            this.f3460c.draw(canvas);
            return;
        }
        this.f3445d.f3450b.draw(canvas);
        if (this.f3445d.f3451c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f3460c != null ? C0758a.m8246b(this.f3460c) : this.f3445d.f3450b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        if (this.f3460c != null) {
            return this.f3460c.getChangingConfigurations();
        }
        return this.f3445d.f3449a | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f3460c != null ? C0758a.m8243d(this.f3460c) : this.f3445d.f3450b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f3460c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0842b(this.f3460c.getConstantState());
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f3460c != null ? this.f3460c.getIntrinsicHeight() : this.f3445d.f3450b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f3460c != null ? this.f3460c.getIntrinsicWidth() : this.f3445d.f3450b.getIntrinsicWidth();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f3460c != null ? this.f3460c.getOpacity() : this.f3445d.f3450b.getOpacity();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray typedArray;
        if (this.f3460c != null) {
            C0758a.m8249a(this.f3460c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3435e);
                    int resourceId = a.getResourceId(0, 0);
                    typedArray = a;
                    if (resourceId != 0) {
                        C0850j a2 = C0850j.m7927a(resources, resourceId, theme);
                        a2.m7930a();
                        a2.setCallback(this.f3444b);
                        if (this.f3445d.f3450b != null) {
                            this.f3445d.f3450b.setCallback(null);
                        }
                        this.f3445d.f3450b = a2;
                        typedArray = a;
                    }
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C0838a.f3436f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    typedArray = obtainAttributes;
                    if (resourceId2 != 0) {
                        Context context = this.f3446e;
                        if (context != null) {
                            Animator loadAnimator = Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, resourceId2) : C0845f.m7940a(context, context.getResources(), context.getTheme(), resourceId2);
                            loadAnimator.setTarget(this.f3445d.f3450b.m7925a(string));
                            if (Build.VERSION.SDK_INT < 21) {
                                m7946a(loadAnimator);
                            }
                            if (this.f3445d.f3452d == null) {
                                this.f3445d.f3452d = new ArrayList<>();
                                this.f3445d.f3453e = new C0529a<>();
                            }
                            this.f3445d.f3452d.add(loadAnimator);
                            this.f3445d.f3453e.put(loadAnimator, string);
                            typedArray = obtainAttributes;
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                } else {
                    continue;
                }
                typedArray.recycle();
            }
            eventType = xmlPullParser.next();
        }
        C0841a aVar = this.f3445d;
        if (aVar.f3451c == null) {
            aVar.f3451c = new AnimatorSet();
        }
        aVar.f3451c.playTogether(aVar.f3452d);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f3460c != null ? C0758a.m8255a(this.f3460c) : this.f3445d.f3450b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f3460c != null ? ((AnimatedVectorDrawable) this.f3460c).isRunning() : this.f3445d.f3451c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return this.f3460c != null ? this.f3460c.isStateful() : this.f3445d.f3450b.isStateful();
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f3460c != null) {
            this.f3460c.mutate();
        }
        return this;
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        if (this.f3460c != null) {
            this.f3460c.setBounds(rect);
        } else {
            this.f3445d.f3450b.setBounds(rect);
        }
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        return this.f3460c != null ? this.f3460c.setLevel(i) : this.f3445d.f3450b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        return this.f3460c != null ? this.f3460c.setState(iArr) : this.f3445d.f3450b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f3460c != null) {
            this.f3460c.setAlpha(i);
        } else {
            this.f3445d.f3450b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        if (this.f3460c != null) {
            C0758a.m8247a(this.f3460c, z);
        } else {
            this.f3445d.f3450b.setAutoMirrored(z);
        }
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f3460c != null) {
            this.f3460c.setColorFilter(colorFilter);
        } else {
            this.f3445d.f3450b.setColorFilter(colorFilter);
        }
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p046f.p047a.p048a.AbstractC0849i, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTint(int i) {
        if (this.f3460c != null) {
            C0758a.m8253a(this.f3460c, i);
        } else {
            this.f3445d.f3450b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f3460c != null) {
            C0758a.m8251a(this.f3460c, colorStateList);
        } else {
            this.f3445d.f3450b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f3460c != null) {
            C0758a.m8248a(this.f3460c, mode);
        } else {
            this.f3445d.f3450b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        if (this.f3460c != null) {
            return this.f3460c.setVisible(z, z2);
        }
        this.f3445d.f3450b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        if (this.f3460c != null) {
            ((AnimatedVectorDrawable) this.f3460c).start();
        } else if (!this.f3445d.f3451c.isStarted()) {
            this.f3445d.f3451c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (this.f3460c != null) {
            ((AnimatedVectorDrawable) this.f3460c).stop();
        } else {
            this.f3445d.f3451c.end();
        }
    }
}
