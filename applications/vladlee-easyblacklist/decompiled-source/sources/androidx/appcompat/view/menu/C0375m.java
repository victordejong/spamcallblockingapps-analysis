package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.C0247a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.core.p029a.p030a.AbstractMenuItemC0595b;
import androidx.core.p037g.AbstractC0720b;
import com.crashlytics.android.core.CodedOutputStream;
/* renamed from: androidx.appcompat.view.menu.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/m.class */
public final class C0375m implements AbstractMenuItemC0595b {

    /* renamed from: A */
    private View f1677A;

    /* renamed from: B */
    private AbstractC0720b f1678B;

    /* renamed from: C */
    private MenuItem.OnActionExpandListener f1679C;

    /* renamed from: E */
    private ContextMenu.ContextMenuInfo f1681E;

    /* renamed from: a */
    C0371k f1682a;

    /* renamed from: b */
    private final int f1683b;

    /* renamed from: c */
    private final int f1684c;

    /* renamed from: d */
    private final int f1685d;

    /* renamed from: e */
    private final int f1686e;

    /* renamed from: f */
    private CharSequence f1687f;

    /* renamed from: g */
    private CharSequence f1688g;

    /* renamed from: h */
    private Intent f1689h;

    /* renamed from: i */
    private char f1690i;

    /* renamed from: k */
    private char f1692k;

    /* renamed from: m */
    private Drawable f1694m;

    /* renamed from: o */
    private SubMenuC0395z f1696o;

    /* renamed from: p */
    private Runnable f1697p;

    /* renamed from: q */
    private MenuItem.OnMenuItemClickListener f1698q;

    /* renamed from: r */
    private CharSequence f1699r;

    /* renamed from: s */
    private CharSequence f1700s;

    /* renamed from: z */
    private int f1707z;

    /* renamed from: j */
    private int f1691j = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: l */
    private int f1693l = CodedOutputStream.DEFAULT_BUFFER_SIZE;

    /* renamed from: n */
    private int f1695n = 0;

    /* renamed from: t */
    private ColorStateList f1701t = null;

    /* renamed from: u */
    private PorterDuff.Mode f1702u = null;

    /* renamed from: v */
    private boolean f1703v = false;

    /* renamed from: w */
    private boolean f1704w = false;

    /* renamed from: x */
    private boolean f1705x = false;

    /* renamed from: y */
    private int f1706y = 16;

