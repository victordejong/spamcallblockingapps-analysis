package p131c.p161d.p170b.p224d.p238d.p243d;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.internal.zad;
/* renamed from: c.d.b.d.d.d.b */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/d/b.class */
public final class C3294b extends zad {

    /* renamed from: a */
    public final /* synthetic */ Intent f12008a;

    /* renamed from: b */
    public final /* synthetic */ Activity f12009b;

    /* renamed from: c */
    public final /* synthetic */ int f12010c;

    public C3294b(Intent intent, Activity activity, int i) {
        this.f12008a = intent;
        this.f12009b = activity;
        this.f12010c = i;
    }

    @Override // com.google.android.gms.common.internal.zad
    /* renamed from: a */
    public final void mo17196a() {
        Intent intent = this.f12008a;
        if (intent != null) {
            this.f12009b.startActivityForResult(intent, this.f12010c);
        }
    }
}
