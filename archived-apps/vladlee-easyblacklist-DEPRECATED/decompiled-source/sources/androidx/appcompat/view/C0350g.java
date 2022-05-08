package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.view.menu.MenuItemC0377o;
import androidx.appcompat.widget.C0437ah;
import androidx.appcompat.widget.C0484bm;
import androidx.core.p029a.p030a.AbstractMenuC0594a;
import androidx.core.p029a.p030a.AbstractMenuItemC0595b;
import androidx.core.p037g.AbstractC0720b;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.view.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g.class */
public final class C0350g extends MenuInflater {

    /* renamed from: a */
    static final Class<?>[] f1472a;

    /* renamed from: b */
    static final Class<?>[] f1473b;

    /* renamed from: c */
    final Object[] f1474c;

    /* renamed from: d */
    final Object[] f1475d;

    /* renamed from: e */
    Context f1476e;

    /* renamed from: f */
    private Object f1477f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$a.class */
    public static final class MenuItem$OnMenuItemClickListenerC0351a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: a */
        private static final Class<?>[] f1478a = {MenuItem.class};

        /* renamed from: b */
        private Object f1479b;

        /* renamed from: c */
        private Method f1480c;

        public MenuItem$OnMenuItemClickListenerC0351a(Object obj, String str) {
            this.f1479b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1480c = cls.getMethod(str, f1478a);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f1480c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f1480c.invoke(this.f1479b, menuItem)).booleanValue();
                }
                this.f1480c.invoke(this.f1479b, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/g$b.class */
    public final class C0352b {

        /* renamed from: A */
        private String f1481A;

        /* renamed from: B */
        private String f1482B;

        /* renamed from: C */
        private CharSequence f1483C;

        /* renamed from: D */
        private CharSequence f1484D;

        /* renamed from: E */
        private ColorStateList f1485E = null;

        /* renamed from: F */
        private PorterDuff.Mode f1486F = null;

        /* renamed from: a */
        AbstractC0720b f1487a;

        /* renamed from: c */
        private Menu f1489c;

        /* renamed from: d */
        private int f1490d;

        /* renamed from: e */
        private int f1491e;

        /* renamed from: f */
        private int f1492f;

        /* renamed from: g */
        private int f1493g;

        /* renamed from: h */
        private boolean f1494h;

        /* renamed from: i */
        private boolean f1495i;

        /* renamed from: j */
        private boolean f1496j;

        /* renamed from: k */
        private int f1497k;

        /* renamed from: l */
        private int f1498l;

        /* renamed from: m */
        private CharSequence f1499m;

        /* renamed from: n */
        private CharSequence f1500n;

        /* renamed from: o */
        private int f1501o;

        /* renamed from: p */
        private char f1502p;

        /* renamed from: q */
        private int f1503q;

        /* renamed from: r */
        private char f1504r;

        /* renamed from: s */
        private int f1505s;

        /* renamed from: t */
        private int f1506t;

        /* renamed from: u */
        private boolean f1507u;

        /* renamed from: v */
        private boolean f1508v;

        /* renamed from: w */
        private boolean f1509w;

        /* renamed from: x */
        private int f1510x;

        /* renamed from: y */
        private int f1511y;

        /* renamed from: z */
        private String f1512z;

        public C0352b(Menu menu) {
            this.f1489c = menu;
            m9674a();
        }

        /* renamed from: a */
        private static char m9671a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: a */
        private <T> T m9670a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C0350g.this.f1476e.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: ".concat(String.valueOf(str)), e);
                return null;
            }
        }

        /* renamed from: a */
        private void m9672a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f1507u).setVisible(this.f1508v).setEnabled(this.f1509w).setCheckable(this.f1506t > 0).setTitleCondensed(this.f1500n).setIcon(this.f1501o);
            int i = this.f1510x;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f1482B != null) {
                if (!C0350g.this.f1476e.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0351a(C0350g.this.m9676a(), this.f1482B));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f1506t >= 2) {
                if (menuItem instanceof C0375m) {
                    ((C0375m) menuItem).m9582a(true);
                } else if (menuItem instanceof MenuItemC0377o) {
                    ((MenuItemC0377o) menuItem).m9566b();
                }
            }
            String str = this.f1512z;
            if (str != null) {
                menuItem.setActionView((View) m9670a(str, C0350g.f1472a, C0350g.this.f1474c));
                z = true;
            }
            int i2 = this.f1511y;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC0720b bVar = this.f1487a;
            if (bVar != null) {
                if (menuItem instanceof AbstractMenuItemC0595b) {
                    ((AbstractMenuItemC0595b) menuItem).mo8768a(bVar);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.f1483C;
            boolean z2 = menuItem instanceof AbstractMenuItemC0595b;
            if (z2) {
                ((AbstractMenuItemC0595b) menuItem).mo8767a(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.f1484D;
            if (z2) {
                ((AbstractMenuItemC0595b) menuItem).mo8766b(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.f1502p;
            int i3 = this.f1503q;
            if (z2) {
                ((AbstractMenuItemC0595b) menuItem).setAlphabeticShortcut(c, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c, i3);
            }
            char c2 = this.f1504r;
            int i4 = this.f1505s;
            if (z2) {
                ((AbstractMenuItemC0595b) menuItem).setNumericShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c2, i4);
            }
            PorterDuff.Mode mode = this.f1486F;
            if (mode != null) {
                if (z2) {
                    ((AbstractMenuItemC0595b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.f1485E;
            if (colorStateList == null) {
                return;
            }
            if (z2) {
                ((AbstractMenuItemC0595b) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setIconTintList(colorStateList);
            }
        }

        /* renamed from: a */
        public final void m9674a() {
            this.f1490d = 0;
            this.f1491e = 0;
            this.f1492f = 0;
            this.f1493g = 0;
            this.f1494h = true;
            this.f1495i = true;
        }

        /* renamed from: a */
        public final void m9673a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0350g.this.f1476e.obtainStyledAttributes(attributeSet, C0247a.C0257j.f821bB);
            this.f1490d = obtainStyledAttributes.getResourceId(C0247a.C0257j.f823bD, 0);
            this.f1491e = obtainStyledAttributes.getInt(C0247a.C0257j.f825bF, 0);
            this.f1492f = obtainStyledAttributes.getInt(C0247a.C0257j.f826bG, 0);
            this.f1493g = obtainStyledAttributes.getInt(C0247a.C0257j.f827bH, 0);
            this.f1494h = obtainStyledAttributes.getBoolean(C0247a.C0257j.f824bE, true);
            this.f1495i = obtainStyledAttributes.getBoolean(C0247a.C0257j.f822bC, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: b */
        public final void m9669b() {
            this.f1496j = true;
            m9672a(this.f1489c.add(this.f1490d, this.f1497k, this.f1498l, this.f1499m));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public final void m9668b(AttributeSet attributeSet) {
            C0484bm a = C0484bm.m9093a(C0350g.this.f1476e, attributeSet, C0247a.C0257j.f828bI);
            this.f1497k = a.m9082f(C0247a.C0257j.f831bL, 0);
            this.f1498l = (a.m9097a(C0247a.C0257j.f834bO, this.f1491e) & (-65536)) | (a.m9097a(C0247a.C0257j.f835bP, this.f1492f) & 65535);
            this.f1499m = a.m9089c(C0247a.C0257j.f836bQ);
            this.f1500n = a.m9089c(C0247a.C0257j.f837bR);
            this.f1501o = a.m9082f(C0247a.C0257j.f829bJ, 0);
            this.f1502p = m9671a(a.m9087d(C0247a.C0257j.f838bS));
            this.f1503q = a.m9097a(C0247a.C0257j.f845bZ, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            this.f1504r = m9671a(a.m9087d(C0247a.C0257j.f839bT));
            this.f1505s = a.m9097a(C0247a.C0257j.f902cd, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            this.f1506t = a.m9079i(C0247a.C0257j.f840bU) ? a.m9095a(C0247a.C0257j.f840bU, false) : this.f1493g;
            this.f1507u = a.m9095a(C0247a.C0257j.f832bM, false);
            this.f1508v = a.m9095a(C0247a.C0257j.f833bN, this.f1494h);
            this.f1509w = a.m9095a(C0247a.C0257j.f830bK, this.f1495i);
            this.f1510x = a.m9097a(C0247a.C0257j.f903ce, -1);
            this.f1482B = a.m9087d(C0247a.C0257j.f841bV);
            this.f1511y = a.m9082f(C0247a.C0257j.f842bW, 0);
            this.f1512z = a.m9087d(C0247a.C0257j.f844bY);
            this.f1481A = a.m9087d(C0247a.C0257j.f843bX);
            boolean z = this.f1481A != null;
            if (z && this.f1511y == 0 && this.f1512z == null) {
                this.f1487a = (AbstractC0720b) m9670a(this.f1481A, C0350g.f1473b, C0350g.this.f1475d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f1487a = null;
            }
            this.f1483C = a.m9089c(C0247a.C0257j.f899ca);
            this.f1484D = a.m9089c(C0247a.C0257j.f904cf);
            if (a.m9079i(C0247a.C0257j.f901cc)) {
                this.f1486F = C0437ah.m9172a(a.m9097a(C0247a.C0257j.f901cc, -1), this.f1486F);
            } else {
                this.f1486F = null;
            }
            if (a.m9079i(C0247a.C0257j.f900cb)) {
                this.f1485E = a.m9083f(C0247a.C0257j.f900cb);
            } else {
                this.f1485E = null;
            }
            a.m9100a();
            this.f1496j = false;
        }

        /* renamed from: c */
        public final SubMenu m9667c() {
            this.f1496j = true;
            SubMenu addSubMenu = this.f1489c.addSubMenu(this.f1490d, this.f1497k, this.f1498l, this.f1499m);
            m9672a(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: d */
        public final boolean m9666d() {
            return this.f1496j;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f1472a = clsArr;
        f1473b = clsArr;
    }

    public C0350g(Context context) {
        super(context);
        this.f1476e = context;
        this.f1474c = new Object[]{context};
        this.f1475d = this.f1474c;
    }

    /* renamed from: a */
    private void m9675a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int next;
        C0352b bVar = new C0352b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                next = xmlPullParser.next();
                eventType = next;
                if (next == 1) {
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    next = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(String.valueOf(name)));
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (next != 1) {
                if (next == 2) {
                    z2 = z2;
                    str = str;
                    z = z;
                    if (!z2) {
                        str = xmlPullParser.getName();
                        if (str.equals("group")) {
                            bVar.m9673a(attributeSet);
                            z2 = z2;
                            str = str;
                            z = z;
                        } else if (str.equals("item")) {
                            bVar.m9668b(attributeSet);
                            z2 = z2;
                            str = str;
                            z = z;
                        } else if (str.equals("menu")) {
                            m9675a(xmlPullParser, attributeSet, bVar.m9667c());
                            z2 = z2;
                            str = str;
                            z = z;
                        } else {
                            z2 = true;
                            z = z;
                        }
                    }
                } else if (next != 3) {
                    z2 = z2;
                    str = str;
                    z = z;
                } else {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                        z = z;
                    } else if (name2.equals("group")) {
                        bVar.m9674a();
                        z2 = z2;
                        str = str;
                        z = z;
                    } else if (name2.equals("item")) {
                        z2 = z2;
                        str = str;
                        z = z;
                        if (!bVar.m9666d()) {
                            if (bVar.f1487a == null || !bVar.f1487a.mo8421c()) {
                                bVar.m9669b();
                                z2 = z2;
                                str = str;
                                z = z;
                            } else {
                                bVar.m9667c();
                                z2 = z2;
                                str = str;
                                z = z;
                            }
                        }
                    } else {
                        z2 = z2;
                        str = str;
                        z = z;
                        if (name2.equals("menu")) {
                            z = true;
                            z2 = z2;
                            str = str;
                        }
                    }
                }
                next = xmlPullParser.next();
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    /* renamed from: a */
    final Object m9676a() {
        if (this.f1477f == null) {
            Context context = this.f1476e;
            while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                context = ((ContextWrapper) context).getBaseContext();
            }
            this.f1477f = context;
        }
        return this.f1477f;
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC0594a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f1476e.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m9675a(layout, Xml.asAttributeSet(layout), menu);
                    if (layout != null) {
                        layout.close();
                    }
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (xmlResourceParser3 != null) {
                xmlResourceParser3.close();
            }
            throw th;
        }
    }
}
