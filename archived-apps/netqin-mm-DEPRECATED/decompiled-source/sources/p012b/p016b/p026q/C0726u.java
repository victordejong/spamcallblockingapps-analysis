package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.widget.ListPopupWindow;
import java.lang.reflect.Method;
import p012b.p016b.p024p.p025j.C0646f;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p024p.p025j.C0651i;
/* renamed from: b.b.q.u */
/* loaded from: classes-dex2jar.jar:b/b/q/u.class */
public class C0726u extends ListPopupWindow implements AbstractC0725t {

    /* renamed from: J */
    public static Method f3536J;

    /* renamed from: I */
    public AbstractC0725t f3537I;

    /* renamed from: b.b.q.u$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/u$a.class */
    public static class C0727a extends C0717q {

        /* renamed from: o */
        public final int f3538o;

        /* renamed from: p */
        public final int f3539p;

        /* renamed from: q */
        public AbstractC0725t f3540q;

        /* renamed from: r */
        public MenuItem f3541r;

        public C0727a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f3538o = 22;
                this.f3539p = 21;
                return;
            }
            this.f3538o = 21;
            this.f3539p = 22;
        }

        @Override // p012b.p016b.p026q.C0717q, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            C0646f fVar;
            int i;
            if (this.f3540q != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    fVar = (C0646f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    fVar = (C0646f) adapter;
                }
                C0651i iVar = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    iVar = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        iVar = null;
                        if (i2 >= 0) {
                            iVar = null;
                            if (i2 < fVar.getCount()) {
                                iVar = fVar.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f3541r;
                if (menuItem != iVar) {
                    C0647g b = fVar.m36625b();
                    if (menuItem != null) {
                        this.f3540q.mo36218b(b, menuItem);
                    }
                    this.f3541r = iVar;
                    if (iVar != null) {
                        this.f3540q.mo36221a(b, iVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView == null || i != this.f3538o) {
                if (listMenuItemView == null || i != this.f3539p) {
                    return super.onKeyDown(i, keyEvent);
                }
                setSelection(-1);
                ((C0646f) getAdapter()).m36625b().m36604a(false);
                return true;
            } else if (!listMenuItemView.isEnabled() || !listMenuItemView.getItemData().hasSubMenu()) {
                return true;
            } else {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            }
        }

        public void setHoverListener(AbstractC0725t tVar) {
            this.f3540q = tVar;
        }

        @Override // p012b.p016b.p026q.C0717q, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f3536J = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C0726u(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    /* renamed from: a */
    public C0717q mo36222a(Context context, boolean z) {
        C0727a aVar = new C0727a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    @Override // p012b.p016b.p026q.AbstractC0725t
    /* renamed from: a */
    public void mo36221a(C0647g gVar, MenuItem menuItem) {
        AbstractC0725t tVar = this.f3537I;
        if (tVar != null) {
            tVar.mo36221a(gVar, menuItem);
        }
    }

    /* renamed from: a */
    public void m36220a(AbstractC0725t tVar) {
        this.f3537I = tVar;
    }

    /* renamed from: a */
    public void m36219a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f637E.setEnterTransition((Transition) obj);
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0725t
    /* renamed from: b */
    public void mo36218b(C0647g gVar, MenuItem menuItem) {
        AbstractC0725t tVar = this.f3537I;
        if (tVar != null) {
            tVar.mo36218b(gVar, menuItem);
        }
    }

    /* renamed from: b */
    public void m36217b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f637E.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: d */
    public void m36216d(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f3536J;
            if (method != null) {
                try {
                    method.invoke(this.f637E, Boolean.valueOf(z));
                } catch (Exception e) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.f637E.setTouchModal(z);
        }
    }
}
