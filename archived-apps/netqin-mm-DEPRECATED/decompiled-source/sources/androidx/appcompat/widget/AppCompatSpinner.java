package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import p012b.p016b.C0574a;
import p012b.p016b.p017k.DialogInterfaceC0584a;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p024p.p025j.AbstractC0667p;
import p012b.p016b.p026q.AbstractC0677b0;
import p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0708l0;
import p012b.p042i.p054p.AbstractC1001t;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements AbstractC1001t {

    /* renamed from: i */
    public static final int[] f566i = {16843505};

    /* renamed from: a */
    public final C0685d f567a;

    /* renamed from: b */
    public final Context f568b;

    /* renamed from: c */
    public AbstractView$OnTouchListenerC0722s f569c;

    /* renamed from: d */
    public SpinnerAdapter f570d;

    /* renamed from: e */
    public final boolean f571e;

    /* renamed from: f */
    public AbstractC0142f f572f;

    /* renamed from: g */
    public int f573g;

    /* renamed from: h */
    public final Rect f574h;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0133a();

        /* renamed from: a */
        public boolean f575a;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState$a.class */
        public class C0133a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f575a = parcel.readByte() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f575a ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    public class C0134a extends AbstractView$OnTouchListenerC0722s {

        /* renamed from: j */
        public final /* synthetic */ C0138e f576j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0134a(View view, C0138e eVar) {
            super(view);
            this.f576j = eVar;
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: b */
        public AbstractC0667p mo36228b() {
            return this.f576j;
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: c */
        public boolean mo36225c() {
            if (AppCompatSpinner.this.getInternalPopup().mo39003a()) {
                return true;
            }
            AppCompatSpinner.this.m39009a();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0135b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0135b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().mo39003a()) {
                AppCompatSpinner.this.m39009a();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    public class DialogInterface$OnClickListenerC0136c implements AbstractC0142f, DialogInterface.OnClickListener {

        /* renamed from: a */
        public DialogInterfaceC0584a f579a;

        /* renamed from: b */
        public ListAdapter f580b;

        /* renamed from: c */
        public CharSequence f581c;

        public DialogInterface$OnClickListenerC0136c() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo39002a(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo39001a(int i, int i2) {
            if (this.f580b != null) {
                DialogInterfaceC0584a.C0585a aVar = new DialogInterfaceC0584a.C0585a(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.f581c;
                if (charSequence != null) {
                    aVar.m36890a(charSequence);
                }
                aVar.m36892a(this.f580b, AppCompatSpinner.this.getSelectedItemPosition(), this);
                DialogInterfaceC0584a a = aVar.m36898a();
                this.f579a = a;
                ListView b = a.m36900b();
                if (Build.VERSION.SDK_INT >= 17) {
                    b.setTextDirection(i);
                    b.setTextAlignment(i2);
                }
                this.f579a.show();
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo39000a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo38962a(ListAdapter listAdapter) {
            this.f580b = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo38999a(CharSequence charSequence) {
            this.f581c = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public boolean mo39003a() {
            DialogInterfaceC0584a aVar = this.f579a;
            return aVar != null ? aVar.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: b */
        public int mo38998b() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: b */
        public void mo38997b(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: c */
        public CharSequence mo38996c() {
            return this.f581c;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: c */
        public void mo38995c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: d */
        public Drawable mo38994d() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        public void dismiss() {
            DialogInterfaceC0584a aVar = this.f579a;
            if (aVar != null) {
                aVar.dismiss();
                this.f579a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: f */
        public int mo38993f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f580b.getItemId(i));
            }
            dismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public static class C0137d implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        public SpinnerAdapter f583a;

        /* renamed from: b */
        public ListAdapter f584b;

        public C0137d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f583a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f584b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof AbstractC0677b0) {
                AbstractC0677b0 b0Var = (AbstractC0677b0) spinnerAdapter;
                if (b0Var.getDropDownViewTheme() == null) {
                    b0Var.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f584b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f583a;
            return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f583a;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f583a;
            return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f583a;
            return spinnerAdapter == null ? -1L : spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f583a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f584b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f583a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f583a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e.class */
    public class C0138e extends ListPopupWindow implements AbstractC0142f {

        /* renamed from: I */
        public CharSequence f585I;

        /* renamed from: J */
        public ListAdapter f586J;

        /* renamed from: K */
        public final Rect f587K = new Rect();

        /* renamed from: L */
        public int f588L;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$a.class */
        public class C0139a implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ AppCompatSpinner f590a;

            public C0139a(AppCompatSpinner appCompatSpinner) {
                this.f590a = appCompatSpinner;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    C0138e eVar = C0138e.this;
                    AppCompatSpinner.this.performItemClick(view, i, eVar.f586J.getItemId(i));
                }
                C0138e.this.dismiss();
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$b.class */
        public class ViewTreeObserver$OnGlobalLayoutListenerC0140b implements ViewTreeObserver.OnGlobalLayoutListener {
            public ViewTreeObserver$OnGlobalLayoutListenerC0140b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C0138e eVar = C0138e.this;
                if (!eVar.m39006b(AppCompatSpinner.this)) {
                    C0138e.this.dismiss();
                    return;
                }
                C0138e.this.m39005n();
                C0138e.super.show();
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$c.class */
        public class C0141c implements PopupWindow.OnDismissListener {

            /* renamed from: a */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f593a;

            public C0141c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f593a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f593a);
                }
            }
        }

        public C0138e(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            m38965a(AppCompatSpinner.this);
            m38960a(true);
            m38947h(0);
            m38963a(new C0139a(AppCompatSpinner.this));
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo39001a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean a = mo36517a();
            m39005n();
            m38949g(2);
            super.show();
            ListView e = mo36503e();
            e.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                e.setTextDirection(i);
                e.setTextAlignment(i2);
            }
            m38945i(AppCompatSpinner.this.getSelectedItemPosition());
            if (!a && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                ViewTreeObserver$OnGlobalLayoutListenerC0140b bVar = new ViewTreeObserver$OnGlobalLayoutListenerC0140b();
                viewTreeObserver.addOnGlobalLayoutListener(bVar);
                m38961a(new C0141c(bVar));
            }
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo38962a(ListAdapter listAdapter) {
            super.mo38962a(listAdapter);
            this.f586J = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: a */
        public void mo38999a(CharSequence charSequence) {
            this.f585I = charSequence;
        }

        /* renamed from: b */
        public boolean m39006b(View view) {
            return C1002u.m35197y(view) && view.getGlobalVisibleRect(this.f587K);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: c */
        public CharSequence mo38996c() {
            return this.f585I;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0142f
        /* renamed from: c */
        public void mo38995c(int i) {
            this.f588L = i;
        }

        /* renamed from: n */
        public void m39005n() {
            Drawable d = m38955d();
            int i = 0;
            if (d != null) {
                d.getPadding(AppCompatSpinner.this.f574h);
                i = C0708l0.m36319a(AppCompatSpinner.this) ? AppCompatSpinner.this.f574h.right : -AppCompatSpinner.this.f574h.left;
            } else {
                Rect rect = AppCompatSpinner.this.f574h;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i2 = appCompatSpinner.f573g;
            if (i2 == -2) {
                int a = appCompatSpinner.m39008a((SpinnerAdapter) this.f586J, m38955d());
                int i3 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f574h;
                int i4 = (i3 - rect2.left) - rect2.right;
                int i5 = a;
                if (a > i4) {
                    i5 = i4;
                }
                m38953e(Math.max(i5, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                m38953e((width - paddingLeft) - paddingRight);
            } else {
                m38953e(i2);
            }
            m38968a(C0708l0.m36319a(AppCompatSpinner.this) ? i + (((width - paddingRight) - m38944j()) - m39004o()) : i + paddingLeft + m39004o());
        }

        /* renamed from: o */
        public int m39004o() {
            return this.f588L;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$f.class */
    public interface AbstractC0142f {
        /* renamed from: a */
        void mo39002a(int i);

        /* renamed from: a */
        void mo39001a(int i, int i2);

        /* renamed from: a */
        void mo39000a(Drawable drawable);

        /* renamed from: a */
        void mo38962a(ListAdapter listAdapter);

        /* renamed from: a */
        void mo38999a(CharSequence charSequence);

        /* renamed from: a */
        boolean mo39003a();

        /* renamed from: b */
        int mo38998b();

        /* renamed from: b */
        void mo38997b(int i);

        /* renamed from: c */
        CharSequence mo38996c();

        /* renamed from: c */
        void mo38995c(int i);

        /* renamed from: d */
        Drawable mo38994d();

        void dismiss();

        /* renamed from: f */
        int mo38993f();
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e0, code lost:
        if (r12 == null) goto L_0x00f3;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    /* renamed from: a */
    public int m39008a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            i = i;
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        int i3 = i2;
        if (drawable != null) {
            drawable.getPadding(this.f574h);
            Rect rect = this.f574h;
            i3 = i2 + rect.left + rect.right;
        }
        return i3;
    }

    /* renamed from: a */
    public void m39009a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f572f.mo39001a(getTextDirection(), getTextAlignment());
        } else {
            this.f572f.mo39001a(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f567a;
        if (dVar != null) {
            dVar.m36458a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            return fVar.mo38998b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            return fVar.mo38993f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f572f != null) {
            return this.f573g;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    public final AbstractC0142f getInternalPopup() {
        return this.f572f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            return fVar.mo38994d();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f568b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0142f fVar = this.f572f;
        return fVar != null ? fVar.mo38996c() : super.getPrompt();
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f567a;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f567a;
        return dVar != null ? dVar.m36449c() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0142f fVar = this.f572f;
        if (fVar != null && fVar.mo39003a()) {
            this.f572f.dismiss();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f572f != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m39008a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f575a && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0135b());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        AbstractC0142f fVar = this.f572f;
        savedState.f575a = fVar != null && fVar.mo39003a();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC0722s sVar = this.f569c;
        if (sVar == null || !sVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0142f fVar = this.f572f;
        if (fVar == null) {
            return super.performClick();
        }
        if (fVar.mo39003a()) {
            return true;
        }
        m39009a();
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f571e) {
            this.f570d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f572f != null) {
            Context context = this.f568b;
            Context context2 = context;
            if (context == null) {
                context2 = getContext();
            }
            this.f572f.mo38962a(new C0137d(spinnerAdapter, context2.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0685d dVar = this.f567a;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f567a;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            fVar.mo38995c(i);
            this.f572f.mo39002a(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            fVar.mo38997b(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f572f != null) {
            this.f573g = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            fVar.mo39000a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0601a.m36777c(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0142f fVar = this.f572f;
        if (fVar != null) {
            fVar.mo38999a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f567a;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f567a;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }
}
