package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import java.util.Map;
import p012b.p042i.p046j.p047m.C0907a;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5851d;
/* renamed from: c.d.e.q.p0.j.p.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/c.class */
public abstract class AbstractC5579c {

    /* renamed from: a */
    public final AbstractC5863i f18585a;

    /* renamed from: b */
    public final C5560i f18586b;

    /* renamed from: c */
    public final LayoutInflater f18587c;

    public AbstractC5579c(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        this.f18586b = iVar;
        this.f18587c = layoutInflater;
        this.f18585a = iVar2;
    }

    /* renamed from: a */
    public static void m23479a(Button button, C5851d dVar) {
        String a = dVar.m22896b().m22830a();
        m23478a(button, dVar.m22897a());
        button.setText(dVar.m22896b().m22829b());
        button.setTextColor(Color.parseColor(a));
    }

    /* renamed from: a */
    public static void m23478a(Button button, String str) {
        try {
            Drawable h = C0907a.m35514h(button.getBackground());
            C0907a.m35520b(h, Color.parseColor(str));
            button.setBackground(h);
        } catch (IllegalArgumentException e) {
            C5562j.m23511c("Error parsing background color: " + e.toString());
        }
    }

    /* renamed from: a */
    public abstract ViewTreeObserver.OnGlobalLayoutListener mo23461a(Map<C5842a, View.OnClickListener> map, View.OnClickListener onClickListener);

    /* renamed from: a */
    public void m23481a(View view, String str) {
        if (view != null && !TextUtils.isEmpty(str)) {
            try {
                view.setBackgroundColor(Color.parseColor(str));
            } catch (IllegalArgumentException e) {
                C5562j.m23511c("Error parsing background color: " + e.toString() + " color: " + str);
            }
        }
    }

    /* renamed from: a */
    public void m23480a(Button button, View.OnClickListener onClickListener) {
        if (button != null) {
            button.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: a */
    public boolean mo23482a() {
        return false;
    }

    /* renamed from: b */
    public C5560i mo23460b() {
        return this.f18586b;
    }

    /* renamed from: c */
    public abstract View mo23459c();

    /* renamed from: d */
    public View.OnClickListener mo23471d() {
        return null;
    }

    /* renamed from: e */
    public abstract ImageView mo23458e();

    /* renamed from: f */
    public abstract ViewGroup mo23457f();
}
