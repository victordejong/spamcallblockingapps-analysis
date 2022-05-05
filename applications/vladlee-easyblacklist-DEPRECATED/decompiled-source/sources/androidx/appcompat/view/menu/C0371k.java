package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.C0646b;
import androidx.core.p029a.p030a.AbstractMenuC0594a;
import androidx.core.p037g.AbstractC0720b;
import androidx.core.p037g.C0750y;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.appcompat.view.menu.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k.class */
public class C0371k implements AbstractMenuC0594a {

    /* renamed from: d */
    private static final int[] f1646d = {1, 4, 5, 3, 2, 0};

    /* renamed from: A */
    private boolean f1647A;

    /* renamed from: a */
    CharSequence f1648a;

    /* renamed from: b */
    Drawable f1649b;

    /* renamed from: c */
    View f1650c;

    /* renamed from: e */
    private final Context f1651e;

    /* renamed from: f */
    private final Resources f1652f;

    /* renamed from: g */
    private boolean f1653g;

    /* renamed from: h */
    private boolean f1654h;

    /* renamed from: i */
    private AbstractC0372a f1655i;

    /* renamed from: q */
    private ContextMenu.ContextMenuInfo f1663q;

    /* renamed from: y */
    private C0375m f1671y;

    /* renamed from: p */
    private int f1662p = 0;

    /* renamed from: r */
    private boolean f1664r = false;

    /* renamed from: s */
    private boolean f1665s = false;

    /* renamed from: t */
    private boolean f1666t = false;

    /* renamed from: u */
    private boolean f1667u = false;

    /* renamed from: v */
    private boolean f1668v = false;

    /* renamed from: w */
    private ArrayList<C0375m> f1669w = new ArrayList<>();

    /* renamed from: x */
    private CopyOnWriteArrayList<WeakReference<AbstractC0386s>> f1670x = new CopyOnWriteArrayList<>();

    /* renamed from: z */
    private boolean f1672z = false;

    /* renamed from: j */
    private ArrayList<C0375m> f1656j = new ArrayList<>();

    /* renamed from: k */
    private ArrayList<C0375m> f1657k = new ArrayList<>();

    /* renamed from: l */
    private boolean f1658l = true;

    /* renamed from: m */
    private ArrayList<C0375m> f1659m = new ArrayList<>();

    /* renamed from: n */
    private ArrayList<C0375m> f1660n = new ArrayList<>();

    /* renamed from: o */
    private boolean f1661o = true;

    /* renamed from: androidx.appcompat.view.menu.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k$a.class */
    public interface AbstractC0372a {
        /* renamed from: a */
        void mo949a(C0371k kVar);

        /* renamed from: a */
        boolean mo948a(C0371k kVar, MenuItem menuItem);
    }

    /* renamed from: androidx.appcompat.view.menu.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/k$b.class */
    public interface AbstractC0373b {
        /* renamed from: a */
        boolean mo9472a(C0375m mVar);
    }

    public C0371k(Context context) {
        this.f1651e = context;
        this.f1652f = context.getResources();
        boolean z = true;
        this.f1654h = (this.f1652f.getConfiguration().keyboard == 1 || !C0750y.m8292c(ViewConfiguration.get(this.f1651e), this.f1651e)) ? false : z;
    }

