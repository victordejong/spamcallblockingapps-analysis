package com.android.contacts.list;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.b;
import com.android.contacts.dialpad.AsusQuickContactBadge;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.c;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactListItemView.class */
public class ContactListItemView extends ViewGroup implements AbsListView.SelectionBoundsAdjuster {

    /* renamed from: b  reason: collision with root package name */
    public static final a f1714b = a.RIGHT;
    private static Pattern bd = Pattern.compile("([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+");
    private Drawable A;
    private Drawable B;
    private final int C;
    private final int D;
    private final int E;
    private int F;
    private int G;
    private boolean H;
    private Drawable I;
    private int J;
    private a K;
    private boolean L;
    private View M;
    private LinearLayout N;
    private int O;
    private TextView P;
    private boolean Q;
    private AsusQuickContactBadge R;
    private ImageView S;
    private TextView T;
    private TextView U;
    private TextView V;
    private TextView W;

    /* renamed from: a  reason: collision with root package name */
    protected int f1715a;
    private boolean aA;
    private boolean aB;
    private int aC;
    private int aD;
    private int aE;
    private int aF;
    private int aG;
    private int aH;
    private int aI;
    private int aJ;
    private int aK;
    private int aL;
    private int aM;
    private int aN;
    private int aO;
    private int aP;
    private int aQ;
    private int aR;
    private final CharArrayBuffer aS;
    private final CharArrayBuffer aT;
    private boolean aU;
    private Rect aV;
    private boolean aW;
    private String aX;
    private boolean aY;
    private ImageView aZ;
    private TextView aa;
    private TextView ab;
    private ImageView ac;
    private CheckedTextView ad;
    private int ae;
    private ImageView af;
    private ImageView ag;
    private ImageView ah;
    private ImageView ai;
    private ImageView aj;
    private ImageView ak;
    private ImageView al;
    private final String am;
    private boolean an;
    private boolean ao;
    private final int ap;
    private final int aq;
    private RelativeLayout ar;
    private int as;
    private int at;
    private int au;
    private int av;
    private ColorStateList aw;
    private int ax;
    private int ay;
    private boolean az;
    private final View.OnClickListener ba;
    private final View.OnClickListener bb;
    private final View.OnClickListener bc;
    TextView c;
    protected int d;
    public ImageView e;
    public ImageView f;
    public char[] g;
    protected int h;
    protected int i;
    public com.android.contacts.h.a j;
    public CharSequence k;
    private ImageView l;
    private int m;
    private int n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;
    private final int s;
    private final int t;
    private final int u;
    private final int v;
    private final int w;
    private final int x;
    private final int y;
    private final int z;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactListItemView$a.class */
    public enum a {
        LEFT,
        RIGHT
    }

