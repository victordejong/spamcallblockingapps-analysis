package p012b.p016b.p024p;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.google.common.collect.RegularImmutableMap;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p024p.p025j.MenuItemC0653j;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0716p;
import p012b.p042i.p048k.p049a.AbstractMenuC0913a;
import p012b.p042i.p054p.AbstractC0952b;
import p012b.p042i.p054p.C0989h;
/* renamed from: b.b.p.g */
/* loaded from: classes-dex2jar.jar:b/b/p/g.class */
public class C0629g extends MenuInflater {

    /* renamed from: e */
    public static final Class<?>[] f3093e;

    /* renamed from: f */
    public static final Class<?>[] f3094f;

    /* renamed from: a */
    public final Object[] f3095a;

    /* renamed from: b */
    public final Object[] f3096b;

    /* renamed from: c */
    public Context f3097c;

    /* renamed from: d */
    public Object f3098d;

    /* renamed from: b.b.p.g$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/g$a.class */
    public static class MenuItem$OnMenuItemClickListenerC0630a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c */
        public static final Class<?>[] f3099c = {MenuItem.class};

        /* renamed from: a */
        public Object f3100a;

        /* renamed from: b */
        public Method f3101b;

        public MenuItem$OnMenuItemClickListenerC0630a(Object obj, String str) {
            this.f3100a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f3101b = cls.getMethod(str, f3099c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f3101b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f3101b.invoke(this.f3100a, menuItem)).booleanValue();
                }
                this.f3101b.invoke(this.f3100a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: b.b.p.g$b */
    /* loaded from: classes-dex2jar.jar:b/b/p/g$b.class */
    public class C0631b {

        /* renamed from: A */
        public AbstractC0952b f3102A;

        /* renamed from: B */
        public CharSequence f3103B;

        /* renamed from: C */
        public CharSequence f3104C;

        /* renamed from: D */
        public ColorStateList f3105D = null;

        /* renamed from: E */
        public PorterDuff.Mode f3106E = null;

        /* renamed from: a */
        public Menu f3108a;

        /* renamed from: b */
        public int f3109b;

        /* renamed from: c */
        public int f3110c;

        /* renamed from: d */
        public int f3111d;

        /* renamed from: e */
        public int f3112e;

        /* renamed from: f */
        public boolean f3113f;

        /* renamed from: g */
        public boolean f3114g;

        /* renamed from: h */
        public boolean f3115h;

        /* renamed from: i */
        public int f3116i;

        /* renamed from: j */
        public int f3117j;

        /* renamed from: k */
        public CharSequence f3118k;

        /* renamed from: l */
        public CharSequence f3119l;

        /* renamed from: m */
        public int f3120m;

        /* renamed from: n */
        public char f3121n;

        /* renamed from: o */
        public int f3122o;

        /* renamed from: p */
        public char f3123p;

        /* renamed from: q */
        public int f3124q;

        /* renamed from: r */
        public int f3125r;

        /* renamed from: s */
        public boolean f3126s;

        /* renamed from: t */
        public boolean f3127t;

        /* renamed from: u */
        public boolean f3128u;

        /* renamed from: v */
        public int f3129v;

        /* renamed from: w */
        public int f3130w;

        /* renamed from: x */
        public String f3131x;

        /* renamed from: y */
        public String f3132y;

        /* renamed from: z */
        public String f3133z;

        public C0631b(Menu menu) {
            this.f3108a = menu;
            m36664d();
        }

        /* renamed from: a */
        public final char m36669a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: a */
        public final <T> T m36668a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C0629g.this.f3097c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: a */
        public void m36672a() {
            this.f3115h = true;
            m36670a(this.f3108a.add(this.f3109b, this.f3116i, this.f3117j, this.f3118k));
        }

        /* renamed from: a */
        public void m36671a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C0629g.this.f3097c.obtainStyledAttributes(attributeSet, C0583j.MenuGroup);
            this.f3109b = obtainStyledAttributes.getResourceId(C0583j.MenuGroup_android_id, 0);
            this.f3110c = obtainStyledAttributes.getInt(C0583j.MenuGroup_android_menuCategory, 0);
            this.f3111d = obtainStyledAttributes.getInt(C0583j.MenuGroup_android_orderInCategory, 0);
            this.f3112e = obtainStyledAttributes.getInt(C0583j.MenuGroup_android_checkableBehavior, 0);
            this.f3113f = obtainStyledAttributes.getBoolean(C0583j.MenuGroup_android_visible, true);
            this.f3114g = obtainStyledAttributes.getBoolean(C0583j.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final void m36670a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f3126s).setVisible(this.f3127t).setEnabled(this.f3128u).setCheckable(this.f3125r >= 1).setTitleCondensed(this.f3119l).setIcon(this.f3120m);
            int i = this.f3129v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f3133z != null) {
                if (!C0629g.this.f3097c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC0630a(C0629g.this.m36675a(), this.f3133z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f3125r >= 2) {
                if (menuItem instanceof C0651i) {
                    ((C0651i) menuItem).m36563c(true);
                } else if (menuItem instanceof MenuItemC0653j) {
                    ((MenuItemC0653j) menuItem).m36549a(true);
                }
            }
            String str = this.f3131x;
            if (str != null) {
                menuItem.setActionView((View) m36668a(str, C0629g.f3093e, C0629g.this.f3095a));
                z = true;
            }
            int i2 = this.f3130w;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC0952b bVar = this.f3102A;
            if (bVar != null) {
                C0989h.m35293a(menuItem, bVar);
            }
            C0989h.m35292a(menuItem, this.f3103B);
            C0989h.m35290b(menuItem, this.f3104C);
            C0989h.m35296a(menuItem, this.f3121n, this.f3122o);
            C0989h.m35291b(menuItem, this.f3123p, this.f3124q);
            PorterDuff.Mode mode = this.f3106E;
            if (mode != null) {
                C0989h.m35294a(menuItem, mode);
            }
            ColorStateList colorStateList = this.f3105D;
            if (colorStateList != null) {
                C0989h.m35295a(menuItem, colorStateList);
            }
        }

        /* renamed from: b */
        public SubMenu m36667b() {
            this.f3115h = true;
            SubMenu addSubMenu = this.f3108a.addSubMenu(this.f3109b, this.f3116i, this.f3117j, this.f3118k);
            m36670a(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: b */
        public void m36666b(AttributeSet attributeSet) {
            C0691f0 a = C0691f0.m36415a(C0629g.this.f3097c, attributeSet, C0583j.MenuItem);
            this.f3116i = a.m36401g(C0583j.MenuItem_android_id, 0);
            this.f3117j = (a.m36407d(C0583j.MenuItem_android_menuCategory, this.f3110c) & (-65536)) | (a.m36407d(C0583j.MenuItem_android_orderInCategory, this.f3111d) & RegularImmutableMap.SHORT_MASK);
            this.f3118k = a.m36406e(C0583j.MenuItem_android_title);
            this.f3119l = a.m36406e(C0583j.MenuItem_android_titleCondensed);
            this.f3120m = a.m36401g(C0583j.MenuItem_android_icon, 0);
            this.f3121n = m36669a(a.m36408d(C0583j.MenuItem_android_alphabeticShortcut));
            this.f3122o = a.m36407d(C0583j.MenuItem_alphabeticModifiers, 4096);
            this.f3123p = m36669a(a.m36408d(C0583j.MenuItem_android_numericShortcut));
            this.f3124q = a.m36407d(C0583j.MenuItem_numericModifiers, 4096);
            if (a.m36402g(C0583j.MenuItem_android_checkable)) {
                this.f3125r = a.m36417a(C0583j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f3125r = this.f3112e;
            }
            this.f3126s = a.m36417a(C0583j.MenuItem_android_checked, false);
            this.f3127t = a.m36417a(C0583j.MenuItem_android_visible, this.f3113f);
            this.f3128u = a.m36417a(C0583j.MenuItem_android_enabled, this.f3114g);
            this.f3129v = a.m36407d(C0583j.MenuItem_showAsAction, -1);
            this.f3133z = a.m36408d(C0583j.MenuItem_android_onClick);
            this.f3130w = a.m36401g(C0583j.MenuItem_actionLayout, 0);
            this.f3131x = a.m36408d(C0583j.MenuItem_actionViewClass);
            String d = a.m36408d(C0583j.MenuItem_actionProviderClass);
            this.f3132y = d;
            boolean z = d != null;
            if (z && this.f3130w == 0 && this.f3131x == null) {
                this.f3102A = (AbstractC0952b) m36668a(this.f3132y, C0629g.f3094f, C0629g.this.f3096b);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f3102A = null;
            }
            this.f3103B = a.m36406e(C0583j.MenuItem_contentDescription);
            this.f3104C = a.m36406e(C0583j.MenuItem_tooltipText);
            if (a.m36402g(C0583j.MenuItem_iconTintMode)) {
                this.f3106E = C0716p.m36252a(a.m36407d(C0583j.MenuItem_iconTintMode, -1), this.f3106E);
            } else {
                this.f3106E = null;
            }
            if (a.m36402g(C0583j.MenuItem_iconTint)) {
                this.f3105D = a.m36421a(C0583j.MenuItem_iconTint);
            } else {
                this.f3105D = null;
            }
            a.m36413b();
            this.f3115h = false;
        }

        /* renamed from: c */
        public boolean m36665c() {
            return this.f3115h;
        }

        /* renamed from: d */
        public void m36664d() {
            this.f3109b = 0;
            this.f3110c = 0;
            this.f3111d = 0;
            this.f3112e = 0;
            this.f3113f = true;
            this.f3114g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f3093e = clsArr;
        f3094f = clsArr;
    }

    public C0629g(Context context) {
        super(context);
        this.f3097c = context;
        Object[] objArr = {context};
        this.f3095a = objArr;
        this.f3096b = objArr;
    }

    /* renamed from: a */
    public Object m36675a() {
        if (this.f3098d == null) {
            this.f3098d = m36674a(this.f3097c);
        }
        return this.f3098d;
    }

    /* renamed from: a */
    public final Object m36674a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        Object obj2 = obj;
        if (obj instanceof ContextWrapper) {
            obj2 = m36674a(((ContextWrapper) obj).getBaseContext());
        }
        return obj2;
    }

    /* renamed from: a */
    public final void m36673a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int next;
        C0631b bVar = new C0631b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                int next2 = xmlPullParser.next();
                eventType = next2;
                if (next2 == 1) {
                    next = next2;
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    next = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (next != 1) {
                if (next != 2) {
                    if (next != 3) {
                        z = z;
                        z2 = z2;
                        str = str;
                    } else {
                        String name2 = xmlPullParser.getName();
                        if (z2 && name2.equals(str)) {
                            str = null;
                            z2 = false;
                            z = z;
                        } else if (name2.equals("group")) {
                            bVar.m36664d();
                            z = z;
                            z2 = z2;
                            str = str;
                        } else if (name2.equals("item")) {
                            z = z;
                            z2 = z2;
                            str = str;
                            if (!bVar.m36665c()) {
                                AbstractC0952b bVar2 = bVar.f3102A;
                                if (bVar2 == null || !bVar2.mo35432a()) {
                                    bVar.m36672a();
                                    z = z;
                                    z2 = z2;
                                    str = str;
                                } else {
                                    bVar.m36667b();
                                    z = z;
                                    z2 = z2;
                                    str = str;
                                }
                            }
                        } else {
                            z = z;
                            z2 = z2;
                            str = str;
                            if (name2.equals("menu")) {
                                z = true;
                                z2 = z2;
                                str = str;
                            }
                        }
                    }
                } else if (z2) {
                    z = z;
                    z2 = z2;
                    str = str;
                } else {
                    str = xmlPullParser.getName();
                    if (str.equals("group")) {
                        bVar.m36671a(attributeSet);
                        z = z;
                        z2 = z2;
                        str = str;
                    } else if (str.equals("item")) {
                        bVar.m36666b(attributeSet);
                        z = z;
                        z2 = z2;
                        str = str;
                    } else if (str.equals("menu")) {
                        m36673a(xmlPullParser, attributeSet, bVar.m36667b());
                        z = z;
                        z2 = z2;
                        str = str;
                    } else {
                        z2 = true;
                        z = z;
                    }
                }
                next = xmlPullParser.next();
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof AbstractMenuC0913a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f3097c.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m36673a(layout, Xml.asAttributeSet(layout), menu);
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
