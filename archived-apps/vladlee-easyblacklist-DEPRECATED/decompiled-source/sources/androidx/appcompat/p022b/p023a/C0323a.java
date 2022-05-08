package androidx.appcompat.p022b.p023a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.p022b.p023a.C0330b;
import androidx.appcompat.p022b.p023a.C0336f;
import androidx.appcompat.p024c.C0338a;
import androidx.appcompat.widget.C0451ap;
import androidx.core.content.p033a.C0645i;
import androidx.core.graphics.drawable.AbstractC0759b;
import androidx.p026b.C0534f;
import androidx.p026b.C0543j;
import androidx.p046f.p047a.p048a.C0840c;
import androidx.p046f.p047a.p048a.C0850j;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.b.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a.class */
public class C0323a extends C0336f implements AbstractC0759b {

    /* renamed from: a */
    private static final String f1345a = C0323a.class.getSimpleName();

    /* renamed from: b */
    private C0325b f1346b;

    /* renamed from: c */
    private AbstractC0329f f1347c;

    /* renamed from: d */
    private int f1348d;

    /* renamed from: e */
    private int f1349e;

    /* renamed from: f */
    private boolean f1350f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$a.class */
    public static final class C0324a extends AbstractC0329f {

        /* renamed from: a */
        private final Animatable f1351a;

