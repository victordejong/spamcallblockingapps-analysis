package androidx.activity.p002d;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: androidx.activity.d.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/d/a.class */
public final class C0036a {

    /* renamed from: a */
    private final Set<AbstractC0037b> f74a = new CopyOnWriteArraySet();

    /* renamed from: b */
    private volatile Context f75b;

    /* renamed from: a */
    public void m6982a(AbstractC0037b abstractC0037b) {
        if (this.f75b != null) {
            abstractC0037b.m6979a(this.f75b);
        }
        this.f74a.add(abstractC0037b);
    }

    /* renamed from: b */
    public void m6981b() {
        this.f75b = null;
    }

    /* renamed from: c */
    public void m6980c(Context context) {
        this.f75b = context;
        for (AbstractC0037b abstractC0037b : this.f74a) {
            abstractC0037b.m6979a(context);
        }
    }
}