    /* renamed from: D */
    private boolean f1680D = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0375m(C0371k kVar, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f1707z = 0;
        this.f1682a = kVar;
        this.f1683b = i2;
        this.f1684c = i;
        this.f1685d = i3;
        this.f1686e = i4;
        this.f1687f = charSequence;
        this.f1707z = i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r3.f1704w != false) goto L_0x001f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable m9588a(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x004a
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f1705x
            if (r0 == 0) goto L_0x004a
            r0 = r3
            boolean r0 = r0.f1703v
            if (r0 != 0) goto L_0x001f
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f1704w
            if (r0 == 0) goto L_0x004a
        L_0x001f:
            r0 = r4
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.C0758a.m8241f(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r5 = r0
            r0 = r3
            boolean r0 = r0.f1703v
            if (r0 == 0) goto L_0x0036
            r0 = r5
            r1 = r3
            android.content.res.ColorStateList r1 = r1.f1701t
            androidx.core.graphics.drawable.C0758a.m8251a(r0, r1)
        L_0x0036:
            r0 = r3
            boolean r0 = r0.f1704w
            if (r0 == 0) goto L_0x0045
            r0 = r5
            r1 = r3
            android.graphics.PorterDuff$Mode r1 = r1.f1702u
            androidx.core.graphics.drawable.C0758a.m8248a(r0, r1)
        L_0x0045:
            r0 = r3
            r1 = 0
            r0.f1705x = r1
        L_0x004a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.C0375m.m9588a(android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public AbstractMenuItemC0595b setActionView(View view) {
        int i;
        this.f1677A = view;
        this.f1678B = null;
        if (view != null && view.getId() == -1 && (i = this.f1683b) > 0) {
            view.setId(i);
        }
        this.f1682a.m9596k();
        return this;
    }

    /* renamed from: a */
    private static void m9583a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* renamed from: l */
    private char m9567l() {
        return this.f1682a.mo9533d() ? this.f1692k : this.f1690i;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: a */
    public final AbstractMenuItemC0595b mo8768a(AbstractC0720b bVar) {
        AbstractC0720b bVar2 = this.f1678B;
        if (bVar2 != null) {
            bVar2.m8418f();
        }
        this.f1677A = null;
        this.f1678B = bVar;
        this.f1682a.mo972b(true);
        AbstractC0720b bVar3 = this.f1678B;
        if (bVar3 != null) {
            bVar3.mo8424a(new C0376n(this));
        }
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: a */
    public final AbstractMenuItemC0595b setContentDescription(CharSequence charSequence) {
        this.f1699r = charSequence;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: a */
    public final AbstractC0720b mo8769a() {
        return this.f1678B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final CharSequence m9585a(AbstractC0388t.AbstractC0389a aVar) {
        return aVar.mo1066b_() ? getTitleCondensed() : getTitle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9587a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f1681E = contextMenuInfo;
    }

    /* renamed from: a */
    public final void m9584a(SubMenuC0395z zVar) {
        this.f1696o = zVar;
        zVar.setHeaderTitle(getTitle());
    }

    /* renamed from: a */
    public final void m9582a(boolean z) {
        this.f1706y = (z ? 4 : 0) | (this.f1706y & (-5));
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b
    /* renamed from: b */
    public final AbstractMenuItemC0595b setTooltipText(CharSequence charSequence) {
        this.f1700s = charSequence;
        this.f1682a.mo972b(false);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9580b(boolean z) {
        int i = this.f1706y;
        this.f1706y = (z ? 2 : 0) | (i & (-3));
        if (i != this.f1706y) {
            this.f1682a.mo972b(false);
        }
    }

    /* renamed from: b */
    public final boolean m9581b() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1698q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        C0371k kVar = this.f1682a;
        if (kVar.mo9538a(kVar, this)) {
            return true;
        }
        Runnable runnable = this.f1697p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1689h != null) {
            try {
                this.f1682a.m9601f().startActivity(this.f1689h);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e);
            }
        }
        AbstractC0720b bVar = this.f1678B;
        return bVar != null && bVar.mo8422b();
    }

    /* renamed from: c */
    public final int m9579c() {
        return this.f1686e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final boolean m9578c(boolean z) {
        int i = this.f1706y;
        this.f1706y = (z ? 0 : 8) | (i & (-9));
        return i != this.f1706y;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f1707z & 8) == 0) {
            return false;
        }
        if (this.f1677A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f1679C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1682a.mo9535b(this);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m9577d() {
        int i;
        char l = m9567l();
        if (l == 0) {
            return "";
        }
        Resources resources = this.f1682a.m9601f().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f1682a.m9601f()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C0247a.C0255h.f733m));
        }
        int i2 = this.f1682a.mo9533d() ? this.f1693l : this.f1691j;
        m9583a(sb, i2, 65536, resources.getString(C0247a.C0255h.f729i));
        m9583a(sb, i2, CodedOutputStream.DEFAULT_BUFFER_SIZE, resources.getString(C0247a.C0255h.f725e));
        m9583a(sb, i2, 2, resources.getString(C0247a.C0255h.f724d));
        m9583a(sb, i2, 1, resources.getString(C0247a.C0255h.f730j));
        m9583a(sb, i2, 4, resources.getString(C0247a.C0255h.f732l));
        m9583a(sb, i2, 8, resources.getString(C0247a.C0255h.f728h));
        if (l == '\b') {
            i = C0247a.C0255h.f726f;
        } else if (l == '\n') {
            i = C0247a.C0255h.f727g;
        } else if (l != ' ') {
            sb.append(l);
            return sb.toString();
        } else {
            i = C0247a.C0255h.f731k;
        }
        sb.append(resources.getString(i));
        return sb.toString();
    }

    /* renamed from: d */
    public final void m9576d(boolean z) {
        this.f1706y = z ? this.f1706y | 32 : this.f1706y & (-33);
    }

    /* renamed from: e */
    public final void m9574e(boolean z) {
        this.f1680D = z;
        this.f1682a.mo972b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m9575e() {
        return this.f1682a.mo9532e() && m9567l() != 0;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final boolean expandActionView() {
        if (!m9568k()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f1679C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1682a.mo9537a(this);
        }
        return false;
    }

    /* renamed from: f */
    public final boolean m9573f() {
        return (this.f1706y & 4) != 0;
    }

    /* renamed from: g */
    public final boolean m9572g() {
        return (this.f1706y & 32) == 32;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final View getActionView() {
        View view = this.f1677A;
        if (view != null) {
            return view;
        }
        AbstractC0720b bVar = this.f1678B;
        if (bVar == null) {
            return null;
        }
        this.f1677A = bVar.mo8427a(this);
        return this.f1677A;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1693l;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1692k;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1699r;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f1684c;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f1694m;
        if (drawable != null) {
            return m9588a(drawable);
        }
        if (this.f1695n == 0) {
            return null;
        }
        Drawable b = C0258a.m9951b(this.f1682a.m9601f(), this.f1695n);
        this.f1695n = 0;
        this.f1694m = b;
        return m9588a(b);
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1701t;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1702u;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1689h;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.f1683b;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1681E;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1691j;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1690i;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f1685d;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f1696o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.f1687f;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1688g;
        if (charSequence == null) {
            charSequence = this.f1687f;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1700s;
    }

    /* renamed from: h */
    public final boolean m9571h() {
        return (this.f1707z & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f1696o != null;
    }

    /* renamed from: i */
    public final boolean m9570i() {
        return (this.f1707z & 2) == 2;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f1680D;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f1706y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f1706y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f1706y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        AbstractC0720b bVar = this.f1678B;
        return (bVar == null || !bVar.mo8420d()) ? (this.f1706y & 8) == 0 : (this.f1706y & 8) == 0 && this.f1678B.mo8419e();
    }

    /* renamed from: j */
    public final boolean m9569j() {
        return (this.f1707z & 4) == 4;
    }

    /* renamed from: k */
    public final boolean m9568k() {
        AbstractC0720b bVar;
        if ((this.f1707z & 8) == 0) {
            return false;
        }
        if (this.f1677A == null && (bVar = this.f1678B) != null) {
            this.f1677A = bVar.mo8427a(this);
        }
        return this.f1677A != null;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final /* synthetic */ MenuItem setActionView(int i) {
        Context f = this.f1682a.m9601f();
        setActionView(LayoutInflater.from(f).inflate(i, (ViewGroup) new LinearLayout(f), false));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.f1692k == c) {
            return this;
        }
        this.f1692k = Character.toLowerCase(c);
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f1692k == c && this.f1693l == i) {
            return this;
        }
        this.f1692k = Character.toLowerCase(c);
        this.f1693l = KeyEvent.normalizeMetaState(i);
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.f1706y;
        this.f1706y = (z ? 1 : 0) | (i & (-2));
        if (i != this.f1706y) {
            this.f1682a.mo972b(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        if ((this.f1706y & 4) != 0) {
            this.f1682a.m9618a((MenuItem) this);
        } else {
            m9580b(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f1706y = z ? this.f1706y | 16 : this.f1706y & (-17);
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f1694m = null;
        this.f1695n = i;
        this.f1705x = true;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1695n = 0;
        this.f1694m = drawable;
        this.f1705x = true;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1701t = colorStateList;
        this.f1703v = true;
        this.f1705x = true;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1702u = mode;
        this.f1704w = true;
        this.f1705x = true;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1689h = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        if (this.f1690i == c) {
            return this;
        }
        this.f1690i = c;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        if (this.f1690i == c && this.f1691j == i) {
            return this;
        }
        this.f1690i = c;
        this.f1691j = KeyEvent.normalizeMetaState(i);
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1679C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1698q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f1690i = c;
        this.f1692k = Character.toLowerCase(c2);
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1690i = c;
        this.f1691j = KeyEvent.normalizeMetaState(i);
        this.f1692k = Character.toLowerCase(c2);
        this.f1693l = KeyEvent.normalizeMetaState(i2);
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.f1707z = i;
            this.f1682a.m9596k();
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    @Override // androidx.core.p029a.p030a.AbstractMenuItemC0595b, android.view.MenuItem
    public final /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        return setTitle(this.f1682a.m9601f().getString(i));
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1687f = charSequence;
        this.f1682a.mo972b(false);
        SubMenuC0395z zVar = this.f1696o;
        if (zVar != null) {
            zVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1688g = charSequence;
        this.f1682a.mo972b(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        if (m9578c(z)) {
            this.f1682a.m9597j();
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f1687f;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
