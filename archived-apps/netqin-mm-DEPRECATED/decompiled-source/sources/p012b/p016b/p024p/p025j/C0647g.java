package p012b.p016b.p024p.p025j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
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
import com.google.common.collect.RegularImmutableMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p048k.p049a.AbstractMenuC0913a;
import p012b.p042i.p054p.AbstractC0952b;
import p012b.p042i.p054p.C1014v;
/* renamed from: b.b.p.j.g */
/* loaded from: classes-dex2jar.jar:b/b/p/j/g.class */
public class C0647g implements AbstractMenuC0913a {

    /* renamed from: A */
    public static final int[] f3228A = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f3229a;

    /* renamed from: b */
    public final Resources f3230b;

    /* renamed from: c */
    public boolean f3231c;

    /* renamed from: d */
    public boolean f3232d;

    /* renamed from: e */
    public AbstractC0648a f3233e;

    /* renamed from: m */
    public ContextMenu.ContextMenuInfo f3241m;

    /* renamed from: n */
    public CharSequence f3242n;

    /* renamed from: o */
    public Drawable f3243o;

    /* renamed from: p */
    public View f3244p;

    /* renamed from: x */
    public C0651i f3252x;

    /* renamed from: z */
    public boolean f3254z;

    /* renamed from: l */
    public int f3240l = 0;

    /* renamed from: q */
    public boolean f3245q = false;

    /* renamed from: r */
    public boolean f3246r = false;

    /* renamed from: s */
    public boolean f3247s = false;

    /* renamed from: t */
    public boolean f3248t = false;

    /* renamed from: u */
    public boolean f3249u = false;

    /* renamed from: v */
    public ArrayList<C0651i> f3250v = new ArrayList<>();

    /* renamed from: w */
    public CopyOnWriteArrayList<WeakReference<AbstractC0662m>> f3251w = new CopyOnWriteArrayList<>();

    /* renamed from: y */
    public boolean f3253y = false;

    /* renamed from: f */
    public ArrayList<C0651i> f3234f = new ArrayList<>();

    /* renamed from: g */
    public ArrayList<C0651i> f3235g = new ArrayList<>();

    /* renamed from: h */
    public boolean f3236h = true;

    /* renamed from: i */
    public ArrayList<C0651i> f3237i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<C0651i> f3238j = new ArrayList<>();

    /* renamed from: k */
    public boolean f3239k = true;

    /* renamed from: b.b.p.j.g$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/g$a.class */
    public interface AbstractC0648a {
        /* renamed from: a */
        void mo36577a(C0647g gVar);

        /* renamed from: a */
        boolean mo36576a(C0647g gVar, MenuItem menuItem);
    }

    /* renamed from: b.b.p.j.g$b */
    /* loaded from: classes-dex2jar.jar:b/b/p/j/g$b.class */
    public interface AbstractC0649b {
        /* renamed from: a */
        boolean mo36575a(C0651i iVar);
    }

    public C0647g(Context context) {
        this.f3229a = context;
        this.f3230b = context.getResources();
        m36589e(true);
    }