    /* renamed from: a */
    private static int m9610a(ArrayList<C0375m> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m9579c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: a */
    private C0375m m9623a(int i, KeyEvent keyEvent) {
        ArrayList<C0375m> arrayList = this.f1669w;
        arrayList.clear();
        m9609a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean d = mo9533d();
        for (int i2 = 0; i2 < size; i2++) {
            C0375m mVar = arrayList.get(i2);
            char alphabeticShortcut = d ? mVar.getAlphabeticShortcut() : mVar.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (d && alphabeticShortcut == '\b' && i == 67))) {
                return mVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m9622a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.f1652f;
        if (view != null) {
            this.f1650c = view;
            this.f1648a = null;
            this.f1649b = null;
        } else {
            if (i > 0) {
                this.f1648a = resources.getText(i);
            } else if (charSequence != null) {
                this.f1648a = charSequence;
            }
            if (i2 > 0) {
                this.f1649b = C0646b.m8619a(this.f1651e, i2);
            } else if (drawable != null) {
                this.f1649b = drawable;
            }
            this.f1650c = null;
        }
        mo972b(false);
    }

    /* renamed from: a */
    private void m9621a(int i, boolean z) {
        if (i >= 0 && i < this.f1656j.size()) {
            this.f1656j.remove(i);
            if (z) {
                mo972b(true);
            }
        }
    }

    /* renamed from: a */
    private void m9609a(List<C0375m> list, int i, KeyEvent keyEvent) {
        boolean d = mo9533d();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f1656j.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0375m mVar = this.f1656j.get(i2);
                if (mVar.hasSubMenu()) {
                    ((C0371k) mVar.getSubMenu()).m9609a(list, i, keyEvent);
                }
                char alphabeticShortcut = d ? mVar.getAlphabeticShortcut() : mVar.getNumericShortcut();
                if (((modifiers & 69647) == ((d ? mVar.getAlphabeticModifiers() : mVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (d && alphabeticShortcut == '\b' && i == 67)) && mVar.isEnabled())) {
                    list.add(mVar);
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m9612a(SubMenuC0395z zVar, AbstractC0386s sVar) {
        boolean z = false;
        if (this.f1670x.isEmpty()) {
            return false;
        }
        if (sVar != null) {
            z = sVar.mo1001a(zVar);
        }
        Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0386s> next = it.next();
            AbstractC0386s sVar2 = next.get();
            if (sVar2 == null) {
                this.f1670x.remove(next);
            } else if (!z) {
                z = sVar2.mo1001a(zVar);
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public MenuItem mo1361a(int i, int i2, int i3, CharSequence charSequence) {
        int i4 = ((-65536) & i3) >> 16;
        if (i4 >= 0) {
            int[] iArr = f1646d;
            if (i4 < iArr.length) {
                int i5 = (iArr[i4] << 16) | (65535 & i3);
                C0375m mVar = new C0375m(this, i, i2, i3, i5, charSequence, this.f1662p);
                ContextMenu.ContextMenuInfo contextMenuInfo = this.f1663q;
                if (contextMenuInfo != null) {
                    mVar.m9587a(contextMenuInfo);
                }
                ArrayList<C0375m> arrayList = this.f1656j;
                arrayList.add(m9610a(arrayList, i5), mVar);
                mo972b(true);
                return mVar;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: a */
    public final C0371k m9625a() {
        this.f1662p = 1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C0371k m9624a(int i) {
        m9622a(i, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C0371k m9620a(Drawable drawable) {
        m9622a(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C0371k m9615a(View view) {
        m9622a(0, null, 0, null, view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C0371k m9611a(CharSequence charSequence) {
        m9622a(0, charSequence, 0, null, null);
        return this;
    }

    /* renamed from: a */
    public final void m9619a(Bundle bundle) {
        Parcelable f;
        if (!this.f1670x.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC0386s> next = it.next();
                AbstractC0386s sVar = next.get();
                if (sVar == null) {
                    this.f1670x.remove(next);
                } else {
                    int c = sVar.mo993c();
                    if (c > 0 && (f = sVar.mo989f()) != null) {
                        sparseArray.put(c, f);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9618a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f1656j.size();
        m9599h();
        for (int i = 0; i < size; i++) {
            C0375m mVar = this.f1656j.get(i);
            if (mVar.getGroupId() == groupId && mVar.m9573f() && mVar.isCheckable()) {
                mVar.m9580b(mVar == menuItem);
            }
        }
        m9598i();
    }

    /* renamed from: a */
    public void mo9539a(AbstractC0372a aVar) {
        this.f1655i = aVar;
    }

    /* renamed from: a */
    public final void m9614a(AbstractC0386s sVar) {
        m9613a(sVar, this.f1651e);
    }

    /* renamed from: a */
    public final void m9613a(AbstractC0386s sVar, Context context) {
        this.f1670x.add(new WeakReference<>(sVar));
        sVar.mo1008a(context, this);
        this.f1661o = true;
    }

    /* renamed from: a */
    public final void m9608a(boolean z) {
        if (!this.f1668v) {
            this.f1668v = true;
            Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC0386s> next = it.next();
                AbstractC0386s sVar = next.get();
                if (sVar == null) {
                    this.f1670x.remove(next);
                } else {
                    sVar.mo1003a(this, z);
                }
            }
            this.f1668v = false;
        }
    }

    /* renamed from: a */
    public final boolean m9617a(MenuItem menuItem, int i) {
        return m9616a(menuItem, (AbstractC0386s) null, i);
    }

    /* renamed from: a */
    public final boolean m9616a(MenuItem menuItem, AbstractC0386s sVar, int i) {
        boolean z;
        C0375m mVar = (C0375m) menuItem;
        if (mVar == null || !mVar.isEnabled()) {
            return false;
        }
        boolean b = mVar.m9581b();
        AbstractC0720b a = mVar.mo8769a();
        boolean z2 = a != null && a.mo8421c();
        if (mVar.m9568k()) {
            boolean expandActionView = b | mVar.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                z = expandActionView;
                m9608a(true);
            }
            return z;
        } else if (mVar.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                m9608a(false);
            }
            if (!mVar.hasSubMenu()) {
                mVar.m9584a(new SubMenuC0395z(this.f1651e, this, mVar));
            }
            SubMenuC0395z zVar = (SubMenuC0395z) mVar.getSubMenu();
            if (z2) {
                a.mo8426a(zVar);
            }
            boolean a2 = b | m9612a(zVar, sVar);
            z = a2;
            if (!a2) {
                z = a2;
                m9608a(true);
            }
            return z;
        } else {
            z = b;
            if ((i & 1) == 0) {
                z = b;
                m9608a(true);
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean mo9538a(C0371k kVar, MenuItem menuItem) {
        AbstractC0372a aVar = this.f1655i;
        return aVar != null && aVar.mo948a(kVar, menuItem);
    }

    /* renamed from: a */
    public boolean mo9537a(C0375m mVar) {
        boolean z;
        boolean z2 = false;
        if (this.f1670x.isEmpty()) {
            return false;
        }
        m9599h();
        Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            WeakReference<AbstractC0386s> next = it.next();
            AbstractC0386s sVar = next.get();
            if (sVar == null) {
                this.f1670x.remove(next);
            } else {
                z = sVar.mo995b(mVar);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m9598i();
        if (z) {
            this.f1671y = mVar;
        }
        return z;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return mo1361a(0, 0, 0, this.f1652f.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return mo1361a(i, i2, i3, this.f1652f.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return mo1361a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return mo1361a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.f1651e.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        int i5 = 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
            i5 = 0;
        }
        while (i5 < size) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
            i5++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f1652f.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f1652f.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0375m mVar = (C0375m) mo1361a(i, i2, i3, charSequence);
        SubMenuC0395z zVar = new SubMenuC0395z(this.f1651e, this, mVar);
        mVar.m9584a(zVar);
        return zVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final C0371k m9607b(int i) {
        m9622a(0, null, i, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public String mo9536b() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: b */
    public final void m9606b(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.f1670x.isEmpty()) {
            Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC0386s> next = it.next();
                AbstractC0386s sVar = next.get();
                if (sVar == null) {
                    this.f1670x.remove(next);
                } else {
                    int c = sVar.mo993c();
                    if (c > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(c)) != null) {
                        sVar.mo1005a(parcelable);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m9605b(AbstractC0386s sVar) {
        Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0386s> next = it.next();
            AbstractC0386s sVar2 = next.get();
            if (sVar2 == null || sVar2 == sVar) {
                this.f1670x.remove(next);
            }
        }
    }

    /* renamed from: b */
    public void mo972b(boolean z) {
        if (!this.f1664r) {
            if (z) {
                this.f1658l = true;
                this.f1661o = true;
            }
            if (!this.f1670x.isEmpty()) {
                m9599h();
                Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
                while (it.hasNext()) {
                    WeakReference<AbstractC0386s> next = it.next();
                    AbstractC0386s sVar = next.get();
                    if (sVar == null) {
                        this.f1670x.remove(next);
                    } else {
                        sVar.mo999a(z);
                    }
                }
                m9598i();
                return;
            }
            return;
        }
        this.f1665s = true;
        if (z) {
            this.f1666t = true;
        }
    }

    /* renamed from: b */
    public boolean mo9535b(C0375m mVar) {
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        if (!this.f1670x.isEmpty()) {
            if (this.f1671y != mVar) {
                z3 = false;
            } else {
                m9599h();
                Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0386s> next = it.next();
                    AbstractC0386s sVar = next.get();
                    if (sVar == null) {
                        this.f1670x.remove(next);
                    } else {
                        z = sVar.mo991c(mVar);
                        z2 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m9598i();
                z3 = z;
                if (z) {
                    this.f1671y = null;
                    z3 = z;
                }
            }
        }
        return z3;
    }

    /* renamed from: c */
    public final void m9604c(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            sparseArray = sparseArray;
            if (actionView != null) {
                sparseArray = sparseArray;
                if (actionView.getId() != -1) {
                    SparseArray<? extends Parcelable> sparseArray2 = sparseArray;
                    if (sparseArray == null) {
                        sparseArray2 = new SparseArray<>();
                    }
                    actionView.saveHierarchyState(sparseArray2);
                    sparseArray = sparseArray2;
                    if (item.isActionViewExpanded()) {
                        bundle.putInt("android:menu:expandedactionview", item.getItemId());
                        sparseArray = sparseArray2;
                    }
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0395z) item.getSubMenu()).m9604c(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo9536b(), sparseArray);
        }
    }

    /* renamed from: c */
    public final void m9603c(boolean z) {
        this.f1647A = z;
    }

    /* renamed from: c */
    public boolean mo9534c() {
        return this.f1672z;
    }

    @Override // android.view.Menu
    public void clear() {
        C0375m mVar = this.f1671y;
        if (mVar != null) {
            mo9535b(mVar);
        }
        this.f1656j.clear();
        mo972b(true);
    }

    public void clearHeader() {
        this.f1649b = null;
        this.f1648a = null;
        this.f1650c = null;
        mo972b(false);
    }

    @Override // android.view.Menu
    public void close() {
        m9608a(true);
    }

    /* renamed from: d */
    public final void m9602d(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo9536b());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (!(actionView == null || actionView.getId() == -1)) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((SubMenuC0395z) item.getSubMenu()).m9602d(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (findItem = findItem(i2)) != null) {
                findItem.expandActionView();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean mo9533d() {
        return this.f1653g;
    }

    /* renamed from: e */
    public boolean mo9532e() {
        return this.f1654h;
    }

    /* renamed from: f */
    public final Context m9601f() {
        return this.f1651e;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0375m mVar = this.f1656j.get(i2);
            if (mVar.getItemId() == i) {
                return mVar;
            }
            if (mVar.hasSubMenu() && (findItem = mVar.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m9600g() {
        AbstractC0372a aVar = this.f1655i;
        if (aVar != null) {
            aVar.mo949a(this);
        }
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f1656j.get(i);
    }

    /* renamed from: h */
    public final void m9599h() {
        if (!this.f1664r) {
            this.f1664r = true;
            this.f1665s = false;
            this.f1666t = false;
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f1647A) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f1656j.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m9598i() {
        this.f1664r = false;
        if (this.f1665s) {
            this.f1665s = false;
            mo972b(this.f1666t);
        }
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m9623a(i, keyEvent) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m9597j() {
        this.f1658l = true;
        mo972b(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final void m9596k() {
        this.f1661o = true;
        mo972b(true);
    }

    /* renamed from: l */
    public final ArrayList<C0375m> m9595l() {
        if (!this.f1658l) {
            return this.f1657k;
        }
        this.f1657k.clear();
        int size = this.f1656j.size();
        for (int i = 0; i < size; i++) {
            C0375m mVar = this.f1656j.get(i);
            if (mVar.isVisible()) {
                this.f1657k.add(mVar);
            }
        }
        this.f1658l = false;
        this.f1661o = true;
        return this.f1657k;
    }

    /* renamed from: m */
    public final void m9594m() {
        ArrayList<C0375m> l = m9595l();
        if (this.f1661o) {
            Iterator<WeakReference<AbstractC0386s>> it = this.f1670x.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<AbstractC0386s> next = it.next();
                AbstractC0386s sVar = next.get();
                if (sVar == null) {
                    this.f1670x.remove(next);
                } else {
                    z |= sVar.mo998b();
                }
            }
            if (z) {
                this.f1659m.clear();
                this.f1660n.clear();
                int size = l.size();
                for (int i = 0; i < size; i++) {
                    C0375m mVar = l.get(i);
                    (mVar.m9572g() ? this.f1659m : this.f1660n).add(mVar);
                }
            } else {
                this.f1659m.clear();
                this.f1660n.clear();
                this.f1660n.addAll(m9595l());
            }
            this.f1661o = false;
        }
    }

    /* renamed from: n */
    public final ArrayList<C0375m> m9593n() {
        m9594m();
        return this.f1659m;
    }

    /* renamed from: o */
    public final ArrayList<C0375m> m9592o() {
        m9594m();
        return this.f1660n;
    }

    /* renamed from: p */
    public C0371k mo9531p() {
        return this;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m9616a(findItem(i), (AbstractC0386s) null, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0375m a = m9623a(i, keyEvent);
        boolean a2 = a != null ? m9616a(a, (AbstractC0386s) null, i2) : false;
        if ((i2 & 2) != 0) {
            m9608a(true);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final boolean m9591q() {
        return this.f1667u;
    }

    /* renamed from: r */
    public final C0375m m9590r() {
        return this.f1671y;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f1656j.get(i2).getGroupId() == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f1656j.size();
            for (int i3 = 0; i3 < size2 - i2 && this.f1656j.get(i2).getGroupId() == i; i3++) {
                m9621a(i2, false);
            }
            mo972b(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f1656j.get(i2).getItemId() == i) {
                break;
            } else {
                i2++;
            }
        }
        m9621a(i2, true);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f1656j.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0375m mVar = this.f1656j.get(i2);
            if (mVar.getGroupId() == i) {
                mVar.m9582a(z2);
                mVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f1672z = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f1656j.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0375m mVar = this.f1656j.get(i2);
            if (mVar.getGroupId() == i) {
                mVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f1656j.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C0375m mVar = this.f1656j.get(i2);
            z2 = z2;
            if (mVar.getGroupId() == i) {
                z2 = z2;
                if (mVar.m9578c(z)) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            mo972b(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f1653g = z;
        mo972b(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1656j.size();
    }
}
