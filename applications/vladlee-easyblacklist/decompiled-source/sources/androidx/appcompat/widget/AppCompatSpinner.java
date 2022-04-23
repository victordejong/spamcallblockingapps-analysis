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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.C0247a;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements AbstractC0740s {

    /* renamed from: c */
    private static final int[] f1910c = {16843505};

    /* renamed from: a */
    int f1911a;

    /* renamed from: b */
    final Rect f1912b;

    /* renamed from: d */
    private final C0517o f1913d;

    /* renamed from: e */
    private final Context f1914e;

    /* renamed from: f */
    private AbstractView$OnAttachStateChangeListenerC0443ak f1915f;

    /* renamed from: g */
    private SpinnerAdapter f1916g;

    /* renamed from: h */
    private final boolean f1917h;

    /* renamed from: i */
    private AbstractC0412d f1918i;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0429ab();

        /* renamed from: a */
        boolean f1919a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f1919a = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f1919a ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    final class DialogInterface$OnClickListenerC0409a implements DialogInterface.OnClickListener, AbstractC0412d {

        /* renamed from: a */
        DialogInterfaceC0308m f1920a;

        /* renamed from: c */
        private ListAdapter f1922c;

        /* renamed from: d */
        private CharSequence f1923d;

        DialogInterface$OnClickListenerC0409a() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final CharSequence mo9429a() {
            return this.f1923d;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9428a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9427a(int i, int i2) {
            if (this.f1922c != null) {
                DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.f1923d;
                if (charSequence != null) {
                    aVar.m9797a(charSequence);
                }
                this.f1920a = aVar.m9799a(this.f1922c, AppCompatSpinner.this.getSelectedItemPosition(), this).m9792b();
                ListView a = this.f1920a.m9807a();
                if (Build.VERSION.SDK_INT >= 17) {
                    a.setTextDirection(i);
                    a.setTextAlignment(i2);
                }
                this.f1920a.show();
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9426a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9383a(ListAdapter listAdapter) {
            this.f1922c = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9425a(CharSequence charSequence) {
            this.f1923d = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: b */
        public final Drawable mo9424b() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: b */
        public final void mo9423b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: c */
        public final int mo9422c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: c */
        public final void mo9421c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: d */
        public final void mo9420d() {
            DialogInterfaceC0308m mVar = this.f1920a;
            if (mVar != null) {
                mVar.dismiss();
                this.f1920a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: e */
        public final boolean mo9419e() {
            DialogInterfaceC0308m mVar = this.f1920a;
            if (mVar != null) {
                return mVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: f */
        public final int mo9418f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f1922c.getItemId(i));
            }
            mo9420d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public static final class C0410b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        private SpinnerAdapter f1924a;

        /* renamed from: b */
        private ListAdapter f1925b;

        public C0410b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1924a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1925b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1925b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public final boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1925b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1924a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    final class C0411c extends ListPopupWindow implements AbstractC0412d {

        /* renamed from: a */
        ListAdapter f1926a;

        /* renamed from: h */
        private CharSequence f1928h;

        /* renamed from: i */
        private final Rect f1929i = new Rect();

        /* renamed from: j */
        private int f1930j;

        public C0411c(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            m9379b(AppCompatSpinner.this);
            m9369j();
            m9370i();
            m9384a(new C0527y(this, AppCompatSpinner.this));
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final CharSequence mo9429a() {
            return this.f1928h;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9427a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean e = mo9375e();
            m9430h();
            m9364o();
            super.mo9372f_();
            C0438ai aiVar = this.f1979c;
            aiVar.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                aiVar.setTextDirection(i);
                aiVar.setTextAlignment(i2);
            }
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            C0438ai aiVar2 = this.f1979c;
            if (mo9375e() && aiVar2 != null) {
                aiVar2.m9167a(false);
                aiVar2.setSelection(selectedItemPosition);
                if (aiVar2.getChoiceMode() != 0) {
                    aiVar2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!e && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                ViewTreeObserver$OnGlobalLayoutListenerC0528z zVar = new ViewTreeObserver$OnGlobalLayoutListenerC0528z(this);
                viewTreeObserver.addOnGlobalLayoutListener(zVar);
                m9382a(new C0428aa(this, zVar));
            }
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9383a(ListAdapter listAdapter) {
            super.mo9383a(listAdapter);
            this.f1926a = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: a */
        public final void mo9425a(CharSequence charSequence) {
            this.f1928h = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final boolean m9432a(View view) {
            return C0741t.m8370E(view) && view.getGlobalVisibleRect(this.f1929i);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0412d
        /* renamed from: c */
        public final void mo9421c(int i) {
            this.f1930j = i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: h */
        public final void m9430h() {
            int i;
            Drawable background = this.f1983g.getBackground();
            int i2 = 0;
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.f1912b);
                i2 = C0499ca.m9031a(AppCompatSpinner.this) ? AppCompatSpinner.this.f1912b.right : -AppCompatSpinner.this.f1912b.left;
            } else {
                Rect rect = AppCompatSpinner.this.f1912b;
                AppCompatSpinner.this.f1912b.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.f1911a == -2) {
                int a = AppCompatSpinner.this.m9435a((SpinnerAdapter) this.f1926a, this.f1983g.getBackground());
                int i3 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.f1912b.left) - AppCompatSpinner.this.f1912b.right;
                int i4 = a;
                if (a > i3) {
                    i4 = i3;
                }
                i = Math.max(i4, (width - paddingLeft) - paddingRight);
            } else {
                i = AppCompatSpinner.this.f1911a == -1 ? (width - paddingLeft) - paddingRight : AppCompatSpinner.this.f1911a;
            }
            m9374e(i);
            m9380b(C0499ca.m9031a(AppCompatSpinner.this) ? i2 + (((width - paddingRight) - m9365n()) - this.f1930j) : i2 + paddingLeft + this.f1930j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public interface AbstractC0412d {
        /* renamed from: a */
        CharSequence mo9429a();

        /* renamed from: a */
        void mo9428a(int i);

        /* renamed from: a */
        void mo9427a(int i, int i2);

        /* renamed from: a */
        void mo9426a(Drawable drawable);

        /* renamed from: a */
        void mo9383a(ListAdapter listAdapter);

        /* renamed from: a */
        void mo9425a(CharSequence charSequence);

        /* renamed from: b */
        Drawable mo9424b();

        /* renamed from: b */
        void mo9423b(int i);

        /* renamed from: c */
        int mo9422c();

        /* renamed from: c */
        void mo9421c(int i);

        /* renamed from: d */
        void mo9420d();

        /* renamed from: e */
        boolean mo9419e();

        /* renamed from: f */
        int mo9418f();
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f555M);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private AppCompatSpinner(Context context, AttributeSet attributeSet, int i, byte b) {
        this(context, attributeSet, i, -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b8, code lost:
        if (r14 == null) goto L_0x00be;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: a */
    final int m9435a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int i2 = 0;
        View view = null;
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
            drawable.getPadding(this.f1912b);
            i3 = i2 + this.f1912b.left + this.f1912b.right;
        }
        return i3;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final AbstractC0412d m9434c() {
        return this.f1918i;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m9433d() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1918i.mo9427a(getTextDirection(), getTextAlignment());
        } else {
            this.f1918i.mo9427a(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            oVar.m9000d();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            return dVar.mo9418f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            return dVar.mo9422c();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1918i != null) {
            return this.f1911a;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            return dVar.mo9424b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1914e;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0412d dVar = this.f1918i;
        return dVar != null ? dVar.mo9429a() : super.getPrompt();
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null && dVar.mo9419e()) {
            this.f1918i.mo9420d();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1918i != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m9435a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f1919a && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0526x(this));
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        AbstractC0412d dVar = this.f1918i;
        savedState.f1919a = dVar != null && dVar.mo9419e();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnAttachStateChangeListenerC0443ak akVar = this.f1915f;
        if (akVar == null || !akVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0412d dVar = this.f1918i;
        if (dVar == null) {
            return super.performClick();
        }
        if (dVar.mo9419e()) {
            return true;
        }
        m9433d();
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1917h) {
            this.f1916g = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1918i != null) {
            Context context = this.f1914e;
            Context context2 = context;
            if (context == null) {
                context2 = getContext();
            }
            this.f1918i.mo9383a(new C0410b(spinnerAdapter, context2.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1913d;
        if (oVar != null) {
            oVar.m9008a(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            dVar.mo9421c(i);
            this.f1918i.mo9423b(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            dVar.mo9428a(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f1918i != null) {
            this.f1911a = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            dVar.mo9426a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0258a.m9951b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0412d dVar = this.f1918i;
        if (dVar != null) {
            dVar.mo9425a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }
}
