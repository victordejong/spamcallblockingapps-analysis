package p193e.p194a.p804h.p835s0;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import java.util.List;
import n3.r.a.l;
import p193e.p194a.p682e.p683a.AbstractC12695c2;
import s1.z.c.f;
/* renamed from: e.a.h.s0.c$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/s0/c$a.class */
public final class c$a {
    public c$a(f fVar) {
    }

    /* renamed from: a */
    public static void m19719a(c$a c_a, l lVar, Contact contact, List list, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, InitiateCallHelper.CallContextOption callContextOption, String str, boolean z6, int i) {
        if ((i & 8) != 0) {
            z = true;
        }
        if ((i & 16) != 0) {
            z2 = false;
        }
        if ((i & 32) != 0) {
            z3 = false;
        }
        if ((i & 64) != 0) {
            z4 = false;
        }
        if ((i & 128) != 0) {
            z5 = false;
        }
        if ((i & 256) != 0) {
            callContextOption = InitiateCallHelper.CallContextOption.ShowOnBoarded.a;
        }
        if ((i & 1024) != 0) {
            z6 = false;
        }
        s1.z.c.l.e(list, "numbers");
        s1.z.c.l.e(callContextOption, "callContextOption");
        s1.z.c.l.e(str, "analyticsContext");
        c cVar = new c();
        Bundle arguments = cVar.getArguments();
        if (arguments != null) {
            arguments.putParcelable(AnalyticsConstants.CONTACT, contact);
        }
        Bundle arguments2 = cVar.getArguments();
        if (arguments2 != null) {
            arguments2.putParcelableArrayList("numbers", new ArrayList<>(list));
        }
        Bundle arguments3 = cVar.getArguments();
        if (arguments3 != null) {
            arguments3.putBoolean("consider_primary", z);
        }
        Bundle arguments4 = cVar.getArguments();
        if (arguments4 != null) {
            arguments4.putBoolean("call", z2);
        }
        Bundle arguments5 = cVar.getArguments();
        if (arguments5 != null) {
            arguments5.putBoolean("video_call", z3);
        }
        Bundle arguments6 = cVar.getArguments();
        if (arguments6 != null) {
            arguments6.putBoolean(TokenResponseDto.METHOD_SMS, z4);
        }
        Bundle arguments7 = cVar.getArguments();
        if (arguments7 != null) {
            arguments7.putBoolean("voip_call", z5);
        }
        Bundle arguments8 = cVar.getArguments();
        if (arguments8 != null) {
            arguments8.putParcelable("call_context_request", callContextOption);
        }
        Bundle arguments9 = cVar.getArguments();
        if (arguments9 != null) {
            arguments9.putString("analytics_context", str);
        }
        Bundle arguments10 = cVar.getArguments();
        if (arguments10 != null) {
            arguments10.putBoolean("mode_number_picker", z6);
        }
        AbstractC12695c2.m22740QA(cVar, lVar, null, 2, null);
    }
}
