package androidx.appcompat.view;

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
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.C2445Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/SupportMenuInflater.class */
public class SupportMenuInflater extends MenuInflater {

    /* renamed from: e */
    static final Class<?>[] f461e;

    /* renamed from: f */
    static final Class<?>[] f462f;

    /* renamed from: a */
    final Object[] f463a;

    /* renamed from: b */
    final Object[] f464b;

    /* renamed from: c */
    Context f465c;

    /* renamed from: d */
    private Object f466d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener.class */
    public static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {

        /* renamed from: h */
        private static final Class<?>[] f467h = {MenuItem.class};

        /* renamed from: f */
        private Object f468f;

        /* renamed from: g */
        private Method f469g;

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.f468f = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f469g = cls.getMethod(str, f467h);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f469g.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f469g.invoke(this.f468f, menuItem)).booleanValue();
                }
                this.f469g.invoke(this.f468f, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/SupportMenuInflater$MenuState.class */
    public class MenuState {

        /* renamed from: A */
        ActionProvider f470A;

        /* renamed from: B */
        private CharSequence f471B;

        /* renamed from: C */
        private CharSequence f472C;

        /* renamed from: D */
        private ColorStateList f473D = null;

        /* renamed from: E */
        private PorterDuff.Mode f474E = null;

        /* renamed from: a */
        private Menu f476a;

        /* renamed from: b */
        private int f477b;

        /* renamed from: c */
        private int f478c;

        /* renamed from: d */
        private int f479d;

        /* renamed from: e */
        private int f480e;

        /* renamed from: f */
        private boolean f481f;

        /* renamed from: g */
        private boolean f482g;

        /* renamed from: h */
        private boolean f483h;

        /* renamed from: i */
        private int f484i;

        /* renamed from: j */
        private int f485j;

        /* renamed from: k */
        private CharSequence f486k;

        /* renamed from: l */
        private CharSequence f487l;

        /* renamed from: m */
        private int f488m;

        /* renamed from: n */
        private char f489n;

        /* renamed from: o */
        private int f490o;

        /* renamed from: p */
        private char f491p;

        /* renamed from: q */
        private int f492q;

        /* renamed from: r */
        private int f493r;

        /* renamed from: s */
        private boolean f494s;

        /* renamed from: t */
        private boolean f495t;

        /* renamed from: u */
        private boolean f496u;

        /* renamed from: v */
        private int f497v;

        /* renamed from: w */
        private int f498w;

        /* renamed from: x */
        private String f499x;

        /* renamed from: y */
        private String f500y;

        /* renamed from: z */
        private String f501z;

        public MenuState(Menu menu) {
            this.f476a = menu;
            m21946h();
        }

        /* renamed from: c */
        private char m21951c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: e */
        private <T> T m21949e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.f465c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: i */
        private void m21945i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f494s).setVisible(this.f495t).setEnabled(this.f496u).setCheckable(this.f493r >= 1).setTitleCondensed(this.f487l).setIcon(this.f488m);
            int i = this.f497v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f501z != null) {
                if (!SupportMenuInflater.this.f465c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(SupportMenuInflater.this.m21955b(), this.f501z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f493r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).m21825t(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).m21818h(true);
                }
            }
            String str = this.f499x;
            if (str != null) {
                menuItem.setActionView((View) m21949e(str, SupportMenuInflater.f461e, SupportMenuInflater.this.f463a));
                z = true;
            }
            int i2 = this.f498w;
            if (i2 > 0) {
                if (!z) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            ActionProvider actionProvider = this.f470A;
            if (actionProvider != null) {
                MenuItemCompat.m19289b(menuItem, actionProvider);
            }
            MenuItemCompat.m19287d(menuItem, this.f471B);
            MenuItemCompat.m19282i(menuItem, this.f472C);
            MenuItemCompat.m19288c(menuItem, this.f489n, this.f490o);
            MenuItemCompat.m19284g(menuItem, this.f491p, this.f492q);
            PorterDuff.Mode mode = this.f474E;
            if (mode != null) {
                MenuItemCompat.m19285f(menuItem, mode);
            }
            ColorStateList colorStateList = this.f473D;
            if (colorStateList != null) {
                MenuItemCompat.m19286e(menuItem, colorStateList);
            }
        }

        /* renamed from: a */
        public void m21953a() {
            this.f483h = true;
            m21945i(this.f476a.add(this.f477b, this.f484i, this.f485j, this.f486k));
        }

        /* renamed from: b */
        public SubMenu m21952b() {
            this.f483h = true;
            SubMenu addSubMenu = this.f476a.addSubMenu(this.f477b, this.f484i, this.f485j, this.f486k);
            m21945i(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: d */
        public boolean m21950d() {
            return this.f483h;
        }

        /* renamed from: f */
        public void m21948f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = SupportMenuInflater.this.f465c.obtainStyledAttributes(attributeSet, C0042R.styleable.MenuGroup);
            this.f477b = obtainStyledAttributes.getResourceId(C0042R.styleable.MenuGroup_android_id, 0);
            this.f478c = obtainStyledAttributes.getInt(C0042R.styleable.MenuGroup_android_menuCategory, 0);
            this.f479d = obtainStyledAttributes.getInt(C0042R.styleable.MenuGroup_android_orderInCategory, 0);
            this.f480e = obtainStyledAttributes.getInt(C0042R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f481f = obtainStyledAttributes.getBoolean(C0042R.styleable.MenuGroup_android_visible, true);
            this.f482g = obtainStyledAttributes.getBoolean(C0042R.styleable.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: g */
        public void m21947g(AttributeSet attributeSet) {
            TintTypedArray u = TintTypedArray.m21245u(SupportMenuInflater.this.f465c, attributeSet, C0042R.styleable.MenuItem);
            this.f484i = u.m21252n(C0042R.styleable.MenuItem_android_id, 0);
            this.f485j = (u.m21255k(C0042R.styleable.MenuItem_android_menuCategory, this.f478c) & (-65536)) | (u.m21255k(C0042R.styleable.MenuItem_android_orderInCategory, this.f479d) & C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            this.f486k = u.m21250p(C0042R.styleable.MenuItem_android_title);
            this.f487l = u.m21250p(C0042R.styleable.MenuItem_android_titleCondensed);
            this.f488m = u.m21252n(C0042R.styleable.MenuItem_android_icon, 0);
            this.f489n = m21951c(u.m21251o(C0042R.styleable.MenuItem_android_alphabeticShortcut));
            this.f490o = u.m21255k(C0042R.styleable.MenuItem_alphabeticModifiers, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            this.f491p = m21951c(u.m21251o(C0042R.styleable.MenuItem_android_numericShortcut));
            this.f492q = u.m21255k(C0042R.styleable.MenuItem_numericModifiers, CodedOutputStream.DEFAULT_BUFFER_SIZE);
            if (u.m21247s(C0042R.styleable.MenuItem_android_checkable)) {
                this.f493r = u.m21265a(C0042R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f493r = this.f480e;
            }
            this.f494s = u.m21265a(C0042R.styleable.MenuItem_android_checked, false);
            this.f495t = u.m21265a(C0042R.styleable.MenuItem_android_visible, this.f481f);
            this.f496u = u.m21265a(C0042R.styleable.MenuItem_android_enabled, this.f482g);
            this.f497v = u.m21255k(C0042R.styleable.MenuItem_showAsAction, -1);
            this.f501z = u.m21251o(C0042R.styleable.MenuItem_android_onClick);
            this.f498w = u.m21252n(C0042R.styleable.MenuItem_actionLayout, 0);
            this.f499x = u.m21251o(C0042R.styleable.MenuItem_actionViewClass);
            String o = u.m21251o(C0042R.styleable.MenuItem_actionProviderClass);
            this.f500y = o;
            boolean z = o != null;
            if (z && this.f498w == 0 && this.f499x == null) {
                this.f470A = (ActionProvider) m21949e(this.f500y, SupportMenuInflater.f462f, SupportMenuInflater.this.f464b);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f470A = null;
            }
            this.f471B = u.m21250p(C0042R.styleable.MenuItem_contentDescription);
            this.f472C = u.m21250p(C0042R.styleable.MenuItem_tooltipText);
            if (u.m21247s(C0042R.styleable.MenuItem_iconTintMode)) {
                this.f474E = DrawableUtils.m21501e(u.m21255k(C0042R.styleable.MenuItem_iconTintMode, -1), this.f474E);
            } else {
                this.f474E = null;
            }
            if (u.m21247s(C0042R.styleable.MenuItem_iconTint)) {
                this.f473D = u.m21263c(C0042R.styleable.MenuItem_iconTint);
            } else {
                this.f473D = null;
            }
            u.m21243w();
            this.f483h = false;
        }

        /* renamed from: h */
        public void m21946h() {
            this.f477b = 0;
            this.f478c = 0;
            this.f479d = 0;
            this.f480e = 0;
            this.f481f = true;
            this.f482g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f461e = clsArr;
        f462f = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.f465c = context;
        Object[] objArr = {context};
        this.f463a = objArr;
        this.f464b = objArr;
    }

    /* renamed from: a */
    private Object m21956a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        Object obj2 = obj;
        if (obj instanceof ContextWrapper) {
            obj2 = m21956a(((ContextWrapper) obj).getBaseContext());
        }
        return obj2;
    }

    /* renamed from: c */
    private void m21954c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int next;
        MenuState menuState = new MenuState(menu);
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
                            menuState.m21946h();
                            z = z;
                            z2 = z2;
                            str = str;
                        } else if (name2.equals("item")) {
                            z = z;
                            z2 = z2;
                            str = str;
                            if (!menuState.m21950d()) {
                                ActionProvider actionProvider = menuState.f470A;
                                if (actionProvider == null || !actionProvider.mo19329a()) {
                                    menuState.m21953a();
                                    z = z;
                                    z2 = z2;
                                    str = str;
                                } else {
                                    menuState.m21952b();
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
                        menuState.m21948f(attributeSet);
                        z = z;
                        z2 = z2;
                        str = str;
                    } else if (str.equals("item")) {
                        menuState.m21947g(attributeSet);
                        z = z;
                        z2 = z2;
                        str = str;
                    } else if (str.equals("menu")) {
                        m21954c(xmlPullParser, attributeSet, menuState.m21952b());
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

    /* renamed from: b */
    Object m21955b() {
        if (this.f466d == null) {
            this.f466d = m21956a(this.f465c);
        }
        return this.f466d;
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                try {
                    XmlResourceParser layout = this.f465c.getResources().getLayout(i);
                    xmlResourceParser3 = layout;
                    xmlResourceParser = layout;
                    xmlResourceParser2 = layout;
                    m21954c(layout, Xml.asAttributeSet(layout), menu);
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
