package p012b.p063m.p064a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
/* renamed from: b.m.a.g */
/* loaded from: classes-dex2jar.jar:b/m/a/g.class */
public abstract class AbstractC1059g {

    /* renamed from: b */
    public static final C1057e f4440b = new C1057e();

    /* renamed from: a */
    public C1057e f4441a = null;

    /* renamed from: b.m.a.g$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/g$a.class */
    public static abstract class AbstractC1060a {
        /* renamed from: a */
        public abstract void m34902a(AbstractC1059g gVar, Fragment fragment);

        /* renamed from: a */
        public abstract void m34901a(AbstractC1059g gVar, Fragment fragment, Context context);

        /* renamed from: a */
        public abstract void m34900a(AbstractC1059g gVar, Fragment fragment, Bundle bundle);

        /* renamed from: a */
        public abstract void m34899a(AbstractC1059g gVar, Fragment fragment, View view, Bundle bundle);

        /* renamed from: b */
        public abstract void m34898b(AbstractC1059g gVar, Fragment fragment);

        /* renamed from: b */
        public abstract void m34897b(AbstractC1059g gVar, Fragment fragment, Context context);

        /* renamed from: b */
        public abstract void m34896b(AbstractC1059g gVar, Fragment fragment, Bundle bundle);

        /* renamed from: c */
        public abstract void m34895c(AbstractC1059g gVar, Fragment fragment);

        /* renamed from: c */
        public abstract void m34894c(AbstractC1059g gVar, Fragment fragment, Bundle bundle);

        /* renamed from: d */
        public abstract void m34893d(AbstractC1059g gVar, Fragment fragment);

        /* renamed from: d */
        public abstract void m34892d(AbstractC1059g gVar, Fragment fragment, Bundle bundle);

        /* renamed from: e */
        public abstract void m34891e(AbstractC1059g gVar, Fragment fragment);

        /* renamed from: f */
        public abstract void m34890f(AbstractC1059g gVar, Fragment fragment);

        /* renamed from: g */
        public abstract void m34889g(AbstractC1059g gVar, Fragment fragment);
    }

    /* renamed from: b.m.a.g$b */
    /* loaded from: classes-dex2jar.jar:b/m/a/g$b.class */
    public interface AbstractC1061b {
        /* renamed from: a */
        void m34888a();
    }

    /* renamed from: a */
    public abstract Fragment mo34849a(String str);

    /* renamed from: a */
    public abstract AbstractC1079j mo34878a();

    /* renamed from: a */
    public abstract void mo34874a(int i, int i2);

    /* renamed from: a */
    public void m34903a(C1057e eVar) {
        this.f4441a = eVar;
    }

    /* renamed from: a */
    public abstract void mo34847a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    public abstract boolean mo34841b();

    /* renamed from: c */
    public C1057e mo34825c() {
        if (this.f4441a == null) {
            this.f4441a = f4440b;
        }
        return this.f4441a;
    }

    /* renamed from: d */
    public abstract List<Fragment> mo34818d();

    /* renamed from: e */
    public abstract boolean mo34813e();

    /* renamed from: f */
    public abstract boolean mo34809f();
}
