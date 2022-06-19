package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0080m;
import androidx.appcompat.view.menu.AbstractC0082n;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.g;
import f.a.a;
import f.a.i;
import f.a.j;
import f.a.o.d;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$s.class */
protected final class f$s {

    /* renamed from: a */
    int f220a;

    /* renamed from: b */
    int f221b;

    /* renamed from: c */
    int f222c;

    /* renamed from: d */
    int f223d;

    /* renamed from: e */
    int f224e;

    /* renamed from: f */
    int f225f;

    /* renamed from: g */
    ViewGroup f226g;

    /* renamed from: h */
    View f227h;

    /* renamed from: i */
    View f228i;

    /* renamed from: j */
    g f229j;

    /* renamed from: k */
    e f230k;

    /* renamed from: l */
    Context f231l;

    /* renamed from: m */
    boolean f232m;

    /* renamed from: n */
    boolean f233n;

    /* renamed from: o */
    boolean f234o;

    /* renamed from: p */
    public boolean f235p;

    /* renamed from: q */
    boolean f236q = false;

    /* renamed from: r */
    boolean f237r;

    /* renamed from: s */
    Bundle f238s;

    f$s(int i) {
        this.f220a = i;
    }

    /* renamed from: a */
    AbstractC0082n m6829a(AbstractC0080m.AbstractC0081a abstractC0081a) {
        if (this.f229j == null) {
            return null;
        }
        if (this.f230k == null) {
            e eVar = new e(this.f231l, f.a.g.j);
            this.f230k = eVar;
            eVar.h(abstractC0081a);
            this.f229j.b(this.f230k);
        }
        return this.f230k.b(this.f226g);
    }

    /* renamed from: b */
    public boolean m6828b() {
        boolean z = false;
        if (this.f227h == null) {
            return false;
        }
        if (this.f228i != null) {
            return true;
        }
        if (this.f230k.a().getCount() > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    void m6827c(g gVar) {
        e eVar;
        g gVar2 = this.f229j;
        if (gVar == gVar2) {
            return;
        }
        if (gVar2 != null) {
            gVar2.O(this.f230k);
        }
        this.f229j = gVar;
        if (gVar == null || (eVar = this.f230k) == null) {
            return;
        }
        gVar.b(eVar);
    }

    /* renamed from: d */
    void m6826d(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme newTheme = context.getResources().newTheme();
        newTheme.setTo(context.getTheme());
        newTheme.resolveAttribute(a.a, typedValue, true);
        int i = typedValue.resourceId;
        if (i != 0) {
            newTheme.applyStyle(i, true);
        }
        newTheme.resolveAttribute(a.E, typedValue, true);
        int i2 = typedValue.resourceId;
        if (i2 != 0) {
            newTheme.applyStyle(i2, true);
        } else {
            newTheme.applyStyle(i.c, true);
        }
        d dVar = new d(context, 0);
        dVar.getTheme().setTo(newTheme);
        this.f231l = dVar;
        TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(j.u0);
        this.f221b = obtainStyledAttributes.getResourceId(j.x0, 0);
        this.f225f = obtainStyledAttributes.getResourceId(j.w0, 0);
        obtainStyledAttributes.recycle();
    }
}
