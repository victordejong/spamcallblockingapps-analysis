package androidx.core.p034d;

import android.os.Handler;
import androidx.core.content.p033a.C0641f;
import androidx.core.p034d.C0649b;
import androidx.core.p034d.C0657g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.d.d */
/* loaded from: classes-dex2jar.jar:androidx/core/d/d.class */
public final class C0654d implements C0657g.AbstractC0658a<C0649b.C0652c> {

    /* renamed from: a */
    final /* synthetic */ C0641f.AbstractC0642a f2935a;

    /* renamed from: b */
    final /* synthetic */ Handler f2936b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0654d(C0641f.AbstractC0642a aVar, Handler handler) {
        this.f2935a = aVar;
        this.f2936b = handler;
    }

    @Override // androidx.core.p034d.C0657g.AbstractC0658a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8584a(C0649b.C0652c cVar) {
        C0649b.C0652c cVar2 = cVar;
        if (cVar2 == null) {
            this.f2935a.m8639a(1, this.f2936b);
        } else if (cVar2.f2930b == 0) {
            this.f2935a.m8638a(cVar2.f2929a, this.f2936b);
        } else {
            this.f2935a.m8639a(cVar2.f2930b, this.f2936b);
        }
    }
}
