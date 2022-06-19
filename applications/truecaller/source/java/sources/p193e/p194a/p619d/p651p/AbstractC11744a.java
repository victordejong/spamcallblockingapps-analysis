package p193e.p194a.p619d.p651p;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.voip.api.CallInfoResponseDto;
import com.truecaller.voip.api.CreateCallRequestDto;
import com.truecaller.voip.api.CreateCallResponseDto;
import com.truecaller.voip.api.CrossDcWakeUpDto;
import com.truecaller.voip.api.CrossDcWakeUpRequestDto;
import com.truecaller.voip.api.InviteToCallRequestDto;
import com.truecaller.voip.api.InviteToCallResponseDto;
import com.truecaller.voip.api.RtcTokenDto;
import com.truecaller.voip.api.RtcTokenRequestDto;
import com.truecaller.voip.api.RtcTokenWithEncryptionDto;
import com.truecaller.voip.api.RtcTokenWithEncryptionRequestDto;
import com.truecaller.voip.api.RtmTokenDto;
import com.truecaller.voip.api.VoipBatchIdsDto;
import com.truecaller.voip.api.VoipBatchIdsRequestDto;
import com.truecaller.voip.api.VoipIdDto;
import com.truecaller.voip.api.VoipNumberDto;
import com.truecaller.voip.api.WakeUpRequestDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import s1.w.d;
import x3.a0;
import x3.h0.a;
import x3.h0.b;
import x3.h0.f;
import x3.h0.o;
import x3.h0.s;
import x3.h0.x;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J#\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\u0003\u001a\u00020\nH§@ø\u0001��¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH'¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\u0013\u001a\u00020\u0012H'¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u000e2\b\b\u0001\u0010\u0003\u001a\u00020\u0016H'¢\u0006\u0004\b\u0018\u0010\u0019J)\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000e2\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\u001a\u001a\u00020\u0012H'¢\u0006\u0004\b\u001c\u0010\u0015J\u0015\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000eH'¢\u0006\u0004\b\u001e\u0010\u0011J\u001f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u000e2\b\b\u0001\u0010\u0003\u001a\u00020\u001fH'¢\u0006\u0004\b!\u0010\"J\u001f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u000e2\b\b\u0001\u0010\u0003\u001a\u00020#H'¢\u0006\u0004\b%\u0010&J#\u0010)\u001a\b\u0012\u0004\u0012\u00020(0\u00042\b\b\u0001\u0010\u0003\u001a\u00020'H§@ø\u0001��¢\u0006\u0004\b)\u0010*J#\u0010-\u001a\b\u0012\u0004\u0012\u00020,0\u00042\b\b\u0001\u0010+\u001a\u00020\u0012H§@ø\u0001��¢\u0006\u0004\b-\u0010.J-\u00101\u001a\b\u0012\u0004\u0012\u0002000\u00042\b\b\u0001\u0010+\u001a\u00020\u00122\b\b\u0001\u0010\u0003\u001a\u00020/H§@ø\u0001��¢\u0006\u0004\b1\u00102J-\u00103\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010+\u001a\u00020\u00122\b\b\u0001\u0010\u001a\u001a\u00020\u0012H§@ø\u0001��¢\u0006\u0004\b3\u00104\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"Le/a/d/p/a;", "", "Lcom/truecaller/voip/api/WakeUpRequestDto;", "request", "Lx3/a0;", "Ls1/s;", "k", "(Lcom/truecaller/voip/api/WakeUpRequestDto;Ls1/w/d;)Ljava/lang/Object;", "Le/a/b0/b/e;", "targetDomain", "Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;", "Lcom/truecaller/voip/api/CrossDcWakeUpDto;", "e", "(Le/a/b0/b/e;Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;Ls1/w/d;)Ljava/lang/Object;", "Lx3/b;", "Lcom/truecaller/voip/api/VoipIdDto;", "g", "()Lx3/b;", "", "number", "f", "(Le/a/b0/b/e;Ljava/lang/String;)Lx3/b;", "Lcom/truecaller/voip/api/VoipBatchIdsRequestDto;", "Lcom/truecaller/voip/api/VoipBatchIdsDto;", "d", "(Lcom/truecaller/voip/api/VoipBatchIdsRequestDto;)Lx3/b;", "voipId", "Lcom/truecaller/voip/api/VoipNumberDto;", C22021b.f61237c, "Lcom/truecaller/voip/api/RtmTokenDto;", AbstractC2405c.f7629a, "Lcom/truecaller/voip/api/RtcTokenRequestDto;", "Lcom/truecaller/voip/api/RtcTokenDto;", "m", "(Lcom/truecaller/voip/api/RtcTokenRequestDto;)Lx3/b;", "Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;", "Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;", "i", "(Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;)Lx3/b;", "Lcom/truecaller/voip/api/CreateCallRequestDto;", "Lcom/truecaller/voip/api/CreateCallResponseDto;", "h", "(Lcom/truecaller/voip/api/CreateCallRequestDto;Ls1/w/d;)Ljava/lang/Object;", RemoteMessageConst.Notification.CHANNEL_ID, "Lcom/truecaller/voip/api/CallInfoResponseDto;", "l", "(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/voip/api/InviteToCallRequestDto;", "Lcom/truecaller/voip/api/InviteToCallResponseDto;", "j", "(Ljava/lang/String;Lcom/truecaller/voip/api/InviteToCallRequestDto;Ls1/w/d;)Ljava/lang/Object;", "a", "(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.p.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/p/a.class */
public interface AbstractC11744a {
    @b(" /v0/call/{channelId}/{voipId}")
    /* renamed from: a */
    Object m24071a(@s("channelId") String str, @s("voipId") String str2, d<? super a0<s1.s>> dVar);

