package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.AbstractC0345c;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import androidx.p027c.p028a.AbstractC0554a;
import com.google.android.gms.actions.SearchIntents;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC0345c {

    /* renamed from: i */
    static final C0419a f2007i = new C0419a();

    /* renamed from: A */
    private AbstractC0421c f2008A;

    /* renamed from: B */
    private AbstractC0420b f2009B;

    /* renamed from: C */
    private AbstractC0422d f2010C;

    /* renamed from: D */
    private View.OnClickListener f2011D;

    /* renamed from: E */
    private boolean f2012E;

    /* renamed from: F */
    private boolean f2013F;

    /* renamed from: G */
    private boolean f2014G;

    /* renamed from: H */
    private CharSequence f2015H;

    /* renamed from: I */
    private boolean f2016I;

    /* renamed from: J */
    private int f2017J;

    /* renamed from: K */
    private boolean f2018K;

    /* renamed from: L */
    private CharSequence f2019L;

    /* renamed from: M */
    private CharSequence f2020M;

    /* renamed from: N */
    private boolean f2021N;

    /* renamed from: O */
    private int f2022O;

    /* renamed from: P */
    private Bundle f2023P;

    /* renamed from: Q */
    private final Runnable f2024Q;

    /* renamed from: R */
    private Runnable f2025R;

    /* renamed from: S */
    private final WeakHashMap<String, Drawable.ConstantState> f2026S;

    /* renamed from: T */
    private final View.OnClickListener f2027T;

    /* renamed from: U */
    private final TextView.OnEditorActionListener f2028U;

    /* renamed from: V */
    private final AdapterView.OnItemClickListener f2029V;

    /* renamed from: W */
    private final AdapterView.OnItemSelectedListener f2030W;

    /* renamed from: a */
    final SearchAutoComplete f2031a;

    /* renamed from: aa */
    private TextWatcher f2032aa;

    /* renamed from: b */
    final ImageView f2033b;

    /* renamed from: c */
    final ImageView f2034c;

    /* renamed from: d */
    final ImageView f2035d;

    /* renamed from: e */
    final ImageView f2036e;

    /* renamed from: f */
    View.OnFocusChangeListener f2037f;

    /* renamed from: g */
    AbstractC0554a f2038g;

    /* renamed from: h */
    SearchableInfo f2039h;

    /* renamed from: j */
    View.OnKeyListener f2040j;

    /* renamed from: k */
    private final View f2041k;

    /* renamed from: l */
    private final View f2042l;

    /* renamed from: m */
    private final View f2043m;

    /* renamed from: n */
    private final View f2044n;

    /* renamed from: o */
    private C0423e f2045o;

    /* renamed from: p */
    private Rect f2046p;

    /* renamed from: q */
    private Rect f2047q;

    /* renamed from: r */
    private int[] f2048r;

    /* renamed from: s */
    private int[] f2049s;

    /* renamed from: t */
    private final ImageView f2050t;

    /* renamed from: u */
    private final Drawable f2051u;

    /* renamed from: v */
    private final int f2052v;

    /* renamed from: w */
    private final int f2053w;

    /* renamed from: x */
    private final Intent f2054x;

    /* renamed from: y */
    private final Intent f2055y;

    /* renamed from: z */
    private final CharSequence f2056z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0475be();

        /* renamed from: a */
        boolean f2057a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2057a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f2057a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f2057a));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: a */
        final Runnable f2058a;

        /* renamed from: b */
        private int f2059b;

        /* renamed from: c */
        private SearchView f2060c;

        /* renamed from: d */
        private boolean f2061d;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0247a.C0248a.f575p);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f2058a = new RunnableC0476bf(this);
            this.f2059b = getThreshold();
        }

        /* renamed from: a */
        final void m9326a(SearchView searchView) {
            this.f2060c = searchView;
        }

        /* renamed from: a */
        final void m9325a(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f2061d = false;
                removeCallbacks(this.f2058a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f2061d = false;
                removeCallbacks(this.f2058a);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f2061d = true;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public final void m9324c() {
            if (this.f2061d) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f2061d = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f2059b <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f2061d) {
                removeCallbacks(this.f2058a);
                post(this.f2058a);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            setMinWidth((int) TypedValue.applyDimension(1, (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : 256, displayMetrics));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f2060c.m9337h();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f2060c.clearFocus();
                        m9325a(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f2060c.hasFocus() && getVisibility() == 0) {
                this.f2061d = true;
                if (SearchView.m9357a(getContext())) {
                    SearchView.f2007i.m9321c(this);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f2059b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public static final class C0419a {

        /* renamed from: a */
        private Method f2062a;

        /* renamed from: b */
        private Method f2063b;

        /* renamed from: c */
        private Method f2064c;

        C0419a() {
            try {
                this.f2062a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f2062a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.f2063b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f2063b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.f2064c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f2064c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        final void m9323a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f2062a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        final void m9322b(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f2063b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: c */
        final void m9321c(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f2064c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public interface AbstractC0420b {
        /* renamed from: a */
        boolean m9320a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public interface AbstractC0421c {
        /* renamed from: a */
        boolean m9319a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public interface AbstractC0422d {
        /* renamed from: a */
        boolean m9318a();

        /* renamed from: b */
        boolean m9317b();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    private static final class C0423e extends TouchDelegate {

        /* renamed from: a */
        private final View f2065a;

        /* renamed from: e */
        private final int f2069e;

        /* renamed from: f */
        private boolean f2070f;

        /* renamed from: b */
        private final Rect f2066b = new Rect();

        /* renamed from: d */
        private final Rect f2068d = new Rect();

        /* renamed from: c */
        private final Rect f2067c = new Rect();

        public C0423e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f2069e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m9316a(rect, rect2);
            this.f2065a = view;
        }

        /* renamed from: a */
        public final void m9316a(Rect rect, Rect rect2) {
            this.f2066b.set(rect);
            this.f2068d.set(rect);
            Rect rect3 = this.f2068d;
            int i = this.f2069e;
            rect3.inset(-i, -i);
            this.f2067c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            float f;
            int i;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = false;
            if (action == 0) {
                if (this.f2066b.contains(x, y)) {
                    this.f2070f = true;
                    z = true;
                    z2 = true;
                }
                z = false;
                z2 = true;
            } else if (action == 1 || action == 2) {
                boolean z4 = this.f2070f;
                z = z4;
                z2 = true;
                if (z4) {
                    z = z4;
                    z2 = true;
                    if (!this.f2068d.contains(x, y)) {
                        z2 = false;
                        z = z4;
                    }
                }
            } else {
                if (action == 3) {
                    z = this.f2070f;
                    this.f2070f = false;
                    z2 = true;
                }
                z = false;
                z2 = true;
            }
            if (z) {
                if (!z2 || this.f2067c.contains(x, y)) {
                    f = x - this.f2067c.left;
                    i = y - this.f2067c.top;
                } else {
                    f = this.f2065a.getWidth() / 2;
                    i = this.f2065a.getHeight() / 2;
                }
                motionEvent.setLocation(f, i);
                z3 = this.f2065a.dispatchTouchEvent(motionEvent);
            }
            return z3;
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f553K);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2046p = new Rect();
        this.f2047q = new Rect();
        this.f2048r = new int[2];
        this.f2049s = new int[2];
        this.f2024Q = new RunnableC0464au(this);
        this.f2025R = new RunnableC0466aw(this);
        this.f2026S = new WeakHashMap<>();
        this.f2027T = new View$OnClickListenerC0469az(this);
        this.f2040j = new View$OnKeyListenerC0471ba(this);
        this.f2028U = new C0472bb(this);
        this.f2029V = new C0473bc(this);
        this.f2030W = new C0474bd(this);
        this.f2032aa = new C0465av(this);
        C0484bm a = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f917cs, i, 0);
        LayoutInflater.from(context).inflate(a.m9082f(C0247a.C0257j.f875cC, C0247a.C0254g.f718t), (ViewGroup) this, true);
        this.f2031a = (SearchAutoComplete) findViewById(C0247a.C0253f.f660J);
        this.f2031a.m9326a(this);
        this.f2041k = findViewById(C0247a.C0253f.f656F);
        this.f2042l = findViewById(C0247a.C0253f.f659I);
        this.f2043m = findViewById(C0247a.C0253f.f666P);
        this.f2033b = (ImageView) findViewById(C0247a.C0253f.f654D);
        this.f2034c = (ImageView) findViewById(C0247a.C0253f.f657G);
        this.f2035d = (ImageView) findViewById(C0247a.C0253f.f655E);
        this.f2036e = (ImageView) findViewById(C0247a.C0253f.f661K);
        this.f2050t = (ImageView) findViewById(C0247a.C0253f.f658H);
        C0741t.m8351a(this.f2042l, a.m9099a(C0247a.C0257j.f876cD));
        C0741t.m8351a(this.f2043m, a.m9099a(C0247a.C0257j.f880cH));
        this.f2033b.setImageDrawable(a.m9099a(C0247a.C0257j.f879cG));
        this.f2034c.setImageDrawable(a.m9099a(C0247a.C0257j.f873cA));
        this.f2035d.setImageDrawable(a.m9099a(C0247a.C0257j.f922cx));
        this.f2036e.setImageDrawable(a.m9099a(C0247a.C0257j.f882cJ));
        this.f2050t.setImageDrawable(a.m9099a(C0247a.C0257j.f879cG));
        this.f2051u = a.m9099a(C0247a.C0257j.f878cF);
        C0492bu.m9044a(this.f2033b, getResources().getString(C0247a.C0255h.f734n));
        this.f2052v = a.m9082f(C0247a.C0257j.f881cI, C0247a.C0254g.f717s);
        this.f2053w = a.m9082f(C0247a.C0257j.f923cy, 0);
        this.f2033b.setOnClickListener(this.f2027T);
        this.f2035d.setOnClickListener(this.f2027T);
        this.f2034c.setOnClickListener(this.f2027T);
        this.f2036e.setOnClickListener(this.f2027T);
        this.f2031a.setOnClickListener(this.f2027T);
        this.f2031a.addTextChangedListener(this.f2032aa);
        this.f2031a.setOnEditorActionListener(this.f2028U);
        this.f2031a.setOnItemClickListener(this.f2029V);
        this.f2031a.setOnItemSelectedListener(this.f2030W);
        this.f2031a.setOnKeyListener(this.f2040j);
        this.f2031a.setOnFocusChangeListener(new View$OnFocusChangeListenerC0467ax(this));
        boolean a2 = a.m9095a(C0247a.C0257j.f874cB, true);
        if (this.f2012E != a2) {
            this.f2012E = a2;
            m9351a(a2);
            m9327w();
        }
        int d = a.m9086d(C0247a.C0257j.f919cu, -1);
        if (d != -1) {
            this.f2017J = d;
            requestLayout();
        }
        this.f2056z = a.m9089c(C0247a.C0257j.f924cz);
        this.f2015H = a.m9089c(C0247a.C0257j.f877cE);
        int a3 = a.m9097a(C0247a.C0257j.f921cw, -1);
        if (a3 != -1) {
            this.f2031a.setImeOptions(a3);
        }
        int a4 = a.m9097a(C0247a.C0257j.f920cv, -1);
        if (a4 != -1) {
            this.f2031a.setInputType(a4);
        }
        setFocusable(a.m9095a(C0247a.C0257j.f918ct, true));
        a.m9100a();
        this.f2054x = new Intent("android.speech.action.WEB_SEARCH");
        this.f2054x.addFlags(268435456);
        this.f2054x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.f2055y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f2055y.addFlags(268435456);
        this.f2044n = findViewById(this.f2031a.getDropDownAnchor());
        View view = this.f2044n;
        if (view != null) {
            view.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0468ay(this));
        }
        m9351a(this.f2012E);
        m9327w();
    }

    /* renamed from: a */
    private Intent m9355a(Cursor cursor) {
        int i;
        String a;
        try {
            String a2 = View$OnClickListenerC0477bg.m9114a(cursor, "suggest_intent_action");
            String str = a2;
            if (a2 == null) {
                str = this.f2039h.getSuggestIntentAction();
            }
            String str2 = str;
            if (str == null) {
                str2 = "android.intent.action.SEARCH";
            }
            String a3 = View$OnClickListenerC0477bg.m9114a(cursor, "suggest_intent_data");
            String str3 = a3;
            if (a3 == null) {
                str3 = this.f2039h.getSuggestIntentData();
            }
            String str4 = str3;
            if (str3 != null) {
                str4 = str3;
                if (View$OnClickListenerC0477bg.m9114a(cursor, "suggest_intent_data_id") != null) {
                    str4 = str3 + "/" + Uri.encode(a);
                }
            }
            return m9352a(str2, str4 == null ? null : Uri.parse(str4), View$OnClickListenerC0477bg.m9114a(cursor, "suggest_intent_extra_data"), View$OnClickListenerC0477bg.m9114a(cursor, "suggest_intent_query"));
        } catch (RuntimeException e) {
            try {
                i = cursor.getPosition();
            } catch (RuntimeException e2) {
                i = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i + " returned exception.", e);
            return null;
        }
    }

    /* renamed from: a */
    private Intent m9352a(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f2020M);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f2023P;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f2039h.getSearchActivity());
        return intent;
    }

    /* renamed from: a */
    private void m9356a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e) {
                Log.e("SearchView", "Failed launch activity: ".concat(String.valueOf(intent)), e);
            }
        }
    }

    /* renamed from: a */
    private void m9351a(boolean z) {
        this.f2013F = z;
        int i = 0;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f2031a.getText());
        this.f2033b.setVisibility(i2);
        m9348b(z2);
        this.f2041k.setVisibility(z ? 8 : 0);
        if (this.f2050t.getDrawable() == null || this.f2012E) {
            i = 8;
        }
        this.f2050t.setVisibility(i);
        m9329u();
        m9345c(!z2);
        m9330t();
    }

    /* renamed from: a */
    static boolean m9357a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: b */
    private void m9348b(boolean z) {
        this.f2034c.setVisibility((!this.f2014G || !m9331s() || !hasFocus() || (!z && this.f2018K)) ? 8 : 0);
    }

    /* renamed from: c */
    private CharSequence m9346c(CharSequence charSequence) {
        if (!this.f2012E || this.f2051u == null) {
            return charSequence;
        }
        int textSize = (int) (this.f2031a.getTextSize() * 1.25d);
        this.f2051u.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f2051u), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    /* renamed from: c */
    private void m9345c(boolean z) {
        int i;
        if (!this.f2018K || this.f2013F || !z) {
            i = 8;
        } else {
            i = 0;
            this.f2034c.setVisibility(8);
        }
        this.f2036e.setVisibility(i);
    }

    /* renamed from: d */
    private void m9342d(CharSequence charSequence) {
        this.f2031a.setText(charSequence);
        this.f2031a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: e */
    private boolean m9340e(int i) {
        Cursor a = this.f2038g.mo8864a();
        if (a == null || !a.moveToPosition(i)) {
            return false;
        }
        m9356a(m9355a(a));
        return true;
    }

    /* renamed from: p */
    private CharSequence m9334p() {
        CharSequence charSequence = this.f2015H;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f2039h;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f2056z : getContext().getText(this.f2039h.getHintId());
        }
        return charSequence;
    }

    /* renamed from: q */
    private int m9333q() {
        return getContext().getResources().getDimensionPixelSize(C0247a.C0251d.f601h);
    }

    /* renamed from: r */
    private int m9332r() {
        return getContext().getResources().getDimensionPixelSize(C0247a.C0251d.f600g);
    }

    /* renamed from: s */
    private boolean m9331s() {
        return (this.f2014G || this.f2018K) && !this.f2013F;
    }

    /* renamed from: t */
    private void m9330t() {
        this.f2043m.setVisibility((!m9331s() || !(this.f2034c.getVisibility() == 0 || this.f2036e.getVisibility() == 0)) ? 8 : 0);
    }

    /* renamed from: u */
    private void m9329u() {
        boolean z = !TextUtils.isEmpty(this.f2031a.getText());
        int i = 0;
        boolean z2 = true;
        if (!z) {
            z2 = this.f2012E && !this.f2021N;
        }
        ImageView imageView = this.f2035d;
        if (!z2) {
            i = 8;
        }
        imageView.setVisibility(i);
        Drawable drawable = this.f2035d.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    /* renamed from: v */
    private void m9328v() {
        post(this.f2024Q);
    }

    /* renamed from: w */
    private void m9327w() {
        CharSequence p = m9334p();
        SearchAutoComplete searchAutoComplete = this.f2031a;
        CharSequence charSequence = p;
        if (p == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m9346c(charSequence));
    }

    @Override // androidx.appcompat.view.AbstractC0345c
    /* renamed from: a */
    public final void mo9360a() {
        if (!this.f2021N) {
            this.f2021N = true;
            this.f2022O = this.f2031a.getImeOptions();
            this.f2031a.setImeOptions(this.f2022O | 33554432);
            this.f2031a.setText("");
            m9339f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9354a(CharSequence charSequence) {
        m9342d(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9353a(String str) {
        getContext().startActivity(m9352a("android.intent.action.SEARCH", null, null, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m9359a(int i) {
        AbstractC0422d dVar = this.f2010C;
        if (dVar != null && dVar.m9317b()) {
            return false;
        }
        m9340e(i);
        this.f2031a.m9325a(false);
        this.f2031a.dismissDropDown();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m9358a(int i, KeyEvent keyEvent) {
        if (this.f2039h == null || this.f2038g == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
            return false;
        }
        if (i == 66 || i == 84 || i == 61) {
            return m9359a(this.f2031a.getListSelection());
        }
        if (i != 21 && i != 22) {
            return (i == 19 && this.f2031a.getListSelection() == 0) ? false : false;
        }
        this.f2031a.setSelection(i == 21 ? 0 : this.f2031a.length());
        this.f2031a.setListSelection(0);
        this.f2031a.clearListSelection();
        f2007i.m9321c(this.f2031a);
        return true;
    }

    @Override // androidx.appcompat.view.AbstractC0345c
    /* renamed from: b */
    public final void mo9350b() {
        this.f2031a.setText("");
        SearchAutoComplete searchAutoComplete = this.f2031a;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.f2020M = "";
        clearFocus();
        m9351a(true);
        this.f2031a.setImeOptions(this.f2022O);
        this.f2021N = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9349b(CharSequence charSequence) {
        Editable text = this.f2031a.getText();
        this.f2020M = text;
        boolean z = !TextUtils.isEmpty(text);
        m9348b(z);
        m9345c(!z);
        m9329u();
        m9330t();
        if (this.f2008A != null && !TextUtils.equals(charSequence, this.f2019L)) {
            charSequence.toString();
        }
        this.f2019L = charSequence.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m9347c() {
        int[] iArr = this.f2031a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f2042l.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f2043m.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f2016I = true;
        super.clearFocus();
        this.f2031a.clearFocus();
        this.f2031a.m9325a(false);
        this.f2016I = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m9344d() {
        Editable text = this.f2031a.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            AbstractC0421c cVar = this.f2008A;
            if (cVar != null) {
                text.toString();
                if (cVar.m9319a()) {
                    return;
                }
            }
            if (this.f2039h != null) {
                m9353a(text.toString());
            }
            this.f2031a.m9325a(false);
            this.f2031a.dismissDropDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m9343d(int i) {
        CharSequence b;
        AbstractC0422d dVar = this.f2010C;
        if (dVar != null && dVar.m9318a()) {
            return false;
        }
        Editable text = this.f2031a.getText();
        Cursor a = this.f2038g.mo8864a();
        if (a == null) {
            return true;
        }
        if (!a.moveToPosition(i) || (b = this.f2038g.mo8861b(a)) == null) {
            m9342d(text);
            return true;
        }
        m9342d(b);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m9341e() {
        if (!TextUtils.isEmpty(this.f2031a.getText())) {
            this.f2031a.setText("");
            this.f2031a.requestFocus();
            this.f2031a.m9325a(true);
        } else if (this.f2012E) {
            AbstractC0420b bVar = this.f2009B;
            if (bVar == null || !bVar.m9320a()) {
                clearFocus();
                m9351a(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m9339f() {
        m9351a(false);
        this.f2031a.requestFocus();
        this.f2031a.m9325a(true);
        View.OnClickListener onClickListener = this.f2011D;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m9338g() {
        SearchableInfo searchableInfo = this.f2039h;
        if (searchableInfo != null) {
            try {
                String str = null;
                String str2 = null;
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    Intent intent = new Intent(this.f2054x);
                    ComponentName searchActivity = searchableInfo.getSearchActivity();
                    if (searchActivity != null) {
                        str2 = searchActivity.flattenToShortString();
                    }
                    intent.putExtra("calling_package", str2);
                    getContext().startActivity(intent);
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    Intent intent2 = this.f2055y;
                    ComponentName searchActivity2 = searchableInfo.getSearchActivity();
                    Intent intent3 = new Intent("android.intent.action.SEARCH");
                    intent3.setComponent(searchActivity2);
                    PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent3, 1073741824);
                    Bundle bundle = new Bundle();
                    if (this.f2023P != null) {
                        bundle.putParcelable("app_data", this.f2023P);
                    }
                    Intent intent4 = new Intent(intent2);
                    String str3 = "free_form";
                    int i = 1;
                    Resources resources = getResources();
                    if (searchableInfo.getVoiceLanguageModeId() != 0) {
                        str3 = resources.getString(searchableInfo.getVoiceLanguageModeId());
                    }
                    String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
                    String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
                    if (searchableInfo.getVoiceMaxResults() != 0) {
                        i = searchableInfo.getVoiceMaxResults();
                    }
                    intent4.putExtra("android.speech.extra.LANGUAGE_MODEL", str3);
                    intent4.putExtra("android.speech.extra.PROMPT", string);
                    intent4.putExtra("android.speech.extra.LANGUAGE", string2);
                    intent4.putExtra("android.speech.extra.MAX_RESULTS", i);
                    if (searchActivity2 != null) {
                        str = searchActivity2.flattenToShortString();
                    }
                    intent4.putExtra("calling_package", str);
                    intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
                    intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
                    getContext().startActivity(intent4);
                }
            } catch (ActivityNotFoundException e) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    /* renamed from: h */
    final void m9337h() {
        m9351a(this.f2013F);
        m9328v();
        if (this.f2031a.hasFocus()) {
            m9335j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m9336i() {
        if (this.f2044n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f2042l.getPaddingLeft();
            Rect rect = new Rect();
            boolean a = C0499ca.m9031a(this);
            int dimensionPixelSize = this.f2012E ? resources.getDimensionPixelSize(C0247a.C0251d.f598e) + resources.getDimensionPixelSize(C0247a.C0251d.f599f) : 0;
            this.f2031a.getDropDownBackground().getPadding(rect);
            int i = rect.left;
            this.f2031a.setDropDownHorizontalOffset(a ? -i : paddingLeft - (i + dimensionPixelSize));
            this.f2031a.setDropDownWidth((((this.f2044n.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m9335j() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2031a.refreshAutoCompleteResults();
            return;
        }
        f2007i.m9323a(this.f2031a);
        f2007i.m9322b(this.f2031a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f2024Q);
        post(this.f2025R);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f2031a;
            Rect rect = this.f2046p;
            searchAutoComplete.getLocationInWindow(this.f2048r);
            getLocationInWindow(this.f2049s);
            int[] iArr = this.f2048r;
            int i5 = iArr[1];
            int[] iArr2 = this.f2049s;
            int i6 = i5 - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            rect.set(i7, i6, searchAutoComplete.getWidth() + i7, searchAutoComplete.getHeight() + i6);
            this.f2047q.set(this.f2046p.left, 0, this.f2046p.right, i4 - i2);
            C0423e eVar = this.f2045o;
            if (eVar == null) {
                this.f2045o = new C0423e(this.f2047q, this.f2046p, this.f2031a);
                setTouchDelegate(this.f2045o);
                return;
            }
            eVar.m9316a(this.f2047q, this.f2046p);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f2013F
            if (r0 == 0) goto L_0x000e
            r0 = r5
            r1 = r6
            r2 = r7
            super.onMeasure(r1, r2)
            return
        L_0x000e:
            r0 = r6
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r8 = r0
            r0 = r6
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r9 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0056
            r0 = r8
            if (r0 == 0) goto L_0x0042
            r0 = r8
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L_0x0031
            r0 = r9
            r6 = r0
            goto L_0x006e
        L_0x0031:
            r0 = r5
            int r0 = r0.f2017J
            r8 = r0
            r0 = r9
            r6 = r0
            r0 = r8
            if (r0 <= 0) goto L_0x006e
            r0 = r8
            r6 = r0
            goto L_0x005f
        L_0x0042:
            r0 = r5
            int r0 = r0.f2017J
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x004e
            goto L_0x006e
        L_0x004e:
            r0 = r5
            int r0 = r0.m9333q()
            r6 = r0
            goto L_0x006e
        L_0x0056:
            r0 = r5
            int r0 = r0.f2017J
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0062
        L_0x005f:
            goto L_0x0067
        L_0x0062:
            r0 = r5
            int r0 = r0.m9333q()
            r6 = r0
        L_0x0067:
            r0 = r6
            r1 = r9
            int r0 = java.lang.Math.min(r0, r1)
            r6 = r0
        L_0x006e:
            r0 = r7
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r9 = r0
            r0 = r7
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r7 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0091
            r0 = r9
            if (r0 == 0) goto L_0x0089
            goto L_0x009a
        L_0x0089:
            r0 = r5
            int r0 = r0.m9332r()
            r7 = r0
            goto L_0x009a
        L_0x0091:
            r0 = r5
            int r0 = r0.m9332r()
            r1 = r7
            int r0 = java.lang.Math.min(r0, r1)
            r7 = r0
        L_0x009a:
            r0 = r5
            r1 = r6
            r2 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r2)
            r2 = r7
            r3 = 1073741824(0x40000000, float:2.0)
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r3)
            super.onMeasure(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        m9351a(savedState.f2057a);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2057a = this.f2013F;
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m9328v();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f2016I || !isFocusable()) {
            return false;
        }
        if (this.f2013F) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f2031a.requestFocus(i, rect);
        if (requestFocus) {
            m9351a(false);
        }
        return requestFocus;
    }
}
