package p459j.p460a.p509g0.p510a;

import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/network/strategy/NetworkClassStrategy;", "Lgogolook/callgogolook2/network/strategy/IRetryStrategy;", "()V", "prevNetworkType", "", "prevState", "retryType", "getRetryType", "()I", NovaHomeBadger.TAG, "", "getTag", "()Ljava/lang/String;", "getNetworkClass", "networkType", "shouldRetry", "", "hasNetwork", IapProductRealmObject.STATE, "millis", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.g0.a.c */
/* loaded from: classes3-dex2jar.jar:j/a/g0/a/c.class */
public final class C12389c implements AbstractC12385a {

    /* renamed from: a */
    public int f27960a = -1;

    /* renamed from: b */
    public int f27961b = -1;

    /* renamed from: j.a.g0.a.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/g0/a/c$a.class */
    public static final class C12390a {
        public C12390a() {
        }

        public /* synthetic */ C12390a(C15145g gVar) {
            this();
        }
    }

    static {
        new C12390a(null);
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public int mo6255a() {
        return 2;
    }

    /* renamed from: a */
    public final int m6254a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 1;
            case 3:
            case 5:
            case 6:
            case 12:
            case 14:
            case 17:
                return 2;
            case 8:
            case 9:
            case 10:
                return 3;
            case 13:
            case 18:
            case 19:
                return 5;
            case 15:
                return 4;
            default:
                return 0;
        }
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public boolean mo6253a(int i, int i2) {
        boolean z = (this.f27960a >= 0 || this.f27961b >= 0) && i == 2 && m6254a(i2) > m6254a(this.f27961b);
        this.f27960a = i;
        this.f27961b = i2;
        return z;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public boolean mo6252a(long j) {
        return false;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    /* renamed from: a */
    public boolean mo6251a(boolean z) {
        return false;
    }

    @Override // p459j.p460a.p509g0.p510a.AbstractC12385a
    public String getTag() {
        return "NetworkClass";
    }
}
