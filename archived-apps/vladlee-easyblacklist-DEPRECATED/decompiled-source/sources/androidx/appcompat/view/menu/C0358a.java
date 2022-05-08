package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.content.C0646b;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p029a.p030a.AbstractMenuItemC0595b;
import androidx.core.p037g.AbstractC0720b;
import com.crashlytics.android.core.CodedOutputStream;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public final class C0358a implements AbstractMenuItemC0595b {

    /* renamed from: e */
    private CharSequence f1559e;

    /* renamed from: f */
    private CharSequence f1560f;

    /* renamed from: g */
    private Intent f1561g;

    /* renamed from: h */
    private char f1562h;

    /* renamed from: j */
    private char f1564j;

    /* renamed from: l */
    private Drawable f1566l;

    /* renamed from: n */
    private Context f1568n;

    /* renamed from: o */
    private MenuItem.OnMenuItemClickListener f1569o;

    /* renamed from: p */
    private CharSequence f1570p;

    /* renamed from: q */
    private CharSequence f1571q;

    /* renamed from: i */
    private int f1563i = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: k */
    private int f1565k = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: m */
    private int f1567m = 0;

    /* renamed from: r */
    private ColorStateList f1572r = null;

    /* renamed from: s */
    private PorterDuff.Mode f1573s = null;

    /* renamed from: t */
    private boolean f1574t = false;

    /* renamed from: u */
    private boolean f1575u = false;

    /* renamed from: v */
    private int f1576v = 16;

    /* renamed from: a */
    private final int f1555a = 16908332;

    /* renamed from: b */
    private final int f1556b = 0;

    /* renamed from: c */
    private final int f1557c = 0;

    /* renamed from: d */
    private final int f1558d = 0;

    public C0358a(Context context, CharSequence charSequence) {
        this.f1568n = context;
        this.f1559e = charSequence;
    }

    /* renamed from: b */
    private void m9647b() {
        if (this.f1566l == null) {
            return;
        }
        if (this.f1574t || this.f1575u) {
            this.f1566l = C0758a.m8241f(this.f1566l);
            this.f1566l = this.f1566l.mutate();
            if (this.f1574t) {
                C0758a.m8251a(this.f1566l, this.f1572r);
            }
            if (this.f1575u) {
                C0758a.m8248a(this.f1566l, this.f1573s);
            }
        }
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: a */
    public final AbstractMenuItemC0595b mo8768a(AbstractC0720b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: a */
    public final AbstractMenuItemC0595b mo8767a(CharSequence charSequence) {
        this.f1570p = charSequence;
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: a */
    public final AbstractC0720b mo8769a() {
        return null;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: b */
    public final AbstractMenuItemC0595b mo8766b(CharSequence charSequence) {
        this.f1571q = charSequence;
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1565k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1564j;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1570p;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f1556b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f1566l;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1572r;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1573s;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1561g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f1555a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1563i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1562h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f1558d;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1559e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1560f;
        return charSequence != null ? charSequence : this.f1559e;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1571q;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f1576v & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f1576v & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f1576v & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f1576v & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f1564j = Character.toLowerCase(c);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f1564j = Character.toLowerCase(c);
        this.f1565k = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f1576v = (z ? 1 : 0) | (this.f1576v & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f1576v = (z ? 2 : 0) | (this.f1576v & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        this.f1570p = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f1576v = (z ? 16 : 0) | (this.f1576v & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f1567m = i;
        this.f1566l = C0646b.m8619a(this.f1568n, i);
        m9647b();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1566l = drawable;
        this.f1567m = 0;
        m9647b();
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1572r = colorStateList;
        this.f1574t = true;
        m9647b();
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1573s = mode;
        this.f1575u = true;
        m9647b();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1561g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f1562h = c;
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f1562h = c;
        this.f1563i = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1569o = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f1562h = c;
        this.f1564j = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1562h = c;
        this.f1563i = KeyEvent.normalizeMetaState(i);
        this.f1564j = Character.toLowerCase(c2);
        this.f1565k = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f1559e = this.f1568n.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1559e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1560f = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        this.f1571q = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.f1576v;
        int i2 = 8;
        if (z) {
            i2 = 0;
        }
        this.f1576v = (i & 8) | i2;
        return this;
    }
}