    /* renamed from: a */
    public static int m36606a(ArrayList<C0651i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m36564c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: f */
    public static int m36587f(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f3228A;
            if (i2 < iArr.length) {
                return (i & RegularImmutableMap.SHORT_MASK) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: a */
    public int m36623a(int i) {
        return m36622a(i, 0);
    }

    /* renamed from: a */
    public int m36622a(int i, int i2) {
        int size = size();
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        while (i3 < size) {
            if (this.f3234f.get(i3).getGroupId() == i) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    /* renamed from: a */
    public MenuItem m36620a(int i, int i2, int i3, CharSequence charSequence) {
        int f = m36587f(i3);
        C0651i a = m36621a(i, i2, i3, f, charSequence, this.f3240l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f3241m;
        if (contextMenuInfo != null) {
            a.m36571a(contextMenuInfo);
        }
        ArrayList<C0651i> arrayList = this.f3234f;
        arrayList.add(m36606a(arrayList, f), a);
        m36595c(true);
        return a;
    }

    /* renamed from: a */
    public C0647g m36616a(Drawable drawable) {
        m36618a(0, null, 0, drawable, null);
        return this;
    }

    /* renamed from: a */
    public C0647g m36611a(View view) {
        m36618a(0, null, 0, null, view);
        return this;
    }

    /* renamed from: a */
    public C0647g m36607a(CharSequence charSequence) {
        m36618a(0, charSequence, 0, null, null);
        return this;
    }

    /* renamed from: a */
    public final C0651i m36621a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0651i(this, i, i2, i3, i4, charSequence, i5);
    }

    /* renamed from: a */
    public C0651i m36619a(int i, KeyEvent keyEvent) {
        ArrayList<C0651i> arrayList = this.f3250v;
        arrayList.clear();
        m36605a(arrayList, i, keyEvent);
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
        boolean p = mo36494p();
        for (int i2 = 0; i2 < size; i2++) {
            C0651i iVar = arrayList.get(i2);
            char alphabeticShortcut = p ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (p && alphabeticShortcut == '\b' && i == 67))) {
                return iVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m36624a() {
        AbstractC0648a aVar = this.f3233e;
        if (aVar != null) {
            aVar.mo36577a(this);
        }
    }

    /* renamed from: a */
    public final void m36618a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources l = m36581l();
        if (view != null) {
            this.f3244p = view;
            this.f3242n = null;
            this.f3243o = null;
        } else {
            if (i > 0) {
                this.f3242n = l.getText(i);
            } else if (charSequence != null) {
                this.f3242n = charSequence;
            }
            if (i2 > 0) {
                this.f3243o = C0869a.m35684c(m36591e(), i2);
            } else if (drawable != null) {
                this.f3243o = drawable;
            }
            this.f3244p = null;
        }
        m36595c(false);
    }

    /* renamed from: a */
    public final void m36617a(int i, boolean z) {
        if (i >= 0 && i < this.f3234f.size()) {
            this.f3234f.remove(i);
            if (z) {
                m36595c(true);
            }
        }
    }

    /* renamed from: a */
    public void m36615a(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo36497d());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (!(actionView == null || actionView.getId() == -1)) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((SubMenuC0671r) item.getSubMenu()).m36615a(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (findItem = findItem(i2)) != null) {
                findItem.expandActionView();
            }
        }
    }

    /* renamed from: a */
    public void m36614a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f3234f.size();
        m36578s();
        for (int i = 0; i < size; i++) {
            C0651i iVar = this.f3234f.get(i);
            if (iVar.getGroupId() == groupId && iVar.m36555i() && iVar.isCheckable()) {
                iVar.m36565b(iVar == menuItem);
            }
        }
        m36579r();
    }

    /* renamed from: a */
    public void mo36501a(AbstractC0648a aVar) {
        this.f3233e = aVar;
    }

    /* renamed from: a */
    public void m36610a(AbstractC0662m mVar) {
        m36609a(mVar, this.f3229a);
    }

    /* renamed from: a */
    public void m36609a(AbstractC0662m mVar, Context context) {
        this.f3251w.add(new WeakReference<>(mVar));
        mVar.mo36525a(context, this);
        this.f3239k = true;
    }

    /* renamed from: a */
    public void m36605a(List<C0651i> list, int i, KeyEvent keyEvent) {
        boolean p = mo36494p();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f3234f.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0651i iVar = this.f3234f.get(i2);
                if (iVar.hasSubMenu()) {
                    ((C0647g) iVar.getSubMenu()).m36605a(list, i, keyEvent);
                }
                char alphabeticShortcut = p ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
                if (((modifiers & 69647) == ((p ? iVar.getAlphabeticModifiers() : iVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (p && alphabeticShortcut == '\b' && i == 67)) && iVar.isEnabled()) {
                        list.add(iVar);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m36604a(boolean z) {
        if (!this.f3249u) {
            this.f3249u = true;
            Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC0662m> next = it.next();
                AbstractC0662m mVar = next.get();
                if (mVar == null) {
                    this.f3251w.remove(next);
                } else {
                    mVar.mo36512a(this, z);
                }
            }
            this.f3249u = false;
        }
    }

    /* renamed from: a */
    public boolean m36613a(MenuItem menuItem, int i) {
        return m36612a(menuItem, (AbstractC0662m) null, i);
    }

    /* renamed from: a */
    public boolean m36612a(MenuItem menuItem, AbstractC0662m mVar, int i) {
        boolean z;
        C0651i iVar = (C0651i) menuItem;
        if (iVar == null || !iVar.isEnabled()) {
            return false;
        }
        boolean g = iVar.m36557g();
        AbstractC0952b a = iVar.mo35505a();
        boolean z2 = a != null && a.mo35432a();
        if (iVar.m36558f()) {
            boolean expandActionView = g | iVar.expandActionView();
            z = expandActionView;
            if (expandActionView) {
                m36604a(true);
                z = expandActionView;
            }
        } else if (iVar.hasSubMenu() || z2) {
            if ((i & 4) == 0) {
                m36604a(false);
            }
            if (!iVar.hasSubMenu()) {
                iVar.m36569a(new SubMenuC0671r(m36591e(), this, iVar));
            }
            SubMenuC0671r rVar = (SubMenuC0671r) iVar.getSubMenu();
            if (z2) {
                a.mo35430a(rVar);
            }
            boolean a2 = g | m36608a(rVar, mVar);
            z = a2;
            if (!a2) {
                m36604a(true);
                z = a2;
            }
        } else {
            z = g;
            if ((i & 1) == 0) {
                m36604a(true);
                z = g;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean mo36500a(C0647g gVar, MenuItem menuItem) {
        AbstractC0648a aVar = this.f3233e;
        return aVar != null && aVar.mo36576a(gVar, menuItem);
    }

    /* renamed from: a */
    public boolean mo36499a(C0651i iVar) {
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        if (!this.f3251w.isEmpty()) {
            if (this.f3252x != iVar) {
                z3 = false;
            } else {
                m36578s();
                Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    WeakReference<AbstractC0662m> next = it.next();
                    AbstractC0662m mVar = next.get();
                    if (mVar == null) {
                        this.f3251w.remove(next);
                    } else {
                        z = mVar.mo36524a(this, iVar);
                        z2 = z;
                        if (z) {
                            break;
                        }
                    }
                }
                m36579r();
                z3 = z;
                if (z) {
                    this.f3252x = null;
                    z3 = z;
                }
            }
        }
        return z3;
    }

    /* renamed from: a */
    public final boolean m36608a(SubMenuC0671r rVar, AbstractC0662m mVar) {
        boolean z = false;
        if (this.f3251w.isEmpty()) {
            return false;
        }
        if (mVar != null) {
            z = mVar.mo36510a(rVar);
        }
        Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0662m> next = it.next();
            AbstractC0662m mVar2 = next.get();
            if (mVar2 == null) {
                this.f3251w.remove(next);
            } else if (!z) {
                z = mVar2.mo36510a(rVar);
            }
        }
        return z;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m36620a(0, 0, 0, this.f3230b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m36620a(i, i2, i3, this.f3230b.getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m36620a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m36620a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f3229a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        int i6 = 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
            i6 = 0;
        }
        while (i6 < size) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = intent3;
            }
            i6++;
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f3230b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f3230b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0651i iVar = (C0651i) m36620a(i, i2, i3, charSequence);
        SubMenuC0671r rVar = new SubMenuC0671r(this.f3229a, this, iVar);
        iVar.m36569a(rVar);
        return rVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public int m36602b(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f3234f.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public void m36603b() {
        ArrayList<C0651i> n = m36580n();
        if (this.f3239k) {
            Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<AbstractC0662m> next = it.next();
                AbstractC0662m mVar = next.get();
                if (mVar == null) {
                    this.f3251w.remove(next);
                } else {
                    z |= mVar.mo36508b();
                }
            }
            if (z) {
                this.f3237i.clear();
                this.f3238j.clear();
                int size = n.size();
                for (int i = 0; i < size; i++) {
                    C0651i iVar = n.get(i);
                    if (iVar.m36556h()) {
                        this.f3237i.add(iVar);
                    } else {
                        this.f3238j.add(iVar);
                    }
                }
            } else {
                this.f3237i.clear();
                this.f3238j.clear();
                this.f3238j.addAll(m36580n());
            }
            this.f3239k = false;
        }
    }

    /* renamed from: b */
    public void m36601b(Bundle bundle) {
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
                ((SubMenuC0671r) item.getSubMenu()).m36601b(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo36497d(), sparseArray);
        }
    }

    /* renamed from: b */
    public void m36600b(AbstractC0662m mVar) {
        Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC0662m> next = it.next();
            AbstractC0662m mVar2 = next.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.f3251w.remove(next);
            }
        }
    }

    /* renamed from: b */
    public final void m36599b(boolean z) {
        if (!this.f3251w.isEmpty()) {
            m36578s();
            Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
            while (it.hasNext()) {
                WeakReference<AbstractC0662m> next = it.next();
                AbstractC0662m mVar = next.get();
                if (mVar == null) {
                    this.f3251w.remove(next);
                } else {
                    mVar.mo36509a(z);
                }
            }
            m36579r();
        }
    }

    /* renamed from: b */
    public boolean mo36498b(C0651i iVar) {
        boolean z;
        boolean z2 = false;
        if (this.f3251w.isEmpty()) {
            return false;
        }
        m36578s();
        Iterator<WeakReference<AbstractC0662m>> it = this.f3251w.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            WeakReference<AbstractC0662m> next = it.next();
            AbstractC0662m mVar = next.get();
            if (mVar == null) {
                this.f3251w.remove(next);
            } else {
                z = mVar.mo36523b(this, iVar);
                z2 = z;
                if (z) {
                    break;
                }
            }
        }
        m36579r();
        if (z) {
            this.f3252x = iVar;
        }
        return z;
    }

    /* renamed from: c */
    public C0647g m36597c(int i) {
        this.f3240l = i;
        return this;
    }

    /* renamed from: c */
    public ArrayList<C0651i> m36598c() {
        m36603b();
        return this.f3237i;
    }

    /* renamed from: c */
    public void m36596c(C0651i iVar) {
        this.f3239k = true;
        m36595c(true);
    }

    /* renamed from: c */
    public void m36595c(boolean z) {
        if (!this.f3245q) {
            if (z) {
                this.f3236h = true;
                this.f3239k = true;
            }
            m36599b(z);
            return;
        }
        this.f3246r = true;
        if (z) {
            this.f3247s = true;
        }
    }

    @Override // android.view.Menu
    public void clear() {
        C0651i iVar = this.f3252x;
        if (iVar != null) {
            mo36499a(iVar);
        }
        this.f3234f.clear();
        m36595c(true);
    }

    public void clearHeader() {
        this.f3243o = null;
        this.f3242n = null;
        this.f3244p = null;
        m36595c(false);
    }

    @Override // android.view.Menu
    public void close() {
        m36604a(true);
    }

    /* renamed from: d */
    public C0647g m36594d(int i) {
        m36618a(0, null, i, null, null);
        return this;
    }

    /* renamed from: d */
    public String mo36497d() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: d */
    public void m36593d(C0651i iVar) {
        this.f3236h = true;
        m36595c(true);
    }

    /* renamed from: d */
    public void m36592d(boolean z) {
        this.f3254z = z;
    }

    /* renamed from: e */
    public Context m36591e() {
        return this.f3229a;
    }

    /* renamed from: e */
    public C0647g m36590e(int i) {
        m36618a(i, null, 0, null, null);
        return this;
    }

    /* renamed from: e */
    public final void m36589e(boolean z) {
        boolean z2 = true;
        if (!z || this.f3230b.getConfiguration().keyboard == 1 || !C1014v.m35174d(ViewConfiguration.get(this.f3229a), this.f3229a)) {
            z2 = false;
        }
        this.f3232d = z2;
    }

    /* renamed from: f */
    public C0651i m36588f() {
        return this.f3252x;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0651i iVar = this.f3234f.get(i2);
            if (iVar.getItemId() == i) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (findItem = iVar.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: g */
    public Drawable m36586g() {
        return this.f3243o;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f3234f.get(i);
    }

    /* renamed from: h */
    public CharSequence m36585h() {
        return this.f3242n;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f3254z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f3234f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public View m36584i() {
        return this.f3244p;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m36619a(i, keyEvent) != null;
    }

    /* renamed from: j */
    public ArrayList<C0651i> m36583j() {
        m36603b();
        return this.f3238j;
    }

    /* renamed from: k */
    public boolean m36582k() {
        return this.f3248t;
    }

    /* renamed from: l */
    public Resources m36581l() {
        return this.f3230b;
    }

    /* renamed from: m */
    public C0647g mo36496m() {
        return this;
    }

    /* renamed from: n */
    public ArrayList<C0651i> m36580n() {
        if (!this.f3236h) {
            return this.f3235g;
        }
        this.f3235g.clear();
        int size = this.f3234f.size();
        for (int i = 0; i < size; i++) {
            C0651i iVar = this.f3234f.get(i);
            if (iVar.isVisible()) {
                this.f3235g.add(iVar);
            }
        }
        this.f3236h = false;
        this.f3239k = true;
        return this.f3235g;
    }

    /* renamed from: o */
    public boolean mo36495o() {
        return this.f3253y;
    }

    /* renamed from: p */
    public boolean mo36494p() {
        return this.f3231c;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m36613a(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0651i a = m36619a(i, keyEvent);
        boolean a2 = a != null ? m36613a(a, i2) : false;
        if ((i2 & 2) != 0) {
            m36604a(true);
        }
        return a2;
    }

    /* renamed from: q */
    public boolean mo36493q() {
        return this.f3232d;
    }

    /* renamed from: r */
    public void m36579r() {
        this.f3245q = false;
        if (this.f3246r) {
            this.f3246r = false;
            m36595c(this.f3247s);
        }
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int a = m36623a(i);
        if (a >= 0) {
            int size = this.f3234f.size();
            for (int i2 = 0; i2 < size - a && this.f3234f.get(a).getGroupId() == i; i2++) {
                m36617a(a, false);
            }
            m36595c(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m36617a(m36602b(i), true);
    }

    /* renamed from: s */
    public void m36578s() {
        if (!this.f3245q) {
            this.f3245q = true;
            this.f3246r = false;
            this.f3247s = false;
        }
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f3234f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0651i iVar = this.f3234f.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.m36563c(z2);
                iVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f3253y = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f3234f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0651i iVar = this.f3234f.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f3234f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C0651i iVar = this.f3234f.get(i2);
            z2 = z2;
            if (iVar.getGroupId() == i) {
                z2 = z2;
                if (iVar.m36559e(z)) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            m36595c(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f3231c = z;
        m36595c(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f3234f.size();
    }
}
