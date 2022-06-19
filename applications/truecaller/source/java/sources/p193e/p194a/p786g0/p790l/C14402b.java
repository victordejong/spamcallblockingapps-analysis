package p193e.p194a.p786g0.p790l;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.suspension.data.UnSuspendAccountErrorResponseDto;
import com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto;
import com.truecaller.suspension.data.UnsuspendAccountRequestDto;
import e.m.e.k;
import java.io.Reader;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1313v3.AbstractC21011b;
import p193e.p194a.p1313v3.p1314c.C21015c;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p786g0.p790l.AbstractC14400a;
import s1.i;
import s1.z.c.l;
import u3.l0;
import x3.a0;
import x3.b;
/* renamed from: e.a.g0.l.b */
/* loaded from: classes14-dex2jar.jar:e/a/g0/l/b.class */
public final class C14402b implements AbstractC14400a {

    /* renamed from: a */
    public final k f41540a = new k();

    /* renamed from: b */
    public final AbstractC19230g f41541b;

    /* renamed from: c */
    public final AbstractC21011b f41542c;

    /* renamed from: d */
    public final String f41543d;

    @Inject
    public C14402b(AbstractC19230g abstractC19230g, AbstractC21011b abstractC21011b, @Named("pu+frs") String str) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC21011b, "appInfoProvider");
        l.e(str, "feedbackSubject");
        this.f41541b = abstractC19230g;
        this.f41542c = abstractC21011b;
        this.f41543d = str;
    }

    /* renamed from: a */
    public AbstractC14400a.C14401a m20145a(String str, String str2, String str3) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, AnalyticsConstants.EMAIL);
        a0 execute = C21015c.m10416a(str, str2, this.f41543d, "", "", null, this.f41541b.mo13790g(), this.f41542c, str3).execute();
        l.d(execute, "response");
        return new AbstractC14400a.C14401a(execute.b(), Integer.valueOf(execute.a.e));
    }

    /* renamed from: b */
    public AbstractC14404d m20144b(String str, AbstractC12603e abstractC12603e, String str2) {
        b<UnSuspendAccountSuccessResponseDto> bVar;
        UnSuspendAccountErrorResponseDto unSuspendAccountErrorResponseDto;
        Reader j;
        l.e(str, AnalyticsConstants.TOKEN);
        l.e(abstractC12603e, "engine");
        if (l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            l.e(str, AnalyticsConstants.TOKEN);
            C8365b c8365b = new C8365b();
            C8385b m8568t1 = C22128a.m8568t1(c8365b, KnownEndpoints.ACCOUNT, AbstractC14403c.class);
            m8568t1.m28628b(AuthRequirement.REQUIRED, str2);
            m8568t1.m28626d(true);
            c8365b.m28636d(C8363a.m28642a(m8568t1));
            bVar = ((AbstractC14403c) c8365b.m28637c(AbstractC14403c.class)).m20143a(new UnsuspendAccountRequestDto(str, false, 2, null));
        } else if (!l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            throw new i();
        } else {
            boolean mo13788i = this.f41541b.mo13788i();
            l.e(str, AnalyticsConstants.TOKEN);
            C8365b c8365b2 = new C8365b();
            C8385b m8568t12 = C22128a.m8568t1(c8365b2, KnownEndpoints.ACCOUNT, AbstractC14403c.class);
            m8568t12.m28628b(AuthRequirement.REQUIRED, str2);
            m8568t12.m28626d(true);
            c8365b2.m28636d(C8363a.m28642a(m8568t12));
            bVar = ((AbstractC14403c) c8365b2.m28637c(AbstractC14403c.class)).m20142b(new UnsuspendAccountRequestDto(str, mo13788i));
        }
        a0 execute = bVar.execute();
        l.d(execute, "response");
        if (execute.b()) {
            unSuspendAccountErrorResponseDto = (AbstractC14404d) execute.b;
        } else {
            l0 l0Var = execute.c;
            unSuspendAccountErrorResponseDto = null;
            if (l0Var != null) {
                try {
                    unSuspendAccountErrorResponseDto = (UnSuspendAccountErrorResponseDto) this.f41540a.d(l0Var.j(), UnSuspendAccountErrorResponseDto.class);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
        }
        return unSuspendAccountErrorResponseDto;
    }
}
