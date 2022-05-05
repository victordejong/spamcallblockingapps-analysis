package androidx.appcompat.p022b.p023a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.core.graphics.drawable.C0758a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.b.a.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b.class */
public class C0330b extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    private AbstractC0332b f1360a;

    /* renamed from: b */
    private Rect f1361b;

    /* renamed from: c */
    private Drawable f1362c;

    /* renamed from: d */
    private Drawable f1363d;

    /* renamed from: f */
    private boolean f1365f;

    /* renamed from: i */
    private boolean f1368i;

    /* renamed from: j */
    private Runnable f1369j;

    /* renamed from: k */
    private long f1370k;

    /* renamed from: l */
    private long f1371l;

    /* renamed from: m */
    private C0331a f1372m;

    /* renamed from: e */
    private int f1364e = 255;

    /* renamed from: g */
    private int f1366g = -1;

    /* renamed from: h */
    private int f1367h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$a.class */
    public static final class C0331a implements Drawable.Callback {

        /* renamed from: a */
        private Drawable.Callback f1373a;

        C0331a() {
        }

        /* renamed from: a */
        public final Drawable.Callback m9732a() {
            Drawable.Callback callback = this.f1373a;
            this.f1373a = null;
            return callback;
        }

        /* renamed from: a */
        public final C0331a m9731a(Drawable.Callback callback) {
            this.f1373a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f1373a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f1373a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.b.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/b$b.class */
    public static abstract class AbstractC0332b extends Drawable.ConstantState {

        /* renamed from: A */
        boolean f1374A;

        /* renamed from: B */
        int f1375B;

        /* renamed from: C */
        int f1376C;

        /* renamed from: D */
        int f1377D;

        /* renamed from: E */
        boolean f1378E;

        /* renamed from: F */
        ColorFilter f1379F;

        /* renamed from: G */
        boolean f1380G;

        /* renamed from: H */
        ColorStateList f1381H;

        /* renamed from: I */
        PorterDuff.Mode f1382I;

        /* renamed from: J */
        boolean f1383J;

        /* renamed from: K */
        boolean f1384K;

        /* renamed from: c */
        final C0330b f1385c;

        /* renamed from: d */
        Resources f1386d;

        /* renamed from: e */
        int f1387e;

        /* renamed from: f */
        int f1388f;

        /* renamed from: g */
        int f1389g;

        /* renamed from: h */
        SparseArray<Drawable.ConstantState> f1390h;

        /* renamed from: i */
        Drawable[] f1391i;

        /* renamed from: j */
        int f1392j;

        /* renamed from: k */
        boolean f1393k;

        /* renamed from: l */
        boolean f1394l;

        /* renamed from: m */
        Rect f1395m;

        /* renamed from: n */
        boolean f1396n;

        /* renamed from: o */
        boolean f1397o;

        /* renamed from: p */
        int f1398p;

        /* renamed from: q */
        int f1399q;

        /* renamed from: r */
        int f1400r;

        /* renamed from: s */
        int f1401s;

        /* renamed from: t */
        boolean f1402t;

        /* renamed from: u */
        int f1403u;

        /* renamed from: v */
        boolean f1404v;

        /* renamed from: w */
        boolean f1405w;

        /* renamed from: x */
        boolean f1406x;

        /* renamed from: y */
        boolean f1407y;

        /* renamed from: z */
        boolean f1408z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0332b(AbstractC0332b bVar, C0330b bVar2, Resources resources) {
            this.f1387e = 160;
            this.f1393k = false;
            this.f1396n = false;
            this.f1408z = true;
            this.f1376C = 0;
            this.f1377D = 0;
            this.f1385c = bVar2;
            this.f1386d = resources != null ? resources : bVar != null ? bVar.f1386d : null;
            this.f1387e = C0330b.m9736a(resources, bVar != null ? bVar.f1387e : 0);
            if (bVar != null) {
                this.f1388f = bVar.f1388f;
                this.f1389g = bVar.f1389g;
                this.f1406x = true;
                this.f1407y = true;
                this.f1393k = bVar.f1393k;
                this.f1396n = bVar.f1396n;
                this.f1408z = bVar.f1408z;
                this.f1374A = bVar.f1374A;
                this.f1375B = bVar.f1375B;
                this.f1376C = bVar.f1376C;
                this.f1377D = bVar.f1377D;
                this.f1378E = bVar.f1378E;
                this.f1379F = bVar.f1379F;
                this.f1380G = bVar.f1380G;
                this.f1381H = bVar.f1381H;
                this.f1382I = bVar.f1382I;
                this.f1383J = bVar.f1383J;
                this.f1384K = bVar.f1384K;
                if (bVar.f1387e == this.f1387e) {
                    if (bVar.f1394l) {
                        this.f1395m = new Rect(bVar.f1395m);
                        this.f1394l = true;
                    }
                    if (bVar.f1397o) {
                        this.f1398p = bVar.f1398p;
                        this.f1399q = bVar.f1399q;
                        this.f1400r = bVar.f1400r;
                        this.f1401s = bVar.f1401s;
                        this.f1397o = true;
                    }
                }
                if (bVar.f1402t) {
                    this.f1403u = bVar.f1403u;
                    this.f1402t = true;
                }
                if (bVar.f1404v) {
                    this.f1405w = bVar.f1405w;
                    this.f1404v = true;
                }
                Drawable[] drawableArr = bVar.f1391i;
                this.f1391i = new Drawable[drawableArr.length];
                this.f1392j = bVar.f1392j;
                SparseArray<Drawable.ConstantState> sparseArray = bVar.f1390h;
                this.f1390h = sparseArray != null ? sparseArray.clone() : new SparseArray<>(this.f1392j);
                int i = this.f1392j;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.f1390h.put(i2, constantState);
                        } else {
                            this.f1391i[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.f1391i = new Drawable[10];
            this.f1392j = 0;
        }

        /* renamed from: b */
        private Drawable m9725b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f1375B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f1385c);
            return mutate;
        }

        /* renamed from: k */
        private void m9716k() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f1390h;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f1391i[this.f1390h.keyAt(i)] = m9725b(this.f1390h.valueAt(i).newDrawable(this.f1386d));
                }
                this.f1390h = null;
            }
        }

        /* renamed from: l */
        private void m9715l() {
            this.f1397o = true;
            m9716k();
            int i = this.f1392j;
            Drawable[] drawableArr = this.f1391i;
            this.f1399q = -1;
            this.f1398p = -1;
            this.f1401s = 0;
            this.f1400r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f1398p) {
                    this.f1398p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f1399q) {
                    this.f1399q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f1400r) {
                    this.f1400r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f1401s) {
                    this.f1401s = minimumHeight;
                }
            }
        }

        /* renamed from: a */
        public final int m9728a(Drawable drawable) {
            int i = this.f1392j;
            if (i >= this.f1391i.length) {
                mo9706d(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f1385c);
            this.f1391i[i] = drawable;
            this.f1392j++;
            this.f1389g = drawable.getChangingConfigurations() | this.f1389g;
            m9727b();
            this.f1395m = null;
            this.f1394l = false;
            this.f1397o = false;
            this.f1406x = false;
            return i;
        }

        /* renamed from: a */
        void mo9708a() {
            int i = this.f1392j;
            Drawable[] drawableArr = this.f1391i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.f1374A = true;
        }

        /* renamed from: a */
        final void m9730a(Resources.Theme theme) {
            if (theme != null) {
                m9716k();
                int i = this.f1392j;
                Drawable[] drawableArr = this.f1391i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.f1389g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m9729a(theme.getResources());
            }
        }

        /* renamed from: a */
        final void m9729a(Resources resources) {
            if (resources != null) {
                this.f1386d = resources;
                int a = C0330b.m9736a(resources, this.f1387e);
                int i = this.f1387e;
                this.f1387e = a;
                if (i != a) {
                    this.f1397o = false;
                    this.f1394l = false;
                }
            }
        }

        /* renamed from: b */
        public final Drawable m9726b(int i) {
            int indexOfKey;
            Drawable drawable = this.f1391i[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f1390h;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable b = m9725b(this.f1390h.valueAt(indexOfKey).newDrawable(this.f1386d));
            this.f1391i[i] = b;
            this.f1390h.removeAt(indexOfKey);
            if (this.f1390h.size() == 0) {
                this.f1390h = null;
            }
            return b;
        }

        /* renamed from: b */
        final void m9727b() {
            this.f1402t = false;
            this.f1404v = false;
        }

        /* renamed from: c */
        public final Rect m9724c() {
            if (this.f1393k) {
                return null;
            }
            if (this.f1395m != null || this.f1394l) {
                return this.f1395m;
            }
            m9716k();
            Rect rect = new Rect();
            int i = this.f1392j;
            Drawable[] drawableArr = this.f1391i;
            Rect rect2 = null;
            for (int i2 = 0; i2 < i; i2++) {
                rect2 = rect2;
                if (drawableArr[i2].getPadding(rect)) {
                    Rect rect3 = rect2;
                    if (rect2 == null) {
                        rect3 = new Rect(0, 0, 0, 0);
                    }
                    if (rect.left > rect3.left) {
                        rect3.left = rect.left;
                    }
                    if (rect.top > rect3.top) {
                        rect3.top = rect.top;
                    }
                    if (rect.right > rect3.right) {
                        rect3.right = rect.right;
                    }
                    rect2 = rect3;
                    if (rect.bottom > rect3.bottom) {
                        rect3.bottom = rect.bottom;
                        rect2 = rect3;
                    }
                }
            }
            this.f1394l = true;
            this.f1395m = rect2;
            return rect2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.f1392j;
            Drawable[] drawableArr = this.f1391i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f1390h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public final int m9723d() {
            if (!this.f1397o) {
                m9715l();
            }
            return this.f1398p;
        }

        /* renamed from: d */
        public void mo9706d(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f1391i, 0, drawableArr, 0, i);
            this.f1391i = drawableArr;
        }

        /* renamed from: e */
        public final int m9722e() {
            if (!this.f1397o) {
                m9715l();
            }
            return this.f1399q;
        }

        /* renamed from: f */
        public final int m9721f() {
            if (!this.f1397o) {
                m9715l();
            }
            return this.f1400r;
        }

        /* renamed from: g */
        public final int m9720g() {
            if (!this.f1397o) {
                m9715l();
            }
            return this.f1401s;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1389g | this.f1388f;
        }

        /* renamed from: h */
        public final int m9719h() {
            if (this.f1402t) {
                return this.f1403u;
            }
            m9716k();
            int i = this.f1392j;
            Drawable[] drawableArr = this.f1391i;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f1403u = opacity;
            this.f1402t = true;
            return opacity;
        }

        /* renamed from: i */
        public final boolean m9718i() {
            if (this.f1404v) {
                return this.f1405w;
            }
            m9716k();
            int i = this.f1392j;
            Drawable[] drawableArr = this.f1391i;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                } else if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            this.f1405w = z;
            this.f1404v = true;
            return z;
        }

        /* renamed from: j */
        public final boolean m9717j() {
            synchronized (this) {
                if (this.f1406x) {
                    return this.f1407y;
                }
                m9716k();
                this.f1406x = true;
                int i = this.f1392j;
                Drawable[] drawableArr = this.f1391i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getConstantState() == null) {
                        this.f1407y = false;
                        return false;
                    }
                }
                this.f1407y = true;
                return true;
            }
        }
    }

    /* renamed from: a */
    static int m9736a(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* renamed from: a */
    private void m9735a(Drawable drawable) {
        if (this.f1372m == null) {
            this.f1372m = new C0331a();
        }
        drawable.setCallback(this.f1372m.m9731a(drawable.getCallback()));
        try {
            if (this.f1360a.f1376C <= 0 && this.f1365f) {
                drawable.setAlpha(this.f1364e);
            }
            if (this.f1360a.f1380G) {
                drawable.setColorFilter(this.f1360a.f1379F);
            } else {
                if (this.f1360a.f1383J) {
                    C0758a.m8251a(drawable, this.f1360a.f1381H);
                }
                if (this.f1360a.f1384K) {
                    C0758a.m8248a(drawable, this.f1360a.f1382I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f1360a.f1408z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f1360a.f1378E);
            }
            Rect rect = this.f1361b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f1372m.m9732a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9737a(Resources resources) {
        this.f1360a.m9729a(resources);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo9710a(AbstractC0332b bVar) {
        this.f1360a = bVar;
        int i = this.f1366g;
        if (i >= 0) {
            this.f1362c = bVar.m9726b(i);
            Drawable drawable = this.f1362c;
            if (drawable != null) {
                m9735a(drawable);
            }
        }
        this.f1367h = -1;
        this.f1363d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9734a(boolean r8) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p022b.p023a.C0330b.m9734a(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m9738a(int i) {
        if (i == this.f1366g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f1360a.f1377D > 0) {
            Drawable drawable = this.f1363d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f1362c;
            if (drawable2 != null) {
                this.f1363d = drawable2;
                this.f1367h = this.f1366g;
                this.f1371l = this.f1360a.f1377D + uptimeMillis;
            } else {
                this.f1363d = null;
                this.f1367h = -1;
                this.f1371l = 0L;
            }
        } else {
            Drawable drawable3 = this.f1362c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i < 0 || i >= this.f1360a.f1392j) {
            this.f1362c = null;
            this.f1366g = -1;
        } else {
            Drawable b = this.f1360a.m9726b(i);
            this.f1362c = b;
            this.f1366g = i;
            if (b != null) {
                if (this.f1360a.f1376C > 0) {
                    this.f1370k = uptimeMillis + this.f1360a.f1376C;
                }
                m9735a(b);
            }
        }
        if (!(this.f1370k == 0 && this.f1371l == 0)) {
            Runnable runnable = this.f1369j;
            if (runnable == null) {
                this.f1369j = new RunnableC0333c(this);
            } else {
                unscheduleSelf(runnable);
            }
            m9734a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f1360a.m9730a(theme);
    }

    /* renamed from: b */
    AbstractC0332b mo9709b() {
        return this.f1360a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m9733c() {
        return this.f1366g;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f1360a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f1363d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1364e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f1360a.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f1360a.m9717j()) {
            return null;
        }
        this.f1360a.f1388f = getChangingConfigurations();
        return this.f1360a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1362c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f1361b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f1360a.f1396n) {
            return this.f1360a.m9722e();
        }
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f1360a.f1396n) {
            return this.f1360a.m9723d();
        }
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f1360a.f1396n) {
            return this.f1360a.m9720g();
        }
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f1360a.f1396n) {
            return this.f1360a.m9721f();
        }
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1362c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f1360a.m9719h();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z;
        Rect c = this.f1360a.m9724c();
        if (c != null) {
            rect.set(c);
            z = (c.right | ((c.left | c.top) | c.bottom)) != 0;
        } else {
            Drawable drawable = this.f1362c;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        boolean z2 = false;
        if (isAutoMirrored()) {
            z2 = false;
            if (C0758a.m8239h(this) == 1) {
                z2 = true;
            }
        }
        if (z2) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC0332b bVar = this.f1360a;
        if (bVar != null) {
            bVar.m9727b();
        }
        if (drawable == this.f1362c && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1360a.f1378E;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f1360a.m9718i();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f1363d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f1363d = null;
            this.f1367h = -1;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f1362c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f1365f) {
                this.f1362c.setAlpha(this.f1364e);
            }
        }
        if (this.f1371l != 0) {
            this.f1371l = 0L;
            z = true;
        }
        if (this.f1370k != 0) {
            this.f1370k = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1368i && super.mutate() == this) {
            AbstractC0332b b = mo9709b();
            b.mo9708a();
            mo9710a(b);
            this.f1368i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1363d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f1362c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        AbstractC0332b bVar = this.f1360a;
        int i2 = this.f1366g;
        int i3 = bVar.f1392j;
        Drawable[] drawableArr = bVar.f1391i;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            z = z;
            if (drawableArr[i4] != null) {
                z = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                z = z;
                if (i4 == i2) {
                }
            }
        }
        bVar.f1375B = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f1363d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f1362c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1363d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f1362c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.f1362c && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f1365f || this.f1364e != i) {
            this.f1365f = true;
            this.f1364e = i;
            Drawable drawable = this.f1362c;
            if (drawable == null) {
                return;
            }
            if (this.f1370k == 0) {
                drawable.setAlpha(i);
            } else {
                m9734a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f1360a.f1378E != z) {
            AbstractC0332b bVar = this.f1360a;
            bVar.f1378E = z;
            Drawable drawable = this.f1362c;
            if (drawable != null) {
                C0758a.m8247a(drawable, bVar.f1378E);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC0332b bVar = this.f1360a;
        bVar.f1380G = true;
        if (bVar.f1379F != colorFilter) {
            this.f1360a.f1379F = colorFilter;
            Drawable drawable = this.f1362c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f1360a.f1408z != z) {
            AbstractC0332b bVar = this.f1360a;
            bVar.f1408z = z;
            Drawable drawable = this.f1362c;
            if (drawable != null) {
                drawable.setDither(bVar.f1408z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            C0758a.m8254a(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f1361b;
        if (rect == null) {
            this.f1361b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f1362c;
        if (drawable != null) {
            C0758a.m8252a(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public void setTintList(ColorStateList colorStateList) {
        AbstractC0332b bVar = this.f1360a;
        bVar.f1383J = true;
        if (bVar.f1381H != colorStateList) {
            this.f1360a.f1381H = colorStateList;
            C0758a.m8251a(this.f1362c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0759b
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC0332b bVar = this.f1360a;
        bVar.f1384K = true;
        if (bVar.f1382I != mode) {
            this.f1360a.f1382I = mode;
            C0758a.m8248a(this.f1362c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f1363d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f1362c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.f1362c && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
