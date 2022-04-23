package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.p033a.C0641f;
import androidx.core.p035e.C0663a;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.customview.p039a.AbstractC0791a;
import com.google.android.material.C2913a;
import com.google.android.material.chip.C2980c;
import com.google.android.material.internal.C3053s;
import com.google.android.material.p064e.C2994b;
import com.google.android.material.p065f.C2997a;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements C2980c.AbstractC2981a {

    /* renamed from: a */
    private static final Rect f18080a = new Rect();

    /* renamed from: b */
    private static final int[] f18081b = {16842913};

    /* renamed from: c */
    private C2980c f18082c;

    /* renamed from: d */
    private RippleDrawable f18083d;

    /* renamed from: e */
    private View.OnClickListener f18084e;

    /* renamed from: f */
    private CompoundButton.OnCheckedChangeListener f18085f;

    /* renamed from: g */
    private boolean f18086g;

    /* renamed from: h */
    private int f18087h;

    /* renamed from: i */
    private boolean f18088i;

    /* renamed from: j */
    private boolean f18089j;

    /* renamed from: k */
    private boolean f18090k;

    /* renamed from: l */
    private final C2975a f18091l;

    /* renamed from: m */
    private final Rect f18092m;

    /* renamed from: n */
    private final RectF f18093n;

    /* renamed from: o */
    private final C0641f.AbstractC0642a f18094o;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.chip.Chip$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip$a.class */
    public final class C2975a extends AbstractC0791a {
        C2975a(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.p039a.AbstractC0791a
        /* renamed from: a */
        protected final int mo1295a(float f, float f2) {
            return (!Chip.this.m1299i() || !Chip.this.m1298j().contains(f, f2)) ? -1 : 0;
        }

        @Override // androidx.customview.p039a.AbstractC0791a
        /* renamed from: a */
        protected final void mo1294a(C0696d dVar) {
            if (Chip.this.m1299i()) {
                CharSequence e = Chip.this.m1303e();
                if (e == null) {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i = C2913a.C2922i.f17517c;
                    if (TextUtils.isEmpty(text)) {
                        text = "";
                    }
                    e = context.getString(i, text).trim();
                }
                dVar.m8499e(e);
                dVar.m8518b(Chip.this.m1297k());
                dVar.m8527a(C0696d.C0697a.f3036e);
                dVar.m8484j(Chip.this.isEnabled());
                return;
            }
            dVar.m8499e("");
            dVar.m8518b(Chip.f18080a);
        }

        @Override // androidx.customview.p039a.AbstractC0791a
        /* renamed from: a */
        protected final void mo1293a(List<Integer> list) {
            if (Chip.this.m1299i()) {
                list.add(0);
            }
        }

        @Override // androidx.customview.p039a.AbstractC0791a
        /* renamed from: b */
        protected final void mo1291b(C0696d dVar) {
            dVar.m8521a(Chip.this.f18082c != null && Chip.this.f18082c.m1236o());
            dVar.m8514b((CharSequence) Chip.class.getName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                dVar.m8508c(text);
            } else {
                dVar.m8499e(text);
            }
        }

        @Override // androidx.customview.p039a.AbstractC0791a
        /* renamed from: b */
        protected final boolean mo1292b(int i, int i2) {
            if (i2 == 16 && i == 0) {
                return Chip.this.m1306d();
            }
            return false;
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17438d);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable;
        this.f18087h = Integer.MIN_VALUE;
        this.f18092m = new Rect();
        this.f18093n = new RectF();
        this.f18094o = new C2978a(this);
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            } else if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        C2980c a = C2980c.m1272a(context, attributeSet, i, C2913a.C2923j.f17533p);
        C2980c cVar = this.f18082c;
        if (cVar != a) {
            if (cVar != null) {
                cVar.m1266a((C2980c.AbstractC2981a) null);
            }
            this.f18082c = a;
            this.f18082c.m1266a(this);
            if (C2997a.f18212a) {
                this.f18083d = new RippleDrawable(C2997a.m1180a(this.f18082c.m1248d()), this.f18082c, null);
                this.f18082c.m1262a(false);
                drawable = this.f18083d;
            } else {
                this.f18082c.m1262a(true);
                drawable = this.f18082c;
            }
            C0741t.m8351a(this, drawable);
        }
        this.f18091l = new C2975a(this);
        C0741t.m8348a(this, this.f18091l);
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new C2979b(this));
        }
        setChecked(this.f18086g);
        a.m1282A();
        setText(a.m1246e());
        setEllipsize(a.m1244g());
        setIncludeFontPadding(false);
        if (m1296l() != null) {
            m1312a(m1296l());
        }
        setSingleLine();
        setGravity(8388627);
        m1301g();
    }

    /* renamed from: a */
    private void m1316a(int i) {
        int i2 = this.f18087h;
        if (i2 != i) {
            if (i2 == 0) {
                m1304d(false);
            }
            this.f18087h = i;
            if (i == 0) {
                m1304d(true);
            }
        }
    }

    /* renamed from: a */
    private void m1312a(C2994b bVar) {
        TextPaint paint = getPaint();
        paint.drawableState = this.f18082c.getState();
        bVar.m1191a(getContext(), paint, this.f18094o);
    }

    /* renamed from: a */
    private boolean m1315a(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 10) {
            return false;
        }
        try {
            Field declaredField = AbstractC0791a.class.getDeclaredField("k");
            declaredField.setAccessible(true);
            if (((Integer) declaredField.get(this.f18091l)).intValue() == Integer.MIN_VALUE) {
                return false;
            }
            Method declaredMethod = AbstractC0791a.class.getDeclaredMethod("b", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.f18091l, Integer.MIN_VALUE);
            return true;
        } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e);
            return false;
        }
    }

    /* renamed from: a */
    private boolean m1311a(boolean z) {
        boolean z2;
        m1300h();
        if (z) {
            if (this.f18087h == -1) {
                m1316a(0);
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.f18087h == 0) {
                m1316a(-1);
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }

    /* renamed from: b */
    private void m1309b(boolean z) {
        if (this.f18088i != z) {
            this.f18088i = z;
            refreshDrawableState();
        }
    }

    /* renamed from: c */
    private void m1307c(boolean z) {
        if (this.f18089j != z) {
            this.f18089j = z;
            refreshDrawableState();
        }
    }

    /* renamed from: d */
    private void m1304d(boolean z) {
        if (this.f18090k != z) {
            this.f18090k = z;
            refreshDrawableState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        if (isChecked() != false) goto L_0x0068;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1301g() {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.m1301g():void");
    }

    /* renamed from: h */
    private void m1300h() {
        if (this.f18087h == Integer.MIN_VALUE) {
            m1316a(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public boolean m1299i() {
        C2980c cVar = this.f18082c;
        return (cVar == null || cVar.m1239l() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public RectF m1298j() {
        this.f18093n.setEmpty();
        if (m1299i()) {
            this.f18082c.m1269a(this.f18093n);
        }
        return this.f18093n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public Rect m1297k() {
        RectF j = m1298j();
        this.f18092m.set((int) j.left, (int) j.top, (int) j.right, (int) j.bottom);
        return this.f18092m;
    }

    /* renamed from: l */
    private C2994b m1296l() {
        C2980c cVar = this.f18082c;
        if (cVar != null) {
            return cVar.m1245f();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1314a(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f18085f = onCheckedChangeListener;
    }

    @Override // com.google.android.material.chip.C2980c.AbstractC2981a
    /* renamed from: c */
    public final void mo1224c() {
        m1301g();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* renamed from: d */
    public final boolean m1306d() {
        boolean z;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f18084e;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.f18091l.m8119a(0, 1);
        return z;
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m1315a(motionEvent) || this.f18091l.m8114a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f18091l.m8115a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C2980c cVar = this.f18082c;
        int i = 0;
        boolean z = false;
        if (cVar != null) {
            z = false;
            if (cVar.m1252c()) {
                C2980c cVar2 = this.f18082c;
                int i2 = isEnabled() ? 1 : 0;
                int i3 = i2;
                if (this.f18090k) {
                    i3 = i2 + 1;
                }
                int i4 = i3;
                if (this.f18089j) {
                    i4 = i3 + 1;
                }
                int i5 = i4;
                if (this.f18088i) {
                    i5 = i4 + 1;
                }
                int i6 = i5;
                if (isChecked()) {
                    i6 = i5 + 1;
                }
                int[] iArr = new int[i6];
                if (isEnabled()) {
                    iArr[0] = 16842910;
                    i = 1;
                }
                int i7 = i;
                if (this.f18090k) {
                    iArr[i] = 16842908;
                    i7 = i + 1;
                }
                int i8 = i7;
                if (this.f18089j) {
                    iArr[i7] = 16843623;
                    i8 = i7 + 1;
                }
                int i9 = i8;
                if (this.f18088i) {
                    iArr[i8] = 16842919;
                    i9 = i8 + 1;
                }
                if (isChecked()) {
                    iArr[i9] = 16842913;
                }
                z = cVar2.m1261a(iArr);
            }
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: e */
    public final CharSequence m1303e() {
        C2980c cVar = this.f18082c;
        if (cVar != null) {
            return cVar.m1237n();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C2980c cVar = this.f18082c;
        if (cVar != null) {
            return cVar.m1244g();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f18087h == 0) {
            rect.set(m1297k());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        C2980c cVar = this.f18082c;
        return cVar != null ? cVar.m1246e() : "";
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f18081b);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        C2980c cVar;
        if (TextUtils.isEmpty(getText()) || (cVar = this.f18082c) == null || cVar.m1225z()) {
            super.onDraw(canvas);
            return;
        }
        int save = canvas.save();
        C2980c cVar2 = this.f18082c;
        float r = cVar2 != null ? cVar2.m1233r() : 0.0f;
        float b = cVar2.m1259b();
        C2980c cVar3 = this.f18082c;
        float u = r + b + (cVar3 != null ? cVar3.m1230u() : 0.0f);
        if (C0741t.m8325g(this) != 0) {
            u = -u;
        }
        canvas.translate(u, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        m1316a(z ? -1 : Integer.MIN_VALUE);
        invalidate();
        super.onFocusChanged(z, i, rect);
        this.f18091l.m8111a(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                z = false;
            }
            return super.onHoverEvent(motionEvent);
        }
        z = m1298j().contains(motionEvent.getX(), motionEvent.getY());
        m1307c(z);
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        View focusSearch;
        boolean z2;
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 21:
                        z = false;
                        if (keyEvent.hasNoModifiers()) {
                            z2 = C3053s.m953a(this);
                            z = m1311a(z2);
                            break;
                        }
                        break;
                    case 22:
                        z = false;
                        if (keyEvent.hasNoModifiers()) {
                            z2 = !C3053s.m953a(this);
                            z = m1311a(z2);
                            break;
                        }
                        break;
                    case 23:
                        break;
                    default:
                        z = false;
                        break;
                }
            }
            int i2 = this.f18087h;
            if (i2 == -1) {
                performClick();
                return true;
            } else if (i2 != 0) {
                z = false;
            } else {
                m1306d();
                return true;
            }
        } else {
            int i3 = keyEvent.hasNoModifiers() ? 2 : keyEvent.hasModifiers(1) ? 1 : 0;
            z = false;
            if (i3 != 0) {
                ViewParent parent = getParent();
                Chip chip = this;
                do {
                    focusSearch = chip.focusSearch(i3);
                    if (focusSearch == null || focusSearch == this) {
                        break;
                    }
                    chip = focusSearch;
                } while (focusSearch.getParent() == parent);
                z = false;
                if (focusSearch != null) {
                    focusSearch.requestFocus();
                    return true;
                }
            }
        }
        if (!z) {
            return super.onKeyDown(i, keyEvent);
        }
        invalidate();
        return true;
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!m1298j().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), 1002);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r0 != 3) goto L_0x0067;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.getActionMasked()
            r6 = r0
            r0 = r4
            android.graphics.RectF r0 = r0.m1298j()
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.contains(r1, r2)
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0059
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x003e
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L_0x002b
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L_0x004f
            goto L_0x0067
        L_0x002b:
            r0 = r4
            boolean r0 = r0.f18088i
            if (r0 == 0) goto L_0x0067
            r0 = r7
            if (r0 != 0) goto L_0x0062
            r0 = r4
            r1 = 0
            r0.m1309b(r1)
            goto L_0x0062
        L_0x003e:
            r0 = r4
            boolean r0 = r0.f18088i
            if (r0 == 0) goto L_0x004f
            r0 = r4
            boolean r0 = r0.m1306d()
            r0 = 1
            r6 = r0
            goto L_0x0051
        L_0x004f:
            r0 = 0
            r6 = r0
        L_0x0051:
            r0 = r4
            r1 = 0
            r0.m1309b(r1)
            goto L_0x0069
        L_0x0059:
            r0 = r7
            if (r0 == 0) goto L_0x0067
            r0 = r4
            r1 = 1
            r0.m1309b(r1)
        L_0x0062:
            r0 = 1
            r6 = r0
            goto L_0x0069
        L_0x0067:
            r0 = 0
            r6 = r0
        L_0x0069:
            r0 = r6
            if (r0 != 0) goto L_0x007a
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L_0x0078
            goto L_0x007a
        L_0x0078:
            r0 = 0
            return r0
        L_0x007a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == this.f18082c || drawable == this.f18083d) {
            super.setBackground(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.f18082c || drawable == this.f18083d) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        C2980c cVar = this.f18082c;
        if (cVar == null) {
            this.f18086g = z;
        } else if (cVar.m1236o()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && (onCheckedChangeListener = this.f18085f) != null) {
                onCheckedChangeListener.onCheckedChanged(this, z);
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f18082c != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                C2980c cVar = this.f18082c;
                if (cVar != null) {
                    cVar.m1267a(truncateAt);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        C2980c cVar = this.f18082c;
        if (cVar != null) {
            cVar.m1258b(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.f18082c != null) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            CharSequence a = C0663a.m8583a().m8582a(charSequence2);
            if (this.f18082c.m1225z()) {
                a = null;
            }
            super.setText(a, bufferType);
            C2980c cVar = this.f18082c;
            if (cVar != null) {
                cVar.m1263a(charSequence2);
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C2980c cVar = this.f18082c;
        if (cVar != null) {
            cVar.m1273a(i);
        }
        if (m1296l() != null) {
            m1296l().m1187b(getContext(), getPaint(), this.f18094o);
            m1312a(m1296l());
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C2980c cVar = this.f18082c;
        if (cVar != null) {
            cVar.m1273a(i);
        }
        if (m1296l() != null) {
            m1296l().m1187b(context, getPaint(), this.f18094o);
            m1312a(m1296l());
        }
    }
}
