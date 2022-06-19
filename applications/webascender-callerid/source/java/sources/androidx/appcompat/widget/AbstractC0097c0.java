package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.AbstractC0080m;
import androidx.appcompat.view.menu.g$a;
import f.h.l.x;
/* renamed from: androidx.appcompat.widget.c0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c0.class */
public interface AbstractC0097c0 {
    /* renamed from: a */
    void m6636a(Menu menu, AbstractC0080m.AbstractC0081a abstractC0081a);

    /* renamed from: b */
    boolean m6635b();

    /* renamed from: c */
    void m6634c();

    void collapseActionView();

    /* renamed from: d */
    boolean m6633d();

    /* renamed from: e */
    boolean m6632e();

    /* renamed from: f */
    boolean m6631f();

    /* renamed from: g */
    boolean m6630g();

    Context getContext();

    CharSequence getTitle();

    /* renamed from: h */
    void m6629h();

    /* renamed from: i */
    void m6628i(C0121o0 c0121o0);

    /* renamed from: j */
    boolean m6627j();

    /* renamed from: k */
    void m6626k(int i);

    /* renamed from: l */
    Menu m6625l();

    /* renamed from: m */
    void m6624m(int i);

    /* renamed from: n */
    int m6623n();

    /* renamed from: o */
    x m6622o(int i, long j);

    /* renamed from: p */
    void m6621p(AbstractC0080m.AbstractC0081a abstractC0081a, g$a g_a);

    /* renamed from: q */
    void m6620q(int i);

    /* renamed from: r */
    ViewGroup m6619r();

    /* renamed from: s */
    void m6618s(boolean z);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    /* renamed from: t */
    int m6617t();

    /* renamed from: u */
    void m6616u();

    /* renamed from: v */
    void m6615v();

    /* renamed from: w */
    void m6614w(boolean z);
}
