package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public final class AlertController {

    /* renamed from: A */
    private int f1019A;

    /* renamed from: C */
    private CharSequence f1021C;

    /* renamed from: D */
    private Drawable f1022D;

    /* renamed from: E */
    private CharSequence f1023E;

    /* renamed from: F */
    private Drawable f1024F;

    /* renamed from: G */
    private CharSequence f1025G;

    /* renamed from: H */
    private Drawable f1026H;

    /* renamed from: J */
    private Drawable f1028J;

    /* renamed from: K */
    private ImageView f1029K;

    /* renamed from: L */
    private TextView f1030L;

    /* renamed from: M */
    private TextView f1031M;

    /* renamed from: N */
    private View f1032N;

    /* renamed from: O */
    private int f1033O;

    /* renamed from: P */
    private int f1034P;

    /* renamed from: Q */
    private boolean f1035Q;

    /* renamed from: a */
    final DialogC0279aa f1038a;

    /* renamed from: b */
    ListView f1039b;

    /* renamed from: c */
    Button f1040c;

    /* renamed from: d */
    Message f1041d;

    /* renamed from: e */
    Button f1042e;

    /* renamed from: f */
    Message f1043f;

    /* renamed from: g */
    Button f1044g;

    /* renamed from: h */
    Message f1045h;

    /* renamed from: i */
    NestedScrollView f1046i;

    /* renamed from: j */
    ListAdapter f1047j;

    /* renamed from: l */
    int f1049l;

    /* renamed from: m */
    int f1050m;

    /* renamed from: n */
    int f1051n;

    /* renamed from: o */
    int f1052o;

    /* renamed from: p */
    Handler f1053p;

    /* renamed from: q */
    private final Context f1054q;

    /* renamed from: r */
    private final Window f1055r;

    /* renamed from: s */
    private final int f1056s;

    /* renamed from: t */
    private CharSequence f1057t;

    /* renamed from: u */
    private CharSequence f1058u;

    /* renamed from: v */
    private View f1059v;

    /* renamed from: w */
    private int f1060w;

    /* renamed from: x */
    private int f1061x;

    /* renamed from: y */
    private int f1062y;

    /* renamed from: z */
    private int f1063z;

    /* renamed from: B */
    private boolean f1020B = false;

    /* renamed from: I */
    private int f1027I = 0;

    /* renamed from: k */
    int f1048k = -1;

    /* renamed from: R */
    private int f1036R = 0;

    /* renamed from: S */
    private final View.OnClickListener f1037S = new View$OnClickListenerC0299d(this);

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        private final int f1064a;

        /* renamed from: b */
        private final int f1065b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0247a.C0257j.f914cp);
            this.f1065b = obtainStyledAttributes.getDimensionPixelOffset(C0247a.C0257j.f915cq, -1);
            this.f1064a = obtainStyledAttributes.getDimensionPixelOffset(C0247a.C0257j.f916cr, -1);
        }

        /* renamed from: a */
        public final void m9929a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f1064a, getPaddingRight(), z2 ? getPaddingBottom() : this.f1065b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public static final class C0261a {

        /* renamed from: A */
        public int f1066A;

        /* renamed from: B */
        public int f1067B;

        /* renamed from: C */
        public int f1068C;

        /* renamed from: D */
        public int f1069D;

        /* renamed from: F */
        public boolean[] f1071F;

        /* renamed from: G */
        public boolean f1072G;

        /* renamed from: H */
        public boolean f1073H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f1075J;

        /* renamed from: K */
        public Cursor f1076K;

        /* renamed from: L */
        public String f1077L;

        /* renamed from: M */
        public String f1078M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f1079N;

        /* renamed from: a */
        public final Context f1081a;

        /* renamed from: b */
        public final LayoutInflater f1082b;

        /* renamed from: d */
        public Drawable f1084d;

        /* renamed from: f */
        public CharSequence f1086f;

        /* renamed from: g */
        public View f1087g;

        /* renamed from: h */
        public CharSequence f1088h;

        /* renamed from: i */
        public CharSequence f1089i;

        /* renamed from: j */
        public Drawable f1090j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f1091k;

        /* renamed from: l */
        public CharSequence f1092l;

        /* renamed from: m */
        public Drawable f1093m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f1094n;

        /* renamed from: o */
        public CharSequence f1095o;

        /* renamed from: p */
        public Drawable f1096p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f1097q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f1099s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f1100t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f1101u;

        /* renamed from: v */
        public CharSequence[] f1102v;

        /* renamed from: w */
        public ListAdapter f1103w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f1104x;

        /* renamed from: y */
        public int f1105y;

        /* renamed from: z */
        public View f1106z;

        /* renamed from: c */
        public int f1083c = 0;

        /* renamed from: e */
        public int f1085e = 0;

        /* renamed from: E */
        public boolean f1070E = false;

        /* renamed from: I */
        public int f1074I = -1;

        /* renamed from: O */
        public boolean f1080O = true;

        /* renamed from: r */
        public boolean f1098r = true;

        public C0261a(Context context) {
            this.f1081a = context;
            this.f1082b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    private static final class HandlerC0262b extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f1107a;

        public HandlerC0262b(DialogInterface dialogInterface) {
            this.f1107a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f1107a.get(), message.what);
            } else if (i == 1) {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public static final class C0263c extends ArrayAdapter<CharSequence> {
        public C0263c(Context context, int i, CharSequence[] charSequenceArr) {
            super(context, i, 16908308, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, DialogC0279aa aaVar, Window window) {
        this.f1054q = context;
        this.f1038a = aaVar;
        this.f1055r = window;
        this.f1053p = new HandlerC0262b(aaVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0247a.C0257j.f747H, C0247a.C0248a.f573n, 0);
        this.f1033O = obtainStyledAttributes.getResourceId(C0247a.C0257j.f748I, 0);
        this.f1034P = obtainStyledAttributes.getResourceId(C0247a.C0257j.f750K, 0);
        this.f1049l = obtainStyledAttributes.getResourceId(C0247a.C0257j.f752M, 0);
        this.f1050m = obtainStyledAttributes.getResourceId(C0247a.C0257j.f753N, 0);
        this.f1051n = obtainStyledAttributes.getResourceId(C0247a.C0257j.f755P, 0);
        this.f1052o = obtainStyledAttributes.getResourceId(C0247a.C0257j.f751L, 0);
        this.f1035Q = obtainStyledAttributes.getBoolean(C0247a.C0257j.f754O, true);
        this.f1056s = obtainStyledAttributes.getDimensionPixelSize(C0247a.C0257j.f749J, 0);
        obtainStyledAttributes.recycle();
        aaVar.m9856b().mo9767d(1);
    }

    /* renamed from: a */
    private static ViewGroup m9938a(View view, View view2) {
        if (view == null) {
            View view3 = view2;
            if (view2 instanceof ViewStub) {
                view3 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view3;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        View view4 = view;
        if (view instanceof ViewStub) {
            view4 = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m9937a(View view, View view2, View view3) {
        int i = 0;
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!view.canScrollVertically(1)) {
                i = 4;
            }
            view3.setVisibility(i);
        }
    }

    /* renamed from: a */
    private static void m9936a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: c */
    private static boolean m9930c(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            int i = childCount - 1;
            childCount = i;
            if (m9930c(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x0510, code lost:
        if (r10 != null) goto L_0x0528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0525, code lost:
        if (r10 != null) goto L_0x0528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0528, code lost:
        r10.setVisibility(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0651, code lost:
        if (r10 != null) goto L_0x05a2;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9944a() {
        /*
            Method dump skipped, instructions count: 1672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.m9944a():void");
    }

    /* renamed from: a */
    public final void m9943a(int i) {
        this.f1059v = null;
        this.f1060w = i;
        this.f1020B = false;
    }

    /* renamed from: a */
    public final void m9942a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (onClickListener != null) {
            message = this.f1053p.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.f1025G = charSequence;
            this.f1045h = message;
            this.f1026H = drawable;
        } else if (i == -2) {
            this.f1023E = charSequence;
            this.f1043f = message;
            this.f1024F = drawable;
        } else if (i == -1) {
            this.f1021C = charSequence;
            this.f1041d = message;
            this.f1022D = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    /* renamed from: a */
    public final void m9941a(Drawable drawable) {
        this.f1028J = drawable;
        this.f1027I = 0;
        ImageView imageView = this.f1029K;
        if (imageView == null) {
            return;
        }
        if (drawable != null) {
            imageView.setVisibility(0);
            this.f1029K.setImageDrawable(drawable);
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: a */
    public final void m9940a(View view) {
        this.f1032N = view;
    }

    /* renamed from: a */
    public final void m9939a(View view, int i, int i2, int i3, int i4) {
        this.f1059v = view;
        this.f1060w = 0;
        this.f1020B = true;
        this.f1061x = i;
        this.f1062y = i2;
        this.f1063z = i3;
        this.f1019A = i4;
    }

    /* renamed from: a */
    public final void m9935a(CharSequence charSequence) {
        this.f1057t = charSequence;
        TextView textView = this.f1030L;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: b */
    public final void m9934b(int i) {
        this.f1028J = null;
        this.f1027I = i;
        ImageView imageView = this.f1029K;
        if (imageView == null) {
            return;
        }
        if (i != 0) {
            imageView.setVisibility(0);
            this.f1029K.setImageResource(this.f1027I);
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: b */
    public final void m9933b(View view) {
        this.f1059v = view;
        this.f1060w = 0;
        this.f1020B = false;
    }

    /* renamed from: b */
    public final void m9932b(CharSequence charSequence) {
        this.f1058u = charSequence;
        TextView textView = this.f1031M;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: c */
    public final int m9931c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f1054q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }
}