    public ContactListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.H = true;
        this.K = f1714b;
        this.Q = true;
        this.am = "com.asus.vvm";
        this.an = false;
        this.ao = false;
        this.aB = false;
        this.aS = new CharArrayBuffer(128);
        this.aT = new CharArrayBuffer(128);
        this.aV = new Rect();
        this.aW = false;
        this.aX = "default";
        this.aY = false;
        this.ba = new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String obj = ContactListItemView.this.aj.getTag(2131296575).toString();
                if (view != null && obj != null) {
                    Intent intent = new Intent();
                    intent.setPackage("com.asus.vvm");
                    ContactListItemView.this.getContext().startActivity(intent);
                }
            }
        };
        this.bb = new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String obj = ContactListItemView.this.al.getTag(2131296579).toString();
                if (view != null && obj != null) {
                    CallUtil.startDialActivity(ContactListItemView.this.getContext(), PhoneCapabilityTester.newVideoDialNumberIntent(ContactListItemView.this.getContext(), null, obj, -1));
                }
            }
        };
        this.bc = new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String obj = ContactListItemView.this.ak.getTag(2131296579).toString();
                if (view != null && obj != null) {
                    CallUtil.startDialActivity(ContactListItemView.this.getContext(), PhoneCapabilityTester.newDialNumberIntent(ContactListItemView.this.getContext(), null, obj, -1));
                }
            }
        };
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.a.e);
        this.f1715a = obtainStyledAttributes.getDimensionPixelSize(18, 0);
        this.A = obtainStyledAttributes.getDrawable(0);
        this.B = obtainStyledAttributes.getDrawable(1);
        this.I = getResources().getDrawable(2131165190);
        this.o = obtainStyledAttributes.getDimensionPixelOffset(10, 0);
        this.p = obtainStyledAttributes.getDimensionPixelOffset(11, 0);
        this.q = obtainStyledAttributes.getDimensionPixelOffset(26, 4);
        this.r = obtainStyledAttributes.getDimensionPixelOffset(27, 16);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(24, 0);
        this.t = obtainStyledAttributes.getDimensionPixelOffset(14, 0);
        this.s = obtainStyledAttributes.getColor(13, -16777216);
        this.u = obtainStyledAttributes.getDimensionPixelSize(15, 12);
        this.O = obtainStyledAttributes.getDimensionPixelSize(12, 30);
        this.v = obtainStyledAttributes.getDimensionPixelSize(17, 1);
        this.w = obtainStyledAttributes.getColor(16, 0);
        if (PhoneCapabilityTester.IsAsusDevice() || !PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
            this.z = obtainStyledAttributes.getDimensionPixelOffset(29, 0);
        } else {
            this.z = getResources().getDimensionPixelOffset(2131100245);
        }
        this.x = obtainStyledAttributes.getDimensionPixelSize(6, 11);
        this.y = obtainStyledAttributes.getColor(5, -16777216);
        this.E = obtainStyledAttributes.getInteger(8, 5);
        this.D = obtainStyledAttributes.getInteger(19, 3);
        int i = this.f1715a;
        this.aJ = i;
        this.aI = i;
        this.i = obtainStyledAttributes.getDimensionPixelSize(7, 69);
        setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(22, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        this.j = new com.android.contacts.h.a(obtainStyledAttributes.getColor(25, -1), getContext().getResources().getColor(2131034193));
        this.aQ = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        obtainStyledAttributes.recycle();
        this.aw = context.getResources().getColorStateList(2131034210);
        this.ae = context.getResources().getColor(2131034158);
        this.aK = getResources().getDimensionPixelOffset(2131099718);
        this.aL = getResources().getDimensionPixelOffset(2131099717);
        this.aM = getResources().getDimensionPixelOffset(2131099720);
        this.aN = getResources().getDimensionPixelOffset(2131099720);
        this.aO = getResources().getDimensionPixelOffset(2131099720);
        this.aP = getResources().getDimensionPixelOffset(2131099719);
        this.J = this.I.getIntrinsicHeight();
        if (this.A != null) {
            this.A.setCallback(this);
        }
        if (this.B != null) {
            this.B.setCallback(this);
        }
        this.n = 24;
        this.m = 24;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            this.d = getResources().getDimensionPixelOffset(2131099781);
        } else {
            this.d = getResources().getDimensionPixelOffset(2131099782);
        }
        this.C = getResources().getDimensionPixelOffset(2131099787);
        if (this.an) {
            this.ap = getResources().getDimensionPixelOffset(2131100224);
            this.aq = getResources().getDimensionPixelOffset(2131100225);
            return;
        }
        this.ap = 0;
        this.aq = 0;
    }

    public ContactListItemView(Context context, boolean z) {
        super(context, null);
        this.H = true;
        this.K = f1714b;
        this.Q = true;
        this.am = "com.asus.vvm";
        this.an = false;
        this.ao = false;
        this.aB = false;
        this.aS = new CharArrayBuffer(128);
        this.aT = new CharArrayBuffer(128);
        this.aV = new Rect();
        this.aW = false;
        this.aX = "default";
        this.aY = false;
        this.ba = new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String obj = ContactListItemView.this.aj.getTag(2131296575).toString();
                if (view != null && obj != null) {
                    Intent intent = new Intent();
                    intent.setPackage("com.asus.vvm");
                    ContactListItemView.this.getContext().startActivity(intent);
                }
            }
        };
        this.bb = new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String obj = ContactListItemView.this.al.getTag(2131296579).toString();
                if (view != null && obj != null) {
                    CallUtil.startDialActivity(ContactListItemView.this.getContext(), PhoneCapabilityTester.newVideoDialNumberIntent(ContactListItemView.this.getContext(), null, obj, -1));
                }
            }
        };
        this.bc = new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String obj = ContactListItemView.this.ak.getTag(2131296579).toString();
                if (view != null && obj != null) {
                    CallUtil.startDialActivity(ContactListItemView.this.getContext(), PhoneCapabilityTester.newDialNumberIntent(ContactListItemView.this.getContext(), null, obj, -1));
                }
            }
        };
        this.an = z;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes((AttributeSet) null, c.a.e);
        this.f1715a = obtainStyledAttributes.getDimensionPixelSize(18, 0);
        this.o = obtainStyledAttributes.getDimensionPixelOffset(10, 0);
        this.p = obtainStyledAttributes.getDimensionPixelOffset(11, 0);
        this.q = obtainStyledAttributes.getDimensionPixelOffset(26, 4);
        this.r = obtainStyledAttributes.getDimensionPixelOffset(27, 16);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(24, 0);
        this.t = obtainStyledAttributes.getDimensionPixelOffset(14, 0);
        this.u = obtainStyledAttributes.getDimensionPixelSize(15, 12);
        this.O = obtainStyledAttributes.getDimensionPixelSize(12, 30);
        this.v = obtainStyledAttributes.getDimensionPixelSize(17, 1);
        if (PhoneCapabilityTester.IsAsusDevice() || !PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
            this.z = obtainStyledAttributes.getDimensionPixelOffset(29, 0);
        } else {
            this.z = getResources().getDimensionPixelOffset(2131100245);
        }
        this.x = obtainStyledAttributes.getDimensionPixelSize(6, 11);
        this.E = obtainStyledAttributes.getInteger(8, 5);
        this.D = obtainStyledAttributes.getInteger(19, 3);
        this.aY = PhoneCapabilityTester.isUsingTwoPanes(context);
        if (com.android.contacts.skin.a.b() && z) {
            this.I = getResources().getDrawable(2131165191);
            int color = getResources().getColor(2131034197);
            this.s = color;
            this.w = color;
            this.y = getResources().getColor(2131034161);
        } else if (!com.android.contacts.skin.a.c() || !z) {
            this.s = obtainStyledAttributes.getColor(13, -16777216);
            this.w = obtainStyledAttributes.getColor(16, 0);
            this.y = obtainStyledAttributes.getColor(5, -16777216);
            this.I = getResources().getDrawable(2131165190);
        } else {
            this.I = getResources().getDrawable(2131165190);
            int a2 = com.android.contacts.skin.a.a(2);
            this.s = a2;
            this.w = a2;
            this.y = a2;
        }
        int i = this.f1715a;
        this.aJ = i;
        this.aI = i;
        this.i = obtainStyledAttributes.getDimensionPixelSize(7, 69);
        if (PhoneCapabilityTester.IsAsusDevice() || this.aY) {
            setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(22, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        } else {
            setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        }
        int a3 = com.android.contacts.skin.a.c() ? com.android.contacts.skin.a.a(1) : this.mContext.getResources().getColor(2131034152);
        this.A = this.mContext.getResources().getDrawable(2131165375);
        this.B = this.mContext.getResources().getDrawable(2131165375);
        this.j = new com.android.contacts.h.a(a3, getContext().getResources().getColor(2131034193));
        this.aQ = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        obtainStyledAttributes.recycle();
        this.aw = context.getResources().getColorStateList(2131034210);
        if (com.android.contacts.skin.a.b() && z) {
            this.ae = context.getResources().getColor(2131034159);
        } else if (!com.android.contacts.skin.a.c() || !z) {
            this.ae = context.getResources().getColor(2131034158);
        } else {
            this.ae = com.android.contacts.skin.a.a(2);
        }
        this.aK = getResources().getDimensionPixelOffset(2131099718);
        this.aL = getResources().getDimensionPixelOffset(2131099717);
        this.aM = getResources().getDimensionPixelOffset(2131099720);
        this.aN = getResources().getDimensionPixelOffset(2131099720);
        this.aO = getResources().getDimensionPixelOffset(2131099720);
        this.aP = getResources().getDimensionPixelOffset(2131099719);
        this.J = this.I.getIntrinsicHeight();
        if (this.A != null) {
            this.A.setCallback(this);
        }
        if (this.B != null) {
            this.B.setCallback(this);
        }
        this.n = 24;
        this.m = 24;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            this.d = getResources().getDimensionPixelOffset(2131099781);
        } else {
            this.d = getResources().getDimensionPixelOffset(2131099782);
        }
        this.C = getResources().getDimensionPixelOffset(2131099787);
        if (this.an) {
            this.ap = getResources().getDimensionPixelOffset(2131100224);
            this.aq = getResources().getDimensionPixelOffset(2131100225);
            return;
        }
        this.ap = 0;
        this.aq = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, int i, int i2) {
        int i3;
        int i4 = i;
        int i5 = i2;
        while (true) {
            if (i4 >= str.length()) {
                i5 = i2;
                i3 = i;
                break;
            } else if (!Character.isLetterOrDigit(str.charAt(i4))) {
                i3 = i4;
                break;
            } else {
                i5--;
                i4++;
            }
        }
        int i6 = i5;
        int i7 = i;
        int i8 = i5;
        for (int i9 = i - 1; i9 >= 0 && i6 > 0; i9--) {
            if (!Character.isLetterOrDigit(str.charAt(i9))) {
                i8 = i6;
                i7 = i9;
            }
            i6--;
        }
        int i10 = i8;
        int i11 = i3;
        for (int i12 = i3; i12 < str.length() && i10 > 0; i12++) {
            if (!Character.isLetterOrDigit(str.charAt(i12))) {
                i11 = i12;
            }
            i10--;
        }
        StringBuilder sb = new StringBuilder();
        if (i7 > 0) {
            sb.append("...");
        }
        sb.append(str.substring(i7, i11));
        if (i11 < str.length()) {
            sb.append("...");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> a(String str) {
        Matcher matcher = bd.matcher(str);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(matcher.group());
        }
        return arrayList;
    }

    private void a(TextView textView, char[] cArr, int i) {
        if (TextUtils.TruncateAt.END == TextUtils.TruncateAt.MARQUEE) {
            setMarqueeText(textView, new String(cArr, 0, i));
        } else {
            textView.setText(cArr, 0, i);
        }
    }

    private void a(com.android.contacts.model.account.a aVar, ImageView imageView) {
        if (!PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
            if (b.a.f612b.equals(aVar.o().f2008a) || b.a.d.equals(aVar.o().f2008a) || "asus.local.simcard2".equals(aVar.o().f2008a)) {
                com.android.contacts.skin.a.a(imageView, com.android.contacts.skin.a.b() ? getContext().getResources().getColor(2131034153) : com.android.contacts.skin.a.c() ? com.android.contacts.skin.a.a(2) : getContext().getResources().getColor(2131034180));
            }
        }
    }

    private static boolean a(View view) {
        return view != null && view.getVisibility() == 0;
    }

    private void b(View view) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(16843534, typedValue, true);
        view.setBackgroundResource(typedValue.resourceId);
    }

    private ViewGroup.LayoutParams h() {
        ViewGroup.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.width = this.h;
        generateDefaultLayoutParams.height = generateDefaultLayoutParams.width;
        return generateDefaultLayoutParams;
    }

    public TextView a() {
        if (this.U == null) {
            this.U = new TextView(getContext());
            this.U.setSingleLine(true);
            this.U.setEllipsize(TextUtils.TruncateAt.END);
            this.U.setTextAppearance(getContext(), 16973894);
            if (!PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
                this.U.setTextSize(2, 15.0f);
            } else {
                this.U.setTextSize(2, 17.0f);
            }
            if (this.K != a.LEFT || a(this.ad)) {
                this.U.setTypeface(this.U.getTypeface(), 0);
            } else {
                this.U.setTextSize(0, this.x);
                this.U.setAllCaps(true);
                this.U.setGravity(5);
            }
            this.U.setActivated(isActivated());
            this.U.setTextColor(this.aw);
            this.U.setMaxWidth(getResources().getDimensionPixelSize(2131100153));
            addView(this.U);
        }
        return this.U;
    }

    public final void a(int i) {
        Drawable drawable = null;
        if (i == 0) {
            drawable = getContext().getResources().getDrawable(2131165304);
        }
        if (drawable != null) {
            int minimumHeight = drawable.getMinimumHeight();
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumHeight > 0) {
                this.n = this.h / 2;
            }
            if (minimumWidth > 0) {
                this.m = (int) ((this.n / getResources().getInteger(2131361809)) * getResources().getInteger(2131361810));
            }
        }
        setBirthdayIcon(drawable);
    }

    public final void a(Cursor cursor) {
        cursor.copyStringToBuffer(3, this.aS);
        setData(this.aS.data, this.aS.sizeCopied);
    }

    public final void a(Cursor cursor, int i) {
        String string = cursor.getString(i);
        setMarqueeText(d(), !TextUtils.isEmpty(string) ? this.j.a(string, this.g) : this.k);
        if (this.R != null) {
            this.R.setContentDescription(getContext().getString(2131755545, this.c.getText()));
        }
    }

    public final void a(boolean z, boolean z2) {
        this.aB = false;
        this.az = z;
        this.aA = z2;
        if (this.S != null) {
            removeView(this.S);
            this.S = null;
        }
        if (this.R != null) {
            removeView(this.R);
            this.R = null;
        }
        if (this.l != null) {
            removeView(this.l);
            this.l = null;
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        rect.top += this.aV.top;
        rect.bottom = rect.top + this.aV.height();
        rect.left += this.F;
        rect.right -= this.G;
    }

    public final AsusQuickContactBadge b() {
        if (!this.Q) {
            Log.w("ContactListItemView", "QuickContact is disabled for this view, what is step you do?");
        }
        if (this.R == null) {
            this.R = new AsusQuickContactBadge(getContext());
            this.R.setLayoutParams(h());
            if (this.c != null) {
                this.R.setContentDescription(getContext().getString(2131755545, this.c.getText()));
            }
            addView(this.R);
            this.aB = false;
        }
        return this.R;
    }

    public final void b(Cursor cursor, int i) {
        cursor.copyStringToBuffer(i, this.aT);
        int i2 = this.aT.sizeCopied;
        if (i2 != 0) {
            setPhoneticName(this.aT.data, i2);
        } else {
            setPhoneticName(null, 0);
        }
    }

    public final ImageView c() {
        if (this.S == null) {
            this.S = new ImageView(getContext());
            this.S.setLayoutParams(h());
            this.S.setBackground(null);
            addView(this.S);
            this.aB = false;
        }
        return this.S;
    }

    public final TextView d() {
        if (this.c == null) {
            this.c = new TextView(getContext());
            this.c.setSingleLine(true);
            this.c.setEllipsize(TextUtils.TruncateAt.END);
            this.c.setTextSize(0, this.i);
            this.c.setActivated(isActivated());
            this.c.setGravity(16);
            this.c.setDuplicateParentStateEnabled(true);
            this.c.setTextColor(this.ae);
            this.c.setTypeface(Typeface.create("sans-serif-medium", 0));
            addView(this.c);
        }
        return this.c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (getTag() != null) {
            if (((Integer) getTag()).intValue() == 0) {
                this.A.draw(canvas);
            } else {
                this.B.draw(canvas);
            }
        }
        if (this.H) {
            this.I.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.A != null) {
            this.A.setState(getDrawableState());
        }
        if (this.B != null) {
            this.B.setState(getDrawableState());
        }
    }

    public final TextView e() {
        if (this.V == null) {
            this.V = new TextView(getContext());
            this.V.setSingleLine(true);
            this.V.setEllipsize(TextUtils.TruncateAt.END);
            this.V.setTextSize(2, 15.0f);
            this.V.setTextColor(this.aw);
            this.V.setActivated(isActivated());
            addView(this.V);
        }
        return this.V;
    }

    public final CheckedTextView f() {
        this.K = a.LEFT;
        if (this.ad == null) {
            this.ad = new CheckedTextView(getContext());
            this.ad.setVisibility(0);
            this.ad.setActivated(isActivated());
            this.ad.setTextAppearance(getContext(), 16842816);
            this.ad.setGravity(16);
            TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(new int[]{16843290});
            this.ad.setCheckMarkDrawable(obtainStyledAttributes.getDrawable(0));
            addView(this.ad);
            obtainStyledAttributes.recycle();
        }
        return this.ad;
    }

    public final String g() {
        return this.P != null ? this.P.getText().toString() : null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.A != null) {
            this.A.jumpToCurrentState();
        }
        if (this.B != null) {
            this.B.jumpToCurrentState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x05ac, code lost:
        if (com.android.contacts.util.PhoneCapabilityTester.isUsingTwoPanes(getContext()) != false) goto L_0x05af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0426, code lost:
        if (a(r7.ac) != false) goto L_0x0429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x04f8, code lost:
        if (a(r7.V) != false) goto L_0x04fb;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x061d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x070b  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x050d  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ContactListItemView.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int resolveSize = resolveSize(0, i);
        int i5 = this.H ? this.f1715a + this.J : this.f1715a;
        this.aC = 0;
        this.aD = 0;
        this.aE = 0;
        this.aF = 0;
        this.aR = 0;
        this.aG = 0;
        this.aH = 0;
        if (!this.aB) {
            int i6 = this.h;
            this.ay = i6;
            this.ax = i6;
            if (!this.Q && this.S == null) {
                if (!this.az) {
                    this.ax = 0;
                }
                if (!this.aA) {
                    this.ay = 0;
                }
            }
            this.aB = true;
        }
        int i7 = a(this.ad) ? this.aJ + 0 : 0;
        int i8 = a(this.aZ) ? i7 + this.aK + this.o : a(this.ai) ? i7 + (this.aK * 4) + (this.aL * 3) + this.o : a(this.ah) ? i7 + (this.aK * 3) + (this.aL * 2) + this.o : a(this.ag) ? i7 + (this.aK * 2) + this.aL + this.o : a(this.af) ? i7 + this.aK + this.o : i7 + this.z;
        int paddingLeft = (this.ax > 0 || this.az) ? (((resolveSize - getPaddingLeft()) - getPaddingRight()) - (this.ax + (this.o * 2))) - i8 : (((resolveSize - getPaddingLeft()) - getPaddingRight()) - this.z) - i8;
        if (a(this.l)) {
            this.l.measure(0, 0);
        }
        if (a(this.aj)) {
            this.aj.measure(0, 0);
        }
        if (a(this.al)) {
            this.al.measure(0, 0);
        }
        if (a(this.ak)) {
            this.ak.measure(0, 0);
        }
        if (a(this.c)) {
            this.c.measure(View.MeasureSpec.makeMeasureSpec(this.K != a.LEFT ? paddingLeft - this.z : paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aC = this.c.getMeasuredHeight();
        }
        if (a(this.T)) {
            this.T.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aD = this.T.getMeasuredHeight();
        }
        if (a(this.V)) {
            if (a(this.U)) {
                int i9 = paddingLeft - this.p;
                i3 = (this.E * i9) / (this.E + this.D);
                i4 = (i9 * this.D) / (this.E + this.D);
            } else {
                i3 = paddingLeft;
                i4 = 0;
            }
        } else if (a(this.U)) {
            i4 = paddingLeft;
            i3 = 0;
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (a(this.V)) {
            this.V.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aF = this.V.getMeasuredHeight();
        }
        if (a(this.U)) {
            this.U.measure(View.MeasureSpec.makeMeasureSpec(i4, (this.K != a.LEFT || a(this.ad)) ? Integer.MIN_VALUE : 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aE = this.U.getMeasuredHeight();
        }
        this.aR = Math.max(this.aE, this.aF);
        if (a(this.W)) {
            this.W.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aG = this.W.getMeasuredHeight();
        }
        if (a(this.ac)) {
            this.ac.measure(View.MeasureSpec.makeMeasureSpec(this.r, 1073741824), View.MeasureSpec.makeMeasureSpec(this.r, 1073741824));
            this.aH = this.ac.getMeasuredHeight();
        }
        if (a(this.aa)) {
            int i10 = paddingLeft;
            if (a(this.ac)) {
                i10 = (paddingLeft - this.ac.getMeasuredWidth()) - this.q;
            }
            this.aa.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.aH = Math.max(this.aH, this.aa.getMeasuredHeight());
        }
        int max = Math.max(this.aC + this.aD + this.aR + this.aG + this.aH, this.ay + getPaddingBottom() + getPaddingTop());
        int i11 = max;
        if (this.H) {
            i11 = max + this.J;
        }
        int max2 = Math.max(i11, i5);
        int i12 = max2;
        if (this.L) {
            this.N.measure(View.MeasureSpec.makeMeasureSpec(resolveSize, 1073741824), View.MeasureSpec.makeMeasureSpec(this.O, 1073741824));
            if (this.ab != null) {
                this.ab.measure(View.MeasureSpec.makeMeasureSpec(resolveSize, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.O, 1073741824));
            }
            this.O = Math.max(this.O, this.N.getMeasuredHeight());
            i12 = max2 + this.O;
        }
        if (this.an && this.ao) {
            this.ar.measure(View.MeasureSpec.makeMeasureSpec((((resolveSize - this.ap) - this.aq) - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.at = this.ar.getMeasuredWidth();
            this.as = this.ar.getMeasuredHeight();
            this.e.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.au = this.e.getMeasuredWidth();
            this.av = this.e.getMeasuredHeight();
            this.f.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        setMeasuredDimension(resolveSize, i12);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        forceLayout();
    }

    public void setAccountList(com.android.contacts.model.account.a aVar, com.android.contacts.model.account.a aVar2, com.android.contacts.model.account.a aVar3, com.android.contacts.model.account.a aVar4) {
        if (this.af == null) {
            this.af = new ImageView(getContext());
            addView(this.af);
        }
        if (this.ag == null) {
            this.ag = new ImageView(getContext());
            addView(this.ag);
        }
        if (this.ah == null) {
            this.ah = new ImageView(getContext());
            addView(this.ah);
        }
        if (this.ai == null) {
            this.ai = new ImageView(getContext());
            addView(this.ai);
        }
        if (aVar != null) {
            this.af.setVisibility(0);
            this.af.setImageDrawable(aVar.d(getContext()));
            a(aVar, this.af);
        } else {
            this.af.setVisibility(8);
        }
        if (aVar2 != null) {
            this.ag.setVisibility(0);
            this.ag.setImageDrawable(aVar2.d(getContext()));
            a(aVar2, this.ag);
        } else {
            this.ag.setVisibility(8);
        }
        if (aVar3 != null) {
            this.ah.setVisibility(0);
            this.ah.setImageDrawable(aVar3.d(getContext()));
            a(aVar3, this.ah);
        } else {
            this.ah.setVisibility(8);
        }
        if (aVar4 != null) {
            this.ai.setVisibility(0);
            this.ai.setImageDrawable(aVar4.d(getContext()));
            a(aVar4, this.ai);
            return;
        }
        this.ai.setVisibility(8);
    }

    public void setAccountList(com.android.contacts.model.account.a aVar, com.android.contacts.model.account.a aVar2, com.android.contacts.model.account.a aVar3, com.android.contacts.model.account.a aVar4, String str, String str2, String str3, String str4) {
        if (this.af == null) {
            this.af = new ImageView(getContext());
            addView(this.af);
        }
        if (this.ag == null) {
            this.ag = new ImageView(getContext());
            addView(this.ag);
        }
        if (this.ah == null) {
            this.ah = new ImageView(getContext());
            addView(this.ah);
        }
        if (this.ai == null) {
            this.ai = new ImageView(getContext());
            addView(this.ai);
        }
        if (aVar != null) {
            this.af.setVisibility(0);
            this.af.setImageDrawable(aVar.a(getContext(), str));
            a(aVar, this.af);
        } else {
            this.af.setVisibility(8);
        }
        if (aVar2 != null) {
            this.ag.setVisibility(0);
            this.ag.setImageDrawable(aVar.a(getContext(), str2));
            a(aVar2, this.ag);
        } else {
            this.ag.setVisibility(8);
        }
        if (aVar3 != null) {
            this.ah.setVisibility(0);
            this.ah.setImageDrawable(aVar.a(getContext(), str3));
            a(aVar3, this.ah);
        } else {
            this.ah.setVisibility(8);
        }
        if (aVar4 != null) {
            this.ai.setVisibility(0);
            this.ai.setImageDrawable(aVar.a(getContext(), str4));
            a(aVar4, this.ai);
            return;
        }
        this.ai.setVisibility(8);
    }

    public void setActionIcon() {
        this.ao = true;
        if (this.ar == null) {
            this.ar = new RelativeLayout(getContext());
            addView(this.ar);
            if (this.e == null) {
                this.e = new ImageView(getContext());
                this.e.setImageDrawable(getContext().getResources().getDrawable(2131165518));
                this.ar.addView(this.e);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.e.getLayoutParams();
                layoutParams.addRule(9);
                this.e.setLayoutParams(layoutParams);
                this.e.setVisibility(4);
            }
            if (this.f == null) {
                this.f = new ImageView(getContext());
                this.f.setImageDrawable(getContext().getResources().getDrawable(2131165518));
                this.ar.addView(this.f);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f.getLayoutParams();
                layoutParams2.addRule(11);
                this.f.setLayoutParams(layoutParams2);
                this.f.setVisibility(4);
            }
        }
    }

    public void setActivatedStateSupported(boolean z) {
        this.aU = z;
    }

    public void setBirthdayIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.l == null) {
                this.l = new ImageView(getContext());
                addView(this.l);
            }
            this.l.setImageDrawable(drawable);
            this.l.setScaleType(ImageView.ScaleType.CENTER);
            this.l.setVisibility(0);
            this.l.setDuplicateParentStateEnabled(true);
        } else if (this.l != null) {
            this.l.setVisibility(8);
        }
    }

    public void setCheckBox(boolean z) {
        this.ad.setChecked(z);
    }

    public void setCountView(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.ab == null) {
                this.ab = new TextView(getContext());
                this.ab.setSingleLine(true);
                this.ab.setEllipsize(TextUtils.TruncateAt.END);
                this.ab.setTextAppearance(getContext(), 16973892);
                this.ab.setTextColor(this.y);
                addView(this.ab);
            }
            setMarqueeText(this.ab, charSequence);
            this.ab.setTextSize(0, this.x);
            this.ab.setGravity(16);
            this.ab.setTextColor(this.y);
            this.ab.setVisibility(0);
            this.ab.setPadding(0, 0, this.t, getResources().getDimensionPixelOffset(2131099763));
        } else if (this.ab != null) {
            this.ab.setVisibility(8);
        }
    }

    public void setData(char[] cArr, int i) {
        if (cArr != null && i != 0) {
            e();
            a(this.V, cArr, i);
            this.V.setVisibility(0);
        } else if (this.V != null) {
            this.V.setVisibility(8);
        }
    }

    public void setDividerVisible(boolean z) {
        this.H = z;
    }

    public void setHeaderBackgroundWithLine() {
    }

    public void setHighlightedPrefix(char[] cArr) {
        this.g = cArr;
    }

    public void setHorizontalDividerColor() {
        this.I = getContext().getResources().getDrawable(2131165443);
    }

    public void setIsLabelAccount(boolean z) {
        this.aW = z;
    }

    public void setLabel(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            a();
            if (!PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
                this.U.setTextSize(2, 15.0f);
            } else {
                this.U.setTextSize(2, 17.0f);
            }
            setMarqueeText(this.U, charSequence);
            this.U.setVisibility(0);
        } else if (this.U != null) {
            this.U.setVisibility(8);
        }
    }

    public void setMarqueeText(TextView textView, CharSequence charSequence) {
        if (TextUtils.TruncateAt.END == TextUtils.TruncateAt.MARQUEE) {
            SpannableString spannableString = new SpannableString(charSequence);
            spannableString.setSpan(TextUtils.TruncateAt.MARQUEE, 0, spannableString.length(), 33);
            textView.setText(spannableString);
            return;
        }
        textView.setText(charSequence);
    }

    public void setPhoneticName(char[] cArr, int i) {
        if (cArr != null && i != 0) {
            if (this.T == null) {
                this.T = new TextView(getContext());
                this.T.setSingleLine(true);
                this.T.setEllipsize(TextUtils.TruncateAt.END);
                this.T.setTextAppearance(getContext(), 16973894);
                this.T.setTypeface(this.T.getTypeface(), 1);
                this.T.setActivated(isActivated());
                addView(this.T);
            }
            a(this.T, cArr, i);
            this.T.setVisibility(0);
        } else if (this.T != null) {
            this.T.setVisibility(8);
        }
    }

    public void setPhotoPosition(a aVar) {
        this.K = aVar;
    }

    public void setPresence(Drawable drawable) {
        if (drawable != null) {
            if (this.ac == null) {
                this.ac = new ImageView(getContext());
                addView(this.ac);
            }
            this.ac.setImageDrawable(drawable);
            this.ac.setScaleType(ImageView.ScaleType.CENTER);
            this.ac.setVisibility(0);
        } else if (this.ac != null) {
            this.ac.setVisibility(8);
        }
    }

    public void setQuickContactEnabled(boolean z) {
        this.Q = z;
    }

    public void setSectionHeader(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (this.N == null) {
                this.N = new LinearLayout(getContext());
                this.N.setOrientation(0);
                addView(this.N);
            }
            if (this.P == null) {
                this.P = new TextView(getContext());
                this.P.setTextColor(this.s);
                this.P.setTextSize(0, this.u);
                this.P.setTypeface(this.P.getTypeface(), 1);
                this.P.setGravity(16);
                this.N.addView(this.P);
            }
            if (this.M == null) {
                this.M = new View(getContext());
                this.M.setBackgroundColor(this.w);
                this.N.addView(this.M);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelOffset(2131099765));
            layoutParams.gravity = 80;
            layoutParams.leftMargin = getResources().getDimensionPixelOffset(2131099767);
            layoutParams.bottomMargin = getResources().getDimensionPixelOffset(2131099766);
            this.M.setLayoutParams(layoutParams);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            this.P.setLayoutParams(layoutParams2);
            setMarqueeText(this.P, str);
            this.P.setVisibility(0);
            this.P.setAllCaps(true);
            this.L = true;
            if (!PhoneCapabilityTester.IsAsusDevice() && PhoneCapabilityTester.isUsingTwoPanes(getContext())) {
                this.P.setPadding(getResources().getDimensionPixelOffset(2131100245), 0, 0, 0);
            }
            this.N.setVisibility(0);
            return;
        }
        if (this.N != null) {
            this.N.setVisibility(8);
        }
        this.L = false;
    }

    public void setSelectionBoundsHorizontalMargin(int i, int i2) {
        this.F = i;
        this.G = i2;
    }

    public void setSnippet(String str) {
        if (!TextUtils.isEmpty(str)) {
            com.android.contacts.h.a aVar = this.j;
            if (this.W == null) {
                this.W = new TextView(getContext());
                this.W.setSingleLine(true);
                this.W.setEllipsize(TextUtils.TruncateAt.END);
                this.W.setTextAppearance(getContext(), 16973894);
                this.W.setTypeface(this.W.getTypeface(), 1);
                this.W.setActivated(isActivated());
                if (com.android.contacts.skin.a.c()) {
                    this.W.setTextColor(com.android.contacts.skin.a.a(2));
                }
                addView(this.W);
            }
            aVar.a(this.W, str, this.g);
            this.W.setVisibility(0);
        } else if (this.W != null) {
            this.W.setVisibility(8);
        }
    }

    public void setStatus(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.aa == null) {
                this.aa = new TextView(getContext());
                this.aa.setSingleLine(true);
                this.aa.setEllipsize(TextUtils.TruncateAt.END);
                this.aa.setTextAppearance(getContext(), 16973894);
                this.aa.setTextColor(this.aw);
                this.aa.setActivated(isActivated());
                this.aa.setTextSize(2, 15.0f);
                addView(this.aa);
            }
            setMarqueeText(this.aa, charSequence);
            this.aa.setVisibility(0);
        } else if (this.aa != null) {
            this.aa.setVisibility(8);
        }
    }

    public void setUnknownNameText(CharSequence charSequence) {
        this.k = charSequence;
    }

    public void setVVMIcon(String str) {
        if (str != null) {
            if (this.aj == null) {
                this.aj = new ImageView(getContext());
                addView(this.aj);
            }
            b(this.aj);
            this.aj.setVisibility(0);
            this.aj.setImageDrawable(getContext().getResources().getDrawable(2131165362));
            com.android.contacts.skin.a.a(this.aj, getResources().getColor(2131034180));
            this.aj.setTag(2131296575, str);
            this.aj.setOnClickListener(this.ba);
        } else if (this.aj != null) {
            this.aj.setVisibility(8);
            this.aj.setOnClickListener(null);
        }
    }

    public void setVideoIcon(String str, boolean z) {
        if (str != null) {
            if (this.al == null) {
                this.al = new ImageView(getContext());
                addView(this.al);
            }
            b(this.al);
            this.al.setVisibility(0);
            this.al.setImageDrawable(getContext().getResources().getDrawable(2131165512));
            if (z) {
                com.android.contacts.skin.a.a(this.al, getResources().getColor(2131034180));
            } else {
                com.android.contacts.skin.a.a(this.al, getResources().getColor(2131034376));
            }
            this.al.setTag(2131296579, str);
            this.al.setOnClickListener(this.bb);
        } else if (this.al != null) {
            this.al.setVisibility(8);
            this.al.setOnClickListener(null);
        }
    }

    public void setVoiceIcon(String str) {
        if (str != null) {
            if (this.ak == null) {
                this.ak = new ImageView(getContext());
                addView(this.ak);
            }
            b(this.ak);
            this.ak.setVisibility(0);
            this.ak.setImageDrawable(getContext().getResources().getDrawable(2131165326));
            com.android.contacts.skin.a.a(this.ak, getResources().getColor(2131034180));
            this.ak.setTag(2131296579, str);
            this.ak.setOnClickListener(this.bc);
        } else if (this.ak != null) {
            this.ak.setVisibility(8);
            this.ak.setOnClickListener(null);
        }
    }

    public void setWorkProfileIconEnabled(boolean z) {
        int i = 0;
        if (this.aZ != null) {
            ImageView imageView = this.aZ;
            if (!z) {
                i = 8;
            }
            imageView.setVisibility(i);
        } else if (z) {
            this.aZ = new ImageView(getContext());
            addView(this.aZ);
            Drawable drawable = getContext().getResources().getDrawable(2131165318);
            int color = com.android.contacts.skin.a.b() ? getContext().getResources().getColor(2131034153) : com.android.contacts.skin.a.c() ? com.android.contacts.skin.a.a(2) : getContext().getResources().getColor(2131034180);
            drawable.mutate();
            Drawable b2 = android.support.v4.a.a.a.b(drawable);
            android.support.v4.a.a.a.a(b2, color);
            this.aZ.setImageDrawable(b2);
            this.aZ.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.aZ.setVisibility(0);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == ((getTag() == null || ((Integer) getTag()).intValue() != 1) ? this.A : this.B) || super.verifyDrawable(drawable);
    }
}