    @f("v0/phone/{voipId}")
    /* renamed from: b */
    x3.b<VoipNumberDto> m24070b(@x AbstractC8371e abstractC8371e, @s("voipId") String str);

    @o("v0/token/rtm")
    /* renamed from: c */
    x3.b<RtmTokenDto> m24069c();

    @o("v0/id/batch")
    /* renamed from: d */
    x3.b<VoipBatchIdsDto> m24068d(@a VoipBatchIdsRequestDto voipBatchIdsRequestDto);

    @o("v0/wakeup/crossdomain")
    /* renamed from: e */
    Object m24067e(@x AbstractC8371e abstractC8371e, @a CrossDcWakeUpRequestDto crossDcWakeUpRequestDto, d<? super a0<CrossDcWakeUpDto>> dVar);

    @f("v0/id/{number}")
    /* renamed from: f */
    x3.b<VoipIdDto> m24066f(@x AbstractC8371e abstractC8371e, @s("number") String str);

    @o("v0/id")
    /* renamed from: g */
    x3.b<VoipIdDto> m24065g();

    @o("/v0/call")
    /* renamed from: h */
    Object m24064h(@a CreateCallRequestDto createCallRequestDto, d<? super a0<CreateCallResponseDto>> dVar);

    @o("v1/token/rtc")
    /* renamed from: i */
    x3.b<RtcTokenWithEncryptionDto> m24063i(@a RtcTokenWithEncryptionRequestDto rtcTokenWithEncryptionRequestDto);

    @o("/v0/call/{channelId}/participants")
    /* renamed from: j */
    Object m24062j(@s("channelId") String str, @a InviteToCallRequestDto inviteToCallRequestDto, d<? super a0<InviteToCallResponseDto>> dVar);

    @o("v0/wakeup")
    /* renamed from: k */
    Object m24061k(@a WakeUpRequestDto wakeUpRequestDto, d<? super a0<s1.s>> dVar);

    @f("/v0/call/{channelId}")
    /* renamed from: l */
    Object m24060l(@s("channelId") String str, d<? super a0<CallInfoResponseDto>> dVar);

    @o("v0/token/rtc")
    /* renamed from: m */
    x3.b<RtcTokenDto> m24059m(@a RtcTokenRequestDto rtcTokenRequestDto);
}
