package com.android.contacts.list;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.CharArrayBuffer;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.QuickContactBadge;
import android.widget.TextView;
import com.asus.contacts.c;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusGroupListItemView.class */
public class AsusGroupListItemView extends ViewGroup implements AbsListView.SelectionBoundsAdjuster {
    private int A;
    private TextView B;
    private QuickContactBadge D;
    private ImageView E;
    private TextView F;
    private TextView G;
    private TextView H;
    private TextView I;
    private TextView J;
    private TextView K;
    private TextView L;
    private ImageView M;
    private ColorStateList N;
    private char[] O;
    private int P;
    private int Q;
    private int R;
    private boolean S;
    private boolean T;
    private int V;
    private int W;

    /* renamed from: a  reason: collision with root package name */
    protected final Context f1691a;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private int ae;
    private boolean ah;
    private com.android.contacts.h.a aj;
    private CharSequence ak;
    private int am;
    private int an;
    private int ao;
    Drawable c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private Drawable p;
    private final int q;
    private final int r;
    private int s;
    private int t;
    private Drawable v;
    private int w;
    private boolean y;
    private View z;

    /* renamed from: b  reason: collision with root package name */
    public static final a f1690b = a.RIGHT;
    private static Pattern ap = Pattern.compile("([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+");
    private boolean u = true;
    private a x = f1690b;
    private boolean C = true;
    private boolean U = false;
    private final CharArrayBuffer af = new CharArrayBuffer(128);
    private final CharArrayBuffer ag = new CharArrayBuffer(128);
    private Rect ai = new Rect();
    private ImageView al = null;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusGroupListItemView$a.class */
    public enum a {
        LEFT,
        RIGHT
    }

