package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.C0274a;
import androidx.appcompat.view.AbstractC0343b;
import androidx.appcompat.widget.Toolbar;
import androidx.p026b.C0531c;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: androidx.appcompat.app.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/o.class */
public abstract class AbstractC0311o {

    /* renamed from: a */
    private static int f1332a = -100;

    /* renamed from: b */
    private static final C0531c<WeakReference<AbstractC0311o>> f1333b = new C0531c<>();

    /* renamed from: c */
    private static final Object f1334c = new Object();

    /* renamed from: a */
    public static AbstractC0311o m9784a(Activity activity, AbstractC0310n nVar) {
        return new AppCompatDelegateImpl(activity, nVar);
    }

    /* renamed from: a */
    public static AbstractC0311o m9783a(Dialog dialog, AbstractC0310n nVar) {
        return new AppCompatDelegateImpl(dialog, nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m9779a(AbstractC0311o oVar) {
        synchronized (f1334c) {
            m9769c(oVar);
            f1333b.add(new WeakReference<>(oVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m9772b(AbstractC0311o oVar) {
        synchronized (f1334c) {
            m9769c(oVar);
        }
    }

    /* renamed from: c */
    private static void m9769c(AbstractC0311o oVar) {
        synchronized (f1334c) {
            Iterator<WeakReference<AbstractC0311o>> it = f1333b.iterator();
            while (it.hasNext()) {
                AbstractC0311o oVar2 = it.next().get();
                if (oVar2 == oVar || oVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: o */
    public static int m9756o() {
        return f1332a;
    }

    /* renamed from: a */
    public abstract ActionBar mo9786a();

    /* renamed from: a */
    public abstract AbstractC0343b mo9778a(AbstractC0343b.AbstractC0344a aVar);

    /* renamed from: a */
    public void mo9785a(int i) {
    }

    /* renamed from: a */
    public abstract void mo9782a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo9781a(View view);

    /* renamed from: a */
    public abstract void mo9780a(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: a */
    public abstract void mo9777a(Toolbar toolbar);

    /* renamed from: a */
    public abstract void mo9776a(CharSequence charSequence);

    /* renamed from: b */
    public abstract MenuInflater mo9775b();

    /* renamed from: b */
    public abstract <T extends View> T mo9774b(int i);

    /* renamed from: b */
    public abstract void mo9773b(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: c */
    public abstract void mo9771c();

    /* renamed from: c */
    public abstract void mo9770c(int i);

    /* renamed from: d */
    public abstract void mo9768d();

    /* renamed from: d */
    public abstract boolean mo9767d(int i);

    /* renamed from: e */
    public abstract void mo9766e();

    /* renamed from: f */
    public abstract void mo9765f();

    /* renamed from: g */
    public abstract void mo9764g();

    /* renamed from: h */
    public void mo9763h() {
    }

    /* renamed from: i */
    public abstract void mo9762i();

    /* renamed from: j */
    public abstract void mo9761j();

    /* renamed from: k */
    public abstract C0274a.AbstractC0275a mo9760k();

    /* renamed from: l */
    public abstract void mo9759l();

    /* renamed from: m */
    public abstract void mo9758m();

    /* renamed from: n */
    public int mo9757n() {
        return -100;
    }
}
