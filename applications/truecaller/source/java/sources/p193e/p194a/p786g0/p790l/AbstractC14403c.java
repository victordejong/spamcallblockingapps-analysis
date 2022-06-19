package p193e.p194a.p786g0.p790l;

import com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto;
import com.truecaller.suspension.data.UnsuspendAccountRequestDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import x3.b;
import x3.h0.a;
import x3.h0.o;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Le/a/g0/l/c;", "", "Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;", "requestDto", "Lx3/b;", "Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;", "a", "(Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;)Lx3/b;", C22021b.f61237c, "account-suspension_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g0.l.c */
/* loaded from: classes14-dex2jar.jar:e/a/g0/l/c.class */
public interface AbstractC14403c {
    @o("/v1/verifyCaptcha")
    /* renamed from: a */
    b<UnSuspendAccountSuccessResponseDto> m20143a(@a UnsuspendAccountRequestDto unsuspendAccountRequestDto);

    @o("/v1/huawei/verifyCaptcha")
    /* renamed from: b */
    b<UnSuspendAccountSuccessResponseDto> m20142b(@a UnsuspendAccountRequestDto unsuspendAccountRequestDto);
}