        C0324a(Animatable animatable) {
            super((byte) 0);
            this.f1351a = animatable;
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: a */
        public final void mo9742a() {
            this.f1351a.start();
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: b */
        public final void mo9741b() {
            this.f1351a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$b.class */
    public static final class C0325b extends C0336f.C0337a {

        /* renamed from: a */
        C0534f<Long> f1352a;

        /* renamed from: b */
        C0543j<Integer> f1353b;

        C0325b(C0325b bVar, C0323a aVar, Resources resources) {
            super(bVar, aVar, resources);
            C0543j<Integer> jVar;
            if (bVar != null) {
                this.f1352a = bVar.f1352a;
                jVar = bVar.f1353b;
            } else {
                this.f1352a = new C0534f<>();
                jVar = new C0543j<>();
            }
            this.f1353b = jVar;
        }

        /* renamed from: e */
        private static long m9745e(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: a */
        final int m9751a(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f1353b.m8898a(i, 0).intValue();
        }

        /* renamed from: a */
        final int m9750a(int i, int i2) {
            return (int) this.f1352a.m8937a(m9745e(i, i2), -1L).longValue();
        }

        /* renamed from: a */
        final int m9749a(int i, int i2, Drawable drawable, boolean z) {
            int a = super.m9728a(drawable);
            long e = m9745e(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = a;
            this.f1352a.m8929c(e, Long.valueOf(j2 | j));
            if (z) {
                this.f1352a.m8929c(m9745e(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return a;
        }

        /* renamed from: a */
        final int m9748a(int[] iArr) {
            int b = super.m9707b(iArr);
            return b >= 0 ? b : super.m9707b(StateSet.WILD_CARD);
        }

        @Override // androidx.appcompat.p022b.p023a.C0336f.C0337a, androidx.appcompat.p022b.p023a.C0330b.AbstractC0332b
        /* renamed from: a */
        final void mo9708a() {
            this.f1352a = this.f1352a.clone();
            this.f1353b = this.f1353b.clone();
        }

        /* renamed from: b */
        final boolean m9747b(int i, int i2) {
            return (this.f1352a.m8937a(m9745e(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: c */
        final boolean m9746c(int i, int i2) {
            return (this.f1352a.m8937a(m9745e(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.p022b.p023a.C0336f.C0337a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0323a(this, null);
        }

        @Override // androidx.appcompat.p022b.p023a.C0336f.C0337a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0323a(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$c.class */
    public static final class C0326c extends AbstractC0329f {

        /* renamed from: a */
        private final C0840c f1354a;

        C0326c(C0840c cVar) {
            super((byte) 0);
            this.f1354a = cVar;
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: a */
        public final void mo9742a() {
            this.f1354a.start();
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: b */
        public final void mo9741b() {
            this.f1354a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$d.class */
    public static final class C0327d extends AbstractC0329f {

        /* renamed from: a */
        private final ObjectAnimator f1355a;

        /* renamed from: b */
        private final boolean f1356b;

        C0327d(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super((byte) 0);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C0328e eVar = new C0328e(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(eVar.m9744a());
            ofInt.setInterpolator(eVar);
            this.f1356b = z2;
            this.f1355a = ofInt;
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: a */
        public final void mo9742a() {
            this.f1355a.start();
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: b */
        public final void mo9741b() {
            this.f1355a.cancel();
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: c */
        public final boolean mo9740c() {
            return this.f1356b;
        }

        @Override // androidx.appcompat.p022b.p023a.C0323a.AbstractC0329f
        /* renamed from: d */
        public final void mo9739d() {
            this.f1355a.reverse();
        }
    }

    /* renamed from: androidx.appcompat.b.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$e.class */
    private static final class C0328e implements TimeInterpolator {

        /* renamed from: a */
        private int[] f1357a;

        /* renamed from: b */
        private int f1358b;

        /* renamed from: c */
        private int f1359c;

        C0328e(AnimationDrawable animationDrawable, boolean z) {
            m9743a(animationDrawable, z);
        }

        /* renamed from: a */
        private int m9743a(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f1358b = numberOfFrames;
            int[] iArr = this.f1357a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f1357a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f1357a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f1359c = i;
            return i;
        }

        /* renamed from: a */
        final int m9744a() {
            return this.f1359c;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.f1359c) + 0.5f);
            int i2 = this.f1358b;
            int[] iArr = this.f1357a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f1359c : 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.b.a.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/a$f.class */
    public static abstract class AbstractC0329f {
        private AbstractC0329f() {
        }

        /* synthetic */ AbstractC0329f(byte b) {
            this();
        }

        /* renamed from: a */
        public abstract void mo9742a();

        /* renamed from: b */
        public abstract void mo9741b();

        /* renamed from: c */
        public boolean mo9740c() {
            return false;
        }

        /* renamed from: d */
        public void mo9739d() {
        }
    }

    public C0323a() {
        this(null, null);
    }

    C0323a(C0325b bVar, Resources resources) {
        super((byte) 0);
        this.f1348d = -1;
        this.f1349e = -1;
        mo9710a(new C0325b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* renamed from: a */
    public static C0323a m9755a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            C0323a aVar = new C0323a();
            TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0338a.C0340b.f1428a);
            aVar.setVisible(a.getBoolean(C0338a.C0340b.f1430c, true), true);
            C0325b bVar = aVar.f1346b;
            if (Build.VERSION.SDK_INT >= 21) {
                bVar.f1388f |= a.getChangingConfigurations();
            }
            bVar.f1393k = a.getBoolean(C0338a.C0340b.f1431d, bVar.f1393k);
            bVar.f1396n = a.getBoolean(C0338a.C0340b.f1432e, bVar.f1396n);
            bVar.f1376C = a.getInt(C0338a.C0340b.f1433f, bVar.f1376C);
            bVar.f1377D = a.getInt(C0338a.C0340b.f1434g, bVar.f1377D);
            aVar.setDither(a.getBoolean(C0338a.C0340b.f1429b, bVar.f1408z));
            aVar.m9737a(resources);
            a.recycle();
            aVar.m9754b(context, resources, xmlPullParser, attributeSet, theme);
            aVar.onStateChange(aVar.getState());
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    /* renamed from: b */
    private void m9754b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next2 == 3) {
                    return;
                }
                if (next2 == 2 && depth2 <= depth) {
                    if (xmlPullParser.getName().equals("item")) {
                        TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0338a.C0340b.f1435h);
                        int resourceId = a.getResourceId(C0338a.C0340b.f1436i, 0);
                        Drawable drawable = null;
                        int resourceId2 = a.getResourceId(C0338a.C0340b.f1437j, -1);
                        if (resourceId2 > 0) {
                            drawable = C0451ap.m9150a().m9146a(context, resourceId2);
                        }
                        a.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        int i = 0;
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            i = i;
                            if (attributeNameResource != 0) {
                                i = i;
                                if (attributeNameResource != 16842960) {
                                    i = i;
                                    if (attributeNameResource != 16843161) {
                                        iArr[i] = attributeSet.getAttributeBooleanValue(i2, false) ? attributeNameResource : -attributeNameResource;
                                        i++;
                                    }
                                }
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr, i);
                        Drawable drawable2 = drawable;
                        if (drawable == null) {
                            do {
                                next = xmlPullParser.next();
                            } while (next == 4);
                            if (next == 2) {
                                drawable2 = xmlPullParser.getName().equals("vector") ? C0850j.m7926a(resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                            } else {
                                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                        }
                        if (drawable2 != null) {
                            C0325b bVar = this.f1346b;
                            int a2 = bVar.m9728a(drawable2);
                            bVar.f1426L[a2] = trimStateSet;
                            bVar.f1353b.m8894b(a2, Integer.valueOf(resourceId));
                        } else {
                            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                    } else if (xmlPullParser.getName().equals("transition")) {
                        m9753c(context, resources, xmlPullParser, attributeSet, theme);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    private int m9753c(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int next;
        TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0338a.C0340b.f1438k);
        int resourceId = a.getResourceId(C0338a.C0340b.f1441n, -1);
        int resourceId2 = a.getResourceId(C0338a.C0340b.f1440m, -1);
        int resourceId3 = a.getResourceId(C0338a.C0340b.f1439l, -1);
        Drawable a2 = resourceId3 > 0 ? C0451ap.m9150a().m9146a(context, resourceId3) : null;
        boolean z = a.getBoolean(C0338a.C0340b.f1442o, false);
        a.recycle();
        Drawable drawable = a2;
        if (a2 == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                drawable = xmlPullParser.getName().equals("animated-vector") ? C0840c.m7945a(context, resources, xmlPullParser, attributeSet, theme) : Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f1346b.m9749a(resourceId, resourceId2, drawable, z);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public C0325b mo9709b() {
        return new C0325b(this.f1346b, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.p022b.p023a.C0336f, androidx.appcompat.p022b.p023a.C0330b
    /* renamed from: a */
    public final void mo9710a(C0330b.AbstractC0332b bVar) {
        super.mo9710a(bVar);
        if (bVar instanceof C0325b) {
            this.f1346b = (C0325b) bVar;
        }
    }

    @Override // androidx.appcompat.p022b.p023a.C0336f, androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.p022b.p023a.C0336f, androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC0329f fVar = this.f1347c;
        if (fVar != null) {
            fVar.mo9741b();
            this.f1347c = null;
            m9738a(this.f1348d);
            this.f1348d = -1;
            this.f1349e = -1;
        }
    }

    @Override // androidx.appcompat.p022b.p023a.C0336f, androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1350f && super.mutate() == this) {
            this.f1346b.mo9708a();
            this.f1350f = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015c  */
    @Override // androidx.appcompat.p022b.p023a.C0336f, androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r7) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p022b.p023a.C0323a.onStateChange(int[]):boolean");
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.f1347c != null && (visible || z2)) {
            if (z) {
                this.f1347c.mo9742a();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // androidx.appcompat.p022b.p023a.C0330b, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }
}
