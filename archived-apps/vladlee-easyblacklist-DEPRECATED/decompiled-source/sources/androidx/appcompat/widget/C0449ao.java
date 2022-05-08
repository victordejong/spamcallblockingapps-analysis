package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0370j;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.ao */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ao.class */
public final class C0449ao extends ListPopupWindow implements AbstractC0448an {

    /* renamed from: a */
    private static Method f2243a;

    /* renamed from: b */
    private AbstractC0448an f2244b;

    /* renamed from: androidx.appcompat.widget.ao$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ao$a.class */
    public static final class C0450a extends C0438ai {

        /* renamed from: b */
        final int f2245b;

        /* renamed from: c */
        final int f2246c;

        /* renamed from: d */
        private AbstractC0448an f2247d;

        /* renamed from: e */
        private MenuItem f2248e;

        public C0450a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f2245b = 22;
                this.f2246c = 21;
                return;
            }
            this.f2245b = 21;
            this.f2246c = 22;
        }

        @Override // androidx.appcompat.widget.C0438ai
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ int mo9153a(int i, int i2, int i3, int i4, int i5) {
            return super.mo9153a(i, i2, i3, i4, i5);
        }

        /* renamed from: a */
        public final void m9151a(AbstractC0448an anVar) {
            this.f2247d = anVar;
        }

        @Override // androidx.appcompat.widget.C0438ai
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo9152a(MotionEvent motionEvent, int i) {
            return super.mo9152a(motionEvent, i);
        }

        @Override // androidx.appcompat.widget.C0438ai, android.view.ViewGroup, android.view.View
        public final /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.C0438ai, android.view.View
        public final /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.C0438ai, android.view.View
        public final /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.C0438ai, android.view.View
        public final /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.C0438ai, android.view.View
        public final boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            if (this.f2247d != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    adapter = headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                }
                C0370j jVar = (C0370j) adapter;
                C0375m mVar = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    mVar = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        mVar = null;
                        if (i2 >= 0) {
                            mVar = null;
                            if (i2 < jVar.getCount()) {
                                mVar = jVar.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f2248e;
                if (menuItem != mVar) {
                    C0371k a = jVar.m9629a();
                    if (menuItem != null) {
                        this.f2247d.mo9159a(a, menuItem);
                    }
                    this.f2248e = mVar;
                    if (mVar != null) {
                        this.f2247d.mo9157b(a, mVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public final boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView == null || i != this.f2245b) {
                if (listMenuItemView == null || i != this.f2246c) {
                    return super.onKeyDown(i, keyEvent);
                }
                setSelection(-1);
                ((C0370j) getAdapter()).m9629a().m9608a(false);
                return true;
            } else if (!listMenuItemView.isEnabled() || !listMenuItemView.mo1073a().hasSubMenu()) {
                return true;
            } else {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            }
        }

        @Override // androidx.appcompat.widget.C0438ai, android.widget.AbsListView, android.view.View
        public final /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        @Override // androidx.appcompat.widget.C0438ai, android.widget.AbsListView
        public final /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f2243a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0449ao(Context context, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    /* renamed from: a */
    final C0438ai mo9160a(Context context, boolean z) {
        C0450a aVar = new C0450a(context, z);
        aVar.m9151a(this);
        return aVar;
    }

    @Override // androidx.appcompat.widget.AbstractC0448an
    /* renamed from: a */
    public final void mo9159a(C0371k kVar, MenuItem menuItem) {
        AbstractC0448an anVar = this.f2244b;
        if (anVar != null) {
            anVar.mo9159a(kVar, menuItem);
        }
    }

    /* renamed from: a */
    public final void m9158a(AbstractC0448an anVar) {
        this.f2244b = anVar;
    }

    @Override // androidx.appcompat.widget.AbstractC0448an
    /* renamed from: b */
    public final void mo9157b(C0371k kVar, MenuItem menuItem) {
        AbstractC0448an anVar = this.f2244b;
        if (anVar != null) {
            anVar.mo9157b(kVar, menuItem);
        }
    }

    /* renamed from: h */
    public final void m9156h() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1983g.setEnterTransition(null);
        }
    }

    /* renamed from: s */
    public final void m9155s() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1983g.setExitTransition(null);
        }
    }

    /* renamed from: t */
    public final void m9154t() {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f2243a;
            if (method != null) {
                try {
                    method.invoke(this.f1983g, Boolean.FALSE);
                } catch (Exception e) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.f1983g.setTouchModal(false);
        }
    }
}
