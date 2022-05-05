package androidx.core.p034d;

import android.content.Context;
import androidx.core.p034d.C0649b;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.d.c */
/* loaded from: classes-dex2jar.jar:androidx/core/d/c.class */
public final class CallableC0653c implements Callable<C0649b.C0652c> {

    /* renamed from: a */
    final /* synthetic */ Context f2931a;

    /* renamed from: b */
    final /* synthetic */ C0648a f2932b;

    /* renamed from: c */
    final /* synthetic */ int f2933c;

    /* renamed from: d */
    final /* synthetic */ String f2934d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC0653c(Context context, C0648a aVar, int i, String str) {
        this.f2931a = context;
        this.f2932b = aVar;
        this.f2933c = i;
        this.f2934d = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ C0649b.C0652c call() {
        C0649b.C0652c a = C0649b.m8602a(this.f2931a, this.f2932b, this.f2933c);
        if (a.f2929a != null) {
            C0649b.f2917a.put(this.f2934d, a.f2929a);
        }
        return a;
    }
}
