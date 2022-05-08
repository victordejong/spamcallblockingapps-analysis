package com.facebook.appevents.p036r;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.p036r.p037g.C2318a;
import com.facebook.appevents.p036r.p037g.C2326f;
import com.facebook.appevents.p038s.C2334b;
import java.lang.ref.WeakReference;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.r.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/a.class */
public class C2296a {

    /* renamed from: com.facebook.appevents.r.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/a$a.class */
    public static final class RunnableC2297a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f2734a;

        /* renamed from: b */
        public final /* synthetic */ Bundle f2735b;

        public RunnableC2297a(String str, Bundle bundle) {
            this.f2734a = str;
            this.f2735b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2271g.m35329b(C6135n.m23746e()).m35331a(this.f2734a, this.f2735b);
        }
    }

    /* renamed from: com.facebook.appevents.r.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/a$b.class */
    public static class View$OnClickListenerC2298b implements View.OnClickListener {

        /* renamed from: a */
        public C2318a f2736a;

        /* renamed from: b */
        public WeakReference<View> f2737b;

        /* renamed from: c */
        public WeakReference<View> f2738c;
        @Nullable

        /* renamed from: d */
        public View.OnClickListener f2739d;

        /* renamed from: e */
        public boolean f2740e;

        public View$OnClickListenerC2298b(C2318a aVar, View view, View view2) {
            this.f2740e = false;
            if (aVar != null && view != null && view2 != null) {
                this.f2739d = C2326f.m35161f(view2);
                this.f2736a = aVar;
                this.f2737b = new WeakReference<>(view2);
                this.f2738c = new WeakReference<>(view);
                this.f2740e = true;
            }
        }

        public /* synthetic */ View$OnClickListenerC2298b(C2318a aVar, View view, View view2, RunnableC2297a aVar2) {
            this(aVar, view, view2);
        }

        /* renamed from: a */
        public boolean m35241a() {
            return this.f2740e;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.f2739d;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            if (this.f2738c.get() != null && this.f2737b.get() != null) {
                C2296a.m35242c(this.f2736a, this.f2738c.get(), this.f2737b.get());
            }
        }
    }

    /* renamed from: com.facebook.appevents.r.a$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/a$c.class */
    public static class C2299c implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public C2318a f2741a;

        /* renamed from: b */
        public WeakReference<AdapterView> f2742b;

        /* renamed from: c */
        public WeakReference<View> f2743c;
        @Nullable

        /* renamed from: d */
        public AdapterView.OnItemClickListener f2744d;

        /* renamed from: e */
        public boolean f2745e;

        public C2299c(C2318a aVar, View view, AdapterView adapterView) {
            this.f2745e = false;
            if (aVar != null && view != null && adapterView != null) {
                this.f2744d = adapterView.getOnItemClickListener();
                this.f2741a = aVar;
                this.f2742b = new WeakReference<>(adapterView);
                this.f2743c = new WeakReference<>(view);
                this.f2745e = true;
            }
        }

        public /* synthetic */ C2299c(C2318a aVar, View view, AdapterView adapterView, RunnableC2297a aVar2) {
            this(aVar, view, adapterView);
        }

        /* renamed from: a */
        public boolean m35240a() {
            return this.f2745e;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AdapterView.OnItemClickListener onItemClickListener = this.f2744d;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            if (this.f2743c.get() != null && this.f2742b.get() != null) {
                C2296a.m35242c(this.f2741a, this.f2743c.get(), this.f2742b.get());
            }
        }
    }

    /* renamed from: a */
    public static C2299c m35244a(C2318a aVar, View view, AdapterView adapterView) {
        return new C2299c(aVar, view, adapterView, null);
    }

    /* renamed from: b */
    public static View$OnClickListenerC2298b m35243b(C2318a aVar, View view, View view2) {
        return new View$OnClickListenerC2298b(aVar, view, view2, null);
    }

    /* renamed from: c */
    public static void m35242c(C2318a aVar, View view, View view2) {
        String b = aVar.m35184b();
        Bundle a = C2303c.m35221a(aVar, view, view2);
        if (a.containsKey("_valueToSum")) {
            a.putDouble("_valueToSum", C2334b.m35128a(a.getString("_valueToSum")));
        }
        a.putString("_is_fb_codeless", "1");
        C6135n.m23737n().execute(new RunnableC2297a(b, a));
    }
}
