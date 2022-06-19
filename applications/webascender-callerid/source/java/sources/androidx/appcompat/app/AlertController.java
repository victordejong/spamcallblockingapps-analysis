package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.C0110h0;
import androidx.core.widget.NestedScrollView;
import f.a.a;
import f.a.f;
import f.a.j;
import f.h.l.t;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    NestedScrollView f98A;

    /* renamed from: C */
    private Drawable f100C;

    /* renamed from: D */
    private ImageView f101D;

    /* renamed from: E */
    private TextView f102E;

    /* renamed from: F */
    private TextView f103F;

    /* renamed from: G */
    private View f104G;

    /* renamed from: H */
    ListAdapter f105H;

    /* renamed from: J */
    private int f107J;

    /* renamed from: K */
    private int f108K;

    /* renamed from: L */
    int f109L;

    /* renamed from: M */
    int f110M;

    /* renamed from: N */
    int f111N;

    /* renamed from: O */
    int f112O;

    /* renamed from: P */
    private boolean f113P;

    /* renamed from: R */
    Handler f115R;

    /* renamed from: a */
    private final Context f117a;

    /* renamed from: b */
    final g f118b;

    /* renamed from: c */
    private final Window f119c;

    /* renamed from: d */
    private final int f120d;

    /* renamed from: e */
    private CharSequence f121e;

    /* renamed from: f */
    private CharSequence f122f;

    /* renamed from: g */
    ListView f123g;

    /* renamed from: h */
    private View f124h;

    /* renamed from: i */
    private int f125i;

    /* renamed from: j */
    private int f126j;

    /* renamed from: k */
    private int f127k;

    /* renamed from: l */
    private int f128l;

    /* renamed from: m */
    private int f129m;

    /* renamed from: o */
    Button f131o;

    /* renamed from: p */
    private CharSequence f132p;

    /* renamed from: q */
    Message f133q;

    /* renamed from: r */
    private Drawable f134r;

    /* renamed from: s */
    Button f135s;

    /* renamed from: t */
    private CharSequence f136t;

    /* renamed from: u */
    Message f137u;

    /* renamed from: v */
    private Drawable f138v;

    /* renamed from: w */
    Button f139w;

    /* renamed from: x */
    private CharSequence f140x;

    /* renamed from: y */
    Message f141y;

    /* renamed from: z */
    private Drawable f142z;

    /* renamed from: n */
    private boolean f130n = false;

    /* renamed from: B */
    private int f99B = 0;

    /* renamed from: I */
    int f106I = -1;

    /* renamed from: Q */
    private int f114Q = 0;

    /* renamed from: S */
    private final View.OnClickListener f116S = new View$OnClickListenerC0051a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: f */
        private final int f143f;

        /* renamed from: g */
        private final int f144g;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.T1);
            this.f144g = obtainStyledAttributes.getDimensionPixelOffset(j.U1, -1);
            this.f143f = obtainStyledAttributes.getDimensionPixelOffset(j.V1, -1);
        }

        /* renamed from: a */
        public void m6917a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f143f, getPaddingRight(), z2 ? getPaddingBottom() : this.f144g);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    class View$OnClickListenerC0051a implements View.OnClickListener {
        View$OnClickListenerC0051a() {
            AlertController.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message obtain = (view != alertController.f131o || (message3 = alertController.f133q) == null) ? (view != alertController.f135s || (message2 = alertController.f137u) == null) ? (view != alertController.f139w || (message = alertController.f141y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.f115R.obtainMessage(1, alertController2.f118b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public class RunnableC0052c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ View f146f;

        /* renamed from: g */
        final /* synthetic */ View f147g;

        RunnableC0052c(View view, View view2) {
            AlertController.this = r4;
            this.f146f = view;
            this.f147g = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m6937g(AlertController.this.f98A, this.f146f, this.f147g);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public class C0053d implements AbsListView.OnScrollListener {

        /* renamed from: a */
        final /* synthetic */ View f149a;

        /* renamed from: b */
        final /* synthetic */ View f150b;

        C0053d(AlertController alertController, View view, View view2) {
            this.f149a = view;
            this.f150b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m6937g(absListView, this.f149a, this.f150b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$e.class */
    public class RunnableC0054e implements Runnable {

        /* renamed from: f */
        final /* synthetic */ View f151f;

        /* renamed from: g */
        final /* synthetic */ View f152g;

        RunnableC0054e(View view, View view2) {
            AlertController.this = r4;
            this.f151f = view;
            this.f152g = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m6937g(AlertController.this.f123g, this.f151f, this.f152g);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f.class */
    public static class C0055f {

        /* renamed from: A */
        public int f154A;

        /* renamed from: B */
        public int f155B;

        /* renamed from: C */
        public int f156C;

        /* renamed from: D */
        public int f157D;

        /* renamed from: F */
        public boolean[] f159F;

        /* renamed from: G */
        public boolean f160G;

        /* renamed from: H */
        public boolean f161H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f163J;

        /* renamed from: K */
        public Cursor f164K;

        /* renamed from: L */
        public String f165L;

        /* renamed from: M */
        public String f166M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f167N;

        /* renamed from: O */
        public AbstractC0060e f168O;

        /* renamed from: a */
        public final Context f169a;

        /* renamed from: b */
        public final LayoutInflater f170b;

        /* renamed from: d */
        public Drawable f172d;

        /* renamed from: f */
        public CharSequence f174f;

        /* renamed from: g */
        public View f175g;

        /* renamed from: h */
        public CharSequence f176h;

        /* renamed from: i */
        public CharSequence f177i;

        /* renamed from: j */
        public Drawable f178j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f179k;

        /* renamed from: l */
        public CharSequence f180l;

        /* renamed from: m */
        public Drawable f181m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f182n;

        /* renamed from: o */
        public CharSequence f183o;

        /* renamed from: p */
        public Drawable f184p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f185q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f187s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f188t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f189u;

        /* renamed from: v */
        public CharSequence[] f190v;

        /* renamed from: w */
        public ListAdapter f191w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f192x;

        /* renamed from: y */
        public int f193y;

        /* renamed from: z */
        public View f194z;

        /* renamed from: c */
        public int f171c = 0;

        /* renamed from: e */
        public int f173e = 0;

        /* renamed from: E */
        public boolean f158E = false;

        /* renamed from: I */
        public int f162I = -1;

        /* renamed from: r */
        public boolean f186r = true;

        /* renamed from: androidx.appcompat.app.AlertController$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$a.class */
        public class C0056a extends ArrayAdapter<CharSequence> {

            /* renamed from: f */
            final /* synthetic */ RecycleListView f195f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0056a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                C0055f.this = r7;
                this.f195f = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0055f.this.f159F;
                if (zArr != null && zArr[i]) {
                    this.f195f.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$b.class */
        public class C0057b extends CursorAdapter {

            /* renamed from: f */
            private final int f197f;

            /* renamed from: g */
            private final int f198g;

            /* renamed from: h */
            final /* synthetic */ RecycleListView f199h;

            /* renamed from: i */
            final /* synthetic */ AlertController f200i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0057b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                C0055f.this = r6;
                this.f199h = recycleListView;
                this.f200i = alertController;
                Cursor cursor2 = getCursor();
                this.f197f = cursor2.getColumnIndexOrThrow(r6.f165L);
                this.f198g = cursor2.getColumnIndexOrThrow(r6.f166M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f197f));
                RecycleListView recycleListView = this.f199h;
                int position = cursor.getPosition();
                boolean z = true;
                if (cursor.getInt(this.f198g) != 1) {
                    z = false;
                }
                recycleListView.setItemChecked(position, z);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0055f.this.f170b.inflate(this.f200i.f110M, viewGroup, false);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$c.class */
        public class C0058c implements AdapterView.OnItemClickListener {

            /* renamed from: f */
            final /* synthetic */ AlertController f202f;

            C0058c(AlertController alertController) {
                C0055f.this = r4;
                this.f202f = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0055f.this.f192x.onClick(this.f202f.f118b, i);
                if (!C0055f.this.f161H) {
                    this.f202f.f118b.dismiss();
                }
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$d */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$d.class */
        public class C0059d implements AdapterView.OnItemClickListener {

            /* renamed from: f */
            final /* synthetic */ RecycleListView f204f;

            /* renamed from: g */
            final /* synthetic */ AlertController f205g;

            C0059d(RecycleListView recycleListView, AlertController alertController) {
                C0055f.this = r4;
                this.f204f = recycleListView;
                this.f205g = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0055f.this.f159F;
                if (zArr != null) {
                    zArr[i] = this.f204f.isItemChecked(i);
                }
                C0055f.this.f163J.onClick(this.f205g.f118b, i, this.f204f.isItemChecked(i));
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$e */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$e.class */
        public interface AbstractC0060e {
            /* renamed from: a */
            void m6914a(ListView listView);
        }

        public C0055f(Context context) {
            this.f169a = context;
            this.f170b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: b */
        private void m6915b(AlertController alertController) {
            C0056a c0056a;
            RecycleListView recycleListView = (RecycleListView) this.f170b.inflate(alertController.f109L, (ViewGroup) null);
            if (this.f160G) {
                c0056a = this.f164K == null ? new C0056a(this.f169a, alertController.f110M, 16908308, this.f190v, recycleListView) : new C0057b(this.f169a, this.f164K, false, recycleListView, alertController);
            } else {
                int i = this.f161H ? alertController.f111N : alertController.f112O;
                if (this.f164K != null) {
                    c0056a = new SimpleCursorAdapter(this.f169a, i, this.f164K, new String[]{this.f165L}, new int[]{16908308});
                } else {
                    c0056a = this.f191w;
                    if (c0056a == null) {
                        c0056a = new C0062h(this.f169a, i, 16908308, this.f190v);
                    }
                }
            }
            AbstractC0060e abstractC0060e = this.f168O;
            if (abstractC0060e != null) {
                abstractC0060e.m6914a(recycleListView);
            }
            alertController.f105H = c0056a;
            alertController.f106I = this.f162I;
            if (this.f192x != null) {
                recycleListView.setOnItemClickListener(new C0058c(alertController));
            } else if (this.f163J != null) {
                recycleListView.setOnItemClickListener(new C0059d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f167N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f161H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f160G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f123g = recycleListView;
        }

        /* renamed from: a */
        public void m6916a(AlertController alertController) {
            View view = this.f175g;
            if (view != null) {
                alertController.m6931m(view);
            } else {
                CharSequence charSequence = this.f174f;
                if (charSequence != null) {
                    alertController.m6926r(charSequence);
                }
                Drawable drawable = this.f172d;
                if (drawable != null) {
                    alertController.m6929o(drawable);
                }
                int i = this.f171c;
                if (i != 0) {
                    alertController.m6930n(i);
                }
                int i2 = this.f173e;
                if (i2 != 0) {
                    alertController.m6930n(alertController.m6940d(i2));
                }
            }
            CharSequence charSequence2 = this.f176h;
            if (charSequence2 != null) {
                alertController.m6928p(charSequence2);
            }
            CharSequence charSequence3 = this.f177i;
            if (charSequence3 != null || this.f178j != null) {
                alertController.m6932l(-1, charSequence3, this.f179k, null, this.f178j);
            }
            CharSequence charSequence4 = this.f180l;
            if (charSequence4 != null || this.f181m != null) {
                alertController.m6932l(-2, charSequence4, this.f182n, null, this.f181m);
            }
            CharSequence charSequence5 = this.f183o;
            if (charSequence5 != null || this.f184p != null) {
                alertController.m6932l(-3, charSequence5, this.f185q, null, this.f184p);
            }
            if (this.f190v != null || this.f164K != null || this.f191w != null) {
                m6915b(alertController);
            }
            View view2 = this.f194z;
            if (view2 != null) {
                if (this.f158E) {
                    alertController.m6923u(view2, this.f154A, this.f155B, this.f156C, this.f157D);
                    return;
                } else {
                    alertController.m6924t(view2);
                    return;
                }
            }
            int i3 = this.f193y;
            if (i3 == 0) {
                return;
            }
            alertController.m6925s(i3);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$g.class */
    private static final class HandlerC0061g extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f207a;

        public HandlerC0061g(DialogInterface dialogInterface) {
            this.f207a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f207a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$h.class */
    public static class C0062h extends ArrayAdapter<CharSequence> {
        public C0062h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, g gVar, Window window) {
        this.f117a = context;
        this.f118b = gVar;
        this.f119c = window;
        this.f115R = new HandlerC0061g(gVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, j.D, a.n, 0);
        this.f107J = obtainStyledAttributes.getResourceId(j.E, 0);
        this.f108K = obtainStyledAttributes.getResourceId(j.G, 0);
        this.f109L = obtainStyledAttributes.getResourceId(j.I, 0);
        this.f110M = obtainStyledAttributes.getResourceId(j.J, 0);
        this.f111N = obtainStyledAttributes.getResourceId(j.L, 0);
        this.f112O = obtainStyledAttributes.getResourceId(j.H, 0);
        this.f113P = obtainStyledAttributes.getBoolean(j.K, true);
        this.f120d = obtainStyledAttributes.getDimensionPixelSize(j.F, 0);
        obtainStyledAttributes.recycle();
        gVar.supportRequestWindowFeature(1);
    }

    /* renamed from: A */
    private static boolean m6944A(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(a.m, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    static boolean m6943a(View view) {
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
            if (m6943a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m6942b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: g */
    static void m6937g(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: j */
    private ViewGroup m6934j(View view, View view2) {
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

    /* renamed from: k */
    private int m6933k() {
        int i = this.f108K;
        if (i != 0 && this.f114Q == 1) {
            return i;
        }
        return this.f107J;
    }

    /* renamed from: q */
    private void m6927q(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f119c.findViewById(f.v);
        View findViewById2 = this.f119c.findViewById(f.u);
        if (Build.VERSION.SDK_INT >= 23) {
            t.z0(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 == null) {
                return;
            }
            viewGroup.removeView(findViewById2);
            return;
        }
        View view2 = findViewById;
        if (findViewById != null) {
            view2 = findViewById;
            if ((i & 1) == 0) {
                viewGroup.removeView(findViewById);
                view2 = null;
            }
        }
        View view3 = findViewById2;
        if (findViewById2 != null) {
            view3 = findViewById2;
            if ((i & 2) == 0) {
                viewGroup.removeView(findViewById2);
                view3 = null;
            }
        }
        if (view2 == null && view3 == null) {
            return;
        }
        if (this.f122f != null) {
            this.f98A.setOnScrollChangeListener(new b(this, view2, view3));
            this.f98A.post(new RunnableC0052c(view2, view3));
            return;
        }
        ListView listView = this.f123g;
        if (listView != null) {
            listView.setOnScrollListener(new C0053d(this, view2, view3));
            this.f123g.post(new RunnableC0054e(view2, view3));
            return;
        }
        if (view2 != null) {
            viewGroup.removeView(view2);
        }
        if (view3 == null) {
            return;
        }
        viewGroup.removeView(view3);
    }

    /* renamed from: v */
    private void m6922v(ViewGroup viewGroup) {
        boolean z;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f131o = button;
        button.setOnClickListener(this.f116S);
        if (!TextUtils.isEmpty(this.f132p) || this.f134r != null) {
            this.f131o.setText(this.f132p);
            Drawable drawable = this.f134r;
            if (drawable != null) {
                int i = this.f120d;
                drawable.setBounds(0, 0, i, i);
                this.f131o.setCompoundDrawables(this.f134r, null, null, null);
            }
            this.f131o.setVisibility(0);
            z = true;
        } else {
            this.f131o.setVisibility(8);
            z = false;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f135s = button2;
        button2.setOnClickListener(this.f116S);
        if (!TextUtils.isEmpty(this.f136t) || this.f138v != null) {
            this.f135s.setText(this.f136t);
            Drawable drawable2 = this.f138v;
            if (drawable2 != null) {
                int i2 = this.f120d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f135s.setCompoundDrawables(this.f138v, null, null, null);
            }
            this.f135s.setVisibility(0);
            z |= true;
        } else {
            this.f135s.setVisibility(8);
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f139w = button3;
        button3.setOnClickListener(this.f116S);
        if (!TextUtils.isEmpty(this.f140x) || this.f142z != null) {
            this.f139w.setText(this.f140x);
            Drawable drawable3 = this.f142z;
            if (drawable3 != null) {
                int i3 = this.f120d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f139w.setCompoundDrawables(this.f142z, null, null, null);
            }
            this.f139w.setVisibility(0);
            z |= true;
        } else {
            this.f139w.setVisibility(8);
        }
        if (m6944A(this.f117a)) {
            if (z) {
                m6942b(this.f131o);
            } else if (z) {
                m6942b(this.f135s);
            } else if (z) {
                m6942b(this.f139w);
            }
        }
        if (!(z)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: w */
    private void m6921w(ViewGroup viewGroup) {
        NestedScrollView findViewById = this.f119c.findViewById(f.w);
        this.f98A = findViewById;
        findViewById.setFocusable(false);
        this.f98A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f103F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f122f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f98A.removeView(this.f103F);
        if (this.f123g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f98A.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f98A);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f123g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: x */
    private void m6920x(ViewGroup viewGroup) {
        View view = this.f124h;
        boolean z = false;
        if (view == null) {
            view = this.f125i != 0 ? LayoutInflater.from(this.f117a).inflate(this.f125i, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m6943a(view)) {
            this.f119c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f119c.findViewById(f.n);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        if (this.f130n) {
            frameLayout.setPadding(this.f126j, this.f127k, this.f128l, this.f129m);
        }
        if (this.f123g == null) {
            return;
        }
        ((C0110h0.C0111a) viewGroup.getLayoutParams()).f504a = 0.0f;
    }

    /* renamed from: y */
    private void m6919y(ViewGroup viewGroup) {
        if (this.f104G != null) {
            viewGroup.addView(this.f104G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f119c.findViewById(f.O).setVisibility(8);
            return;
        }
        this.f101D = (ImageView) this.f119c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f121e)) || !this.f113P) {
            this.f119c.findViewById(f.O).setVisibility(8);
            this.f101D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f119c.findViewById(f.j);
        this.f102E = textView;
        textView.setText(this.f121e);
        int i = this.f99B;
        if (i != 0) {
            this.f101D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f100C;
        if (drawable != null) {
            this.f101D.setImageDrawable(drawable);
            return;
        }
        this.f102E.setPadding(this.f101D.getPaddingLeft(), this.f101D.getPaddingTop(), this.f101D.getPaddingRight(), this.f101D.getPaddingBottom());
        this.f101D.setVisibility(8);
    }

    /* renamed from: z */
    private void m6918z() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f119c.findViewById(f.t);
        int i = f.P;
        View findViewById4 = findViewById3.findViewById(i);
        int i2 = f.m;
        View findViewById5 = findViewById3.findViewById(i2);
        int i3 = f.k;
        View findViewById6 = findViewById3.findViewById(i3);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(f.o);
        m6920x(viewGroup);
        View findViewById7 = viewGroup.findViewById(i);
        View findViewById8 = viewGroup.findViewById(i2);
        View findViewById9 = viewGroup.findViewById(i3);
        ViewGroup m6934j = m6934j(findViewById7, findViewById4);
        ViewGroup m6934j2 = m6934j(findViewById8, findViewById5);
        ViewGroup m6934j3 = m6934j(findViewById9, findViewById6);
        m6921w(m6934j2);
        m6922v(m6934j3);
        m6919y(m6934j);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (m6934j == null || m6934j.getVisibility() == 8) ? false : true;
        boolean z3 = (m6934j3 == null || m6934j3.getVisibility() == 8) ? false : true;
        if (!z3 && m6934j2 != null && (findViewById2 = m6934j2.findViewById(f.K)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f98A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f122f != null || this.f123g != null) {
                view = m6934j.findViewById(f.N);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m6934j2 != null && (findViewById = m6934j2.findViewById(f.L)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f123g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).m6917a(z2, z3);
        }
        if (!z) {
            ListView listView2 = this.f123g;
            if (listView2 == null) {
                listView2 = this.f98A;
            }
            if (listView2 != null) {
                int i4 = 0;
                if (z3) {
                    i4 = 2;
                }
                m6927q(m6934j2, listView2, z2 | i4, 3);
            }
        }
        ListView listView3 = this.f123g;
        if (listView3 == null || (listAdapter = this.f105H) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i5 = this.f106I;
        if (i5 <= -1) {
            return;
        }
        listView3.setItemChecked(i5, true);
        listView3.setSelection(i5);
    }

    /* renamed from: c */
    public Button m6941c(int i) {
        if (i != -3) {
            if (i == -2) {
                return this.f135s;
            }
            if (i == -1) {
                return this.f131o;
            }
            return null;
        }
        return this.f139w;
    }

    /* renamed from: d */
    public int m6940d(int i) {
        TypedValue typedValue = new TypedValue();
        this.f117a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: e */
    public ListView m6939e() {
        return this.f123g;
    }

    /* renamed from: f */
    public void m6938f() {
        this.f118b.setContentView(m6933k());
        m6918z();
    }

    /* renamed from: h */
    public boolean m6936h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f98A;
        return nestedScrollView != null && nestedScrollView.q(keyEvent);
    }

    /* renamed from: i */
    public boolean m6935i(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f98A;
        return nestedScrollView != null && nestedScrollView.q(keyEvent);
    }

    /* renamed from: l */
    public void m6932l(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f115R.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f140x = charSequence;
            this.f141y = message2;
            this.f142z = drawable;
        } else if (i == -2) {
            this.f136t = charSequence;
            this.f137u = message2;
            this.f138v = drawable;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f132p = charSequence;
            this.f133q = message2;
            this.f134r = drawable;
        }
    }

    /* renamed from: m */
    public void m6931m(View view) {
        this.f104G = view;
    }

    /* renamed from: n */
    public void m6930n(int i) {
        this.f100C = null;
        this.f99B = i;
        ImageView imageView = this.f101D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f101D.setImageResource(this.f99B);
        }
    }

    /* renamed from: o */
    public void m6929o(Drawable drawable) {
        this.f100C = drawable;
        this.f99B = 0;
        ImageView imageView = this.f101D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f101D.setImageDrawable(drawable);
        }
    }

    /* renamed from: p */
    public void m6928p(CharSequence charSequence) {
        this.f122f = charSequence;
        TextView textView = this.f103F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: r */
    public void m6926r(CharSequence charSequence) {
        this.f121e = charSequence;
        TextView textView = this.f102E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: s */
    public void m6925s(int i) {
        this.f124h = null;
        this.f125i = i;
        this.f130n = false;
    }

    /* renamed from: t */
    public void m6924t(View view) {
        this.f124h = view;
        this.f125i = 0;
        this.f130n = false;
    }

    /* renamed from: u */
    public void m6923u(View view, int i, int i2, int i3, int i4) {
        this.f124h = view;
        this.f125i = 0;
        this.f130n = true;
        this.f126j = i;
        this.f127k = i2;
        this.f128l = i3;
        this.f129m = i4;
    }
}
