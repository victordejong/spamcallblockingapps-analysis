package p193e.p194a.p372b0.p373a.p378c;

import android.graphics.Rect;
import com.truecaller.common.p156ui.groupavatar.GroupAvatarXView;
import p193e.p194a.p1406z3.C21853e;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b0.a.c.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/h.class */
public final class C8269h extends m implements l<Throwable, s> {

    /* renamed from: b */
    public final /* synthetic */ C8270i f25503b;

    /* renamed from: c */
    public final /* synthetic */ GroupAvatarXView f25504c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8269h(C8270i c8270i, GroupAvatarXView groupAvatarXView, String str, Rect rect) {
        super(1);
        this.f25503b = c8270i;
        this.f25504c = groupAvatarXView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [e.f.a.r.k.k, e.a.b0.a.c.i] */
    /* renamed from: d */
    public Object m28707d(Object obj) {
        C21853e glideApp;
        Throwable th = (Throwable) obj;
        glideApp = this.f25504c.getGlideApp();
        glideApp.m8411n(this.f25503b);
        return s.a;
    }
}
