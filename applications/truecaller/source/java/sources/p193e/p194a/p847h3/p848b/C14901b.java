package p193e.p194a.p847h3.p848b;

import android.content.ClipboardManager;
import java.util.Objects;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.h3.b.b */
/* loaded from: classes7-dex2jar.jar:e/a/h3/b/b.class */
public final class C14901b extends m implements a<ClipboardManager> {

    /* renamed from: b */
    public final /* synthetic */ C14902c f42596b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14901b(C14902c c14902c) {
        super(0);
        this.f42596b = c14902c;
    }

    public Object invoke() {
        Object systemService = this.f42596b.f42599c.getSystemService("clipboard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        return (ClipboardManager) systemService;
    }
}
