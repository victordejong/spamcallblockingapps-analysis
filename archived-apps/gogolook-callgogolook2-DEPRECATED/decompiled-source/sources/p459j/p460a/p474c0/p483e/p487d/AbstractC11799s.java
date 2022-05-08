package p459j.p460a.p474c0.p483e.p487d;

import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018��2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ScanResultViewData;", "Lgogolook/callgogolook2/adapter/ViewData;", "viewType", "", "viewShapeType", "Lgogolook/callgogolook2/messaging/scan/ui/ScanResultViewData$ViewShapeType;", "(ILgogolook/callgogolook2/messaging/scan/ui/ScanResultViewData$ViewShapeType;)V", "getViewShapeType", "()Lgogolook/callgogolook2/messaging/scan/ui/ScanResultViewData$ViewShapeType;", "getViewType", "()I", "ViewShapeType", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.s */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/s.class */
public abstract class AbstractC11799s implements AbstractC12391a {

    /* renamed from: a */
    public final int f26453a;

    /* renamed from: b */
    public final EnumC11800a f26454b;

    /* renamed from: j.a.c0.e.d.s$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/s$a.class */
    public enum EnumC11800a {
        SINGLE,
        MULTI_TOP,
        MULTI_MIDDLE,
        MULTI_BOTTOM
    }

    public AbstractC11799s(int i, EnumC11800a aVar) {
        C15149k.m377b(aVar, "viewShapeType");
        this.f26453a = i;
        this.f26454b = aVar;
    }

    /* renamed from: a */
    public final EnumC11800a m8291a() {
        return this.f26454b;
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f26453a;
    }
}