    public AsusGroupListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = null;
        this.am = 0;
        this.an = 0;
        this.ao = 14;
        this.f1691a = context;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.a.e);
        this.d = obtainStyledAttributes.getDimensionPixelSize(18, 0);
        this.p = obtainStyledAttributes.getDrawable(0);
        this.v = obtainStyledAttributes.getDrawable(9);
        this.e = obtainStyledAttributes.getDimensionPixelOffset(10, 0);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(11, 0);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(26, 4);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(27, 16);
        this.P = obtainStyledAttributes.getDimensionPixelOffset(24, 0);
        this.j = obtainStyledAttributes.getDimensionPixelOffset(14, 0);
        this.i = obtainStyledAttributes.getColor(13, -16777216);
        this.A = obtainStyledAttributes.getDimensionPixelSize(12, 30);
        this.k = obtainStyledAttributes.getDimensionPixelSize(17, 1);
        this.l = obtainStyledAttributes.getColor(16, 0);
        this.o = obtainStyledAttributes.getDimensionPixelOffset(29, 0);
        this.m = obtainStyledAttributes.getDimensionPixelSize(6, 12);
        this.n = obtainStyledAttributes.getColor(5, -16777216);
        this.r = obtainStyledAttributes.getInteger(8, 5);
        this.q = obtainStyledAttributes.getInteger(19, 3);
        setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(22, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        this.aj = new com.android.contacts.h.a(obtainStyledAttributes.getColor(25, -1), this.f1691a.getResources().getColor(2131034193));
        obtainStyledAttributes.recycle();
        this.N = context.getResources().getColorStateList(2131034210);
        this.w = this.v.getIntrinsicHeight();
        if (this.p != null) {
            this.p.setCallback(this);
        }
        this.c = this.f1691a.getResources().getDrawable(2131165782);
        if (this.c != null) {
            this.am = this.c.getMinimumWidth();
            this.an = this.c.getMinimumHeight();
        }
        this.ao = getContext().getResources().getDimensionPixelSize(2131100088);
    }

    private static void a(TextView textView, CharSequence charSequence) {
        if (TextUtils.TruncateAt.MARQUEE == TextUtils.TruncateAt.MARQUEE) {
            SpannableString spannableString = new SpannableString(charSequence);
            spannableString.setSpan(TextUtils.TruncateAt.MARQUEE, 0, spannableString.length(), 33);
            textView.setText(spannableString);
            return;
        }
        textView.setText(charSequence);
    }

    private static void a(TextView textView, char[] cArr, int i) {
        if (TextUtils.TruncateAt.MARQUEE == TextUtils.TruncateAt.MARQUEE) {
            a(textView, new String(cArr, 0, i));
        } else {
            textView.setText(cArr, 0, i);
        }
    }

    private static boolean a(View view) {
        return view != null && view.getVisibility() == 0;
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        rect.top += this.ai.top;
        rect.bottom = rect.top + this.ai.height();
        rect.left += this.s;
        rect.right -= this.t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.ah && isActivated()) {
            this.p.draw(canvas);
        }
        if (this.u) {
            this.v.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.ah) {
            this.p.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.ah) {
            this.p.jumpToCurrentState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x021d, code lost:
        if (a(r7.M) != false) goto L_0x0220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d3, code lost:
        if (a(r7.I) != false) goto L_0x02d6;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1007
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.AsusGroupListItemView.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int resolveSize = resolveSize(0, i);
        int i5 = this.u ? this.d + this.w : this.d;
        this.V = 0;
        this.W = 0;
        this.aa = 0;
        this.ab = 0;
        this.ae = 0;
        this.ac = 0;
        this.ad = 0;
        if (!this.U) {
            int i6 = this.P;
            this.R = i6;
            this.Q = i6;
            if (!this.C && this.E == null) {
                if (!this.S) {
                    this.Q = 0;
                }
                if (!this.T) {
                    this.R = 0;
                }
            }
            this.U = true;
        }
        int paddingLeft = (this.Q > 0 || this.S) ? ((resolveSize - getPaddingLeft()) - getPaddingRight()) - (this.Q + this.e) : (resolveSize - getPaddingLeft()) - getPaddingRight();
        this.al.measure(0, 0);
        if (a(this.F)) {
            this.F.measure(View.MeasureSpec.makeMeasureSpec(this.x != a.LEFT ? paddingLeft - this.o : paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.V = this.F.getMeasuredHeight();
        }
        if (a(this.G)) {
            this.G.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.W = this.G.getMeasuredHeight();
        }
        if (a(this.I)) {
            if (a(this.H)) {
                int i7 = paddingLeft - this.f;
                i3 = (this.r * i7) / (this.r + this.q);
                i4 = (i7 * this.q) / (this.r + this.q);
            } else {
                i3 = paddingLeft;
                i4 = 0;
            }
        } else if (a(this.H)) {
            i4 = paddingLeft;
            i3 = 0;
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (a(this.I)) {
            this.I.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.ab = this.I.getMeasuredHeight();
        }
        if (a(this.H)) {
            this.H.measure(View.MeasureSpec.makeMeasureSpec(i4, this.x == a.LEFT ? 1073741824 : Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aa = this.H.getMeasuredHeight();
        }
        this.ae = Math.max(this.aa, this.ab);
        if (a(this.J)) {
            this.J.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.ac = this.J.getMeasuredHeight();
        }
        if (a(this.M)) {
            this.M.measure(this.h, this.h);
            this.ad = this.M.getMeasuredHeight();
        }
        if (a(this.K)) {
            int i8 = paddingLeft;
            if (a(this.M)) {
                i8 = (paddingLeft - this.M.getMeasuredWidth()) - this.g;
            }
            this.K.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.ad = Math.max(this.ad, this.K.getMeasuredHeight());
        }
        int max = Math.max(this.V + this.W + this.ae + this.ac + this.ad, this.R + getPaddingBottom() + getPaddingTop());
        int i9 = max;
        if (this.u) {
            i9 = max + this.w;
        }
        int max2 = Math.max(i9, i5);
        int i10 = max2;
        if (this.y) {
            this.B.measure(View.MeasureSpec.makeMeasureSpec(resolveSize, 1073741824), View.MeasureSpec.makeMeasureSpec(this.A, 1073741824));
            if (this.L != null) {
                this.L.measure(View.MeasureSpec.makeMeasureSpec(resolveSize, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.A, 1073741824));
            }
            this.A = Math.max(this.A, this.B.getMeasuredHeight());
            i10 = max2 + this.A + this.k;
        }
        setMeasuredDimension(resolveSize, i10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        forceLayout();
    }

    public void setActivatedStateSupported(boolean z) {
        this.ah = z;
    }

    public void setCountView(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.L == null) {
                this.L = new TextView(this.f1691a);
                this.L.setSingleLine(true);
                this.L.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                this.L.setTextAppearance(this.f1691a, 16973892);
                this.L.setTextColor(2131034330);
                addView(this.L);
            }
            a(this.L, charSequence);
            this.L.setTextSize(0, this.m);
            this.L.setGravity(16);
            this.L.setTextColor(this.n);
            this.L.setVisibility(0);
        } else if (this.L != null) {
            this.L.setVisibility(8);
        }
    }

    public void setData(char[] cArr, int i) {
        if (cArr != null && i != 0) {
            if (this.I == null) {
                this.I = new TextView(this.f1691a);
                this.I.setSingleLine(true);
                this.I.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                this.I.setTextAppearance(this.f1691a, 16973894);
                this.I.setActivated(isActivated());
                addView(this.I);
            }
            a(this.I, cArr, i);
            this.I.setVisibility(0);
        } else if (this.I != null) {
            this.I.setVisibility(8);
        }
    }

    public void setDividerVisible(boolean z) {
        this.u = z;
    }

    public void setHighlightedPrefix(char[] cArr) {
        this.O = cArr;
    }

    public void setLabel(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.H == null) {
                this.H = new TextView(this.f1691a);
                this.H.setSingleLine(true);
                this.H.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                this.H.setTextAppearance(this.f1691a, 16973894);
                if (this.x == a.LEFT) {
                    this.H.setTextSize(2, this.m);
                    this.H.setAllCaps(true);
                    this.H.setGravity(5);
                } else {
                    this.H.setTypeface(this.H.getTypeface(), 1);
                }
                this.H.setActivated(isActivated());
                addView(this.H);
            }
            a(this.H, charSequence);
            this.H.setVisibility(0);
        } else if (this.H != null) {
            this.H.setVisibility(8);
        }
    }

    public void setPhoneticName(char[] cArr, int i) {
        if (cArr != null && i != 0) {
            if (this.G == null) {
                this.G = new TextView(this.f1691a);
                this.G.setSingleLine(true);
                this.G.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                this.G.setTextAppearance(this.f1691a, 16973894);
                this.G.setTypeface(this.G.getTypeface(), 1);
                this.G.setActivated(isActivated());
                addView(this.G);
            }
            a(this.G, cArr, i);
            this.G.setVisibility(0);
        } else if (this.G != null) {
            this.G.setVisibility(8);
        }
    }

    public void setPhotoPosition(a aVar) {
        this.x = aVar;
    }

    public void setPresence(Drawable drawable) {
        if (drawable != null) {
            if (this.M == null) {
                this.M = new ImageView(this.f1691a);
                addView(this.M);
            }
            this.M.setImageDrawable(drawable);
            this.M.setScaleType(ImageView.ScaleType.CENTER);
            this.M.setVisibility(0);
        } else if (this.M != null) {
            this.M.setVisibility(8);
        }
    }

    public void setQuickContactEnabled(boolean z) {
        this.C = z;
    }

    public void setSectionHeader(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (this.B == null) {
                this.B = new TextView(this.f1691a);
                this.B.setTextColor(this.i);
                this.B.setTextSize(2, this.ao);
                this.B.setTypeface(this.B.getTypeface(), 1);
                this.B.setGravity(16);
                addView(this.B);
            }
            if (this.z == null) {
                this.z = new View(this.f1691a);
                this.z.setBackgroundColor(this.l);
                addView(this.z);
            }
            a(this.B, str);
            this.B.setVisibility(0);
            this.z.setVisibility(0);
            this.B.setAllCaps(true);
            this.y = true;
            return;
        }
        if (this.B != null) {
            this.B.setVisibility(8);
        }
        if (this.z != null) {
            this.z.setVisibility(8);
        }
        this.y = false;
    }

    public void setSelectionBoundsHorizontalMargin(int i, int i2) {
        this.s = i;
        this.t = i2;
    }

    public void setSnippet(String str) {
        if (!TextUtils.isEmpty(str)) {
            com.android.contacts.h.a aVar = this.aj;
            if (this.J == null) {
                this.J = new TextView(this.f1691a);
                this.J.setSingleLine(true);
                this.J.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                this.J.setTextAppearance(this.f1691a, 16973894);
                this.J.setTypeface(this.J.getTypeface(), 1);
                this.J.setActivated(isActivated());
                addView(this.J);
            }
            aVar.a(this.J, str, this.O);
            this.J.setVisibility(0);
        } else if (this.J != null) {
            this.J.setVisibility(8);
        }
    }

    public void setStatus(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.K == null) {
                this.K = new TextView(this.f1691a);
                this.K.setSingleLine(true);
                this.K.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                this.K.setTextAppearance(this.f1691a, 16973894);
                this.K.setTextColor(this.N);
                this.K.setActivated(isActivated());
                addView(this.K);
            }
            a(this.K, charSequence);
            this.K.setVisibility(0);
        } else if (this.K != null) {
            this.K.setVisibility(8);
        }
    }

    public void setUnknownNameText(CharSequence charSequence) {
        this.ak = charSequence;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.p || super.verifyDrawable(drawable);
    }
}
