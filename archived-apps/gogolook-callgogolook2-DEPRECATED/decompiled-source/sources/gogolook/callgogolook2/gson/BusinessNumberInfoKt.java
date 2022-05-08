package gogolook.callgogolook2.gson;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p583a5.C13891a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\u001a\u000e\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a\u0012\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\b*\u00020\u0005\u001a\u0012\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\b*\u00020\u0005\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0005\u001a\u0011\u0010\u000b\u001a\u0004\u0018\u00010\u0001*\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a\u0011\u0010\f\u001a\u0004\u0018\u00010\u0001*\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\r"}, m815d2 = {"checkHasWhoscallNumber", "", "number", "", "canAskQuestionExceptWhoscallNumber", "Lgogolook/callgogolook2/gson/NumberInfo;", "(Lgogolook/callgogolook2/gson/NumberInfo;)Ljava/lang/Boolean;", "getAskNamesExceptWhoscallNumber", "", "getNameCandidatesExceptWhoscallNumber", "getOrCheckHasWhoscallNumber", "nameQuestionEnabledExceptWhoscallNumber", "spamQuestionEnabledExceptWhoscallNumber", "whoscall_rcRelease"}, m814k = 2, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/BusinessNumberInfoKt.class */
public final class BusinessNumberInfoKt {
    /* renamed from: a */
    public static final Boolean m28561a(NumberInfo numberInfo) {
        C15149k.m377b(numberInfo, "receiver$0");
        return numberInfo.m28302p0() ? false : null;
    }

    /* renamed from: a */
    public static final boolean m28560a(String str) {
        C15149k.m377b(str, "number");
        String g = C14108o4.m2479g(str);
        return g != null && C13891a.m3157e(g);
    }

    /* renamed from: b */
    public static final List<String> m28559b(NumberInfo numberInfo) {
        C15149k.m377b(numberInfo, "receiver$0");
        return numberInfo.m28302p0() ? new ArrayList() : null;
    }

    /* renamed from: c */
    public static final List<String> m28558c(NumberInfo numberInfo) {
        C15149k.m377b(numberInfo, "receiver$0");
        return numberInfo.m28302p0() ? new ArrayList() : null;
    }

    /* renamed from: d */
    public static final boolean m28557d(NumberInfo numberInfo) {
        boolean z;
        C15149k.m377b(numberInfo, "receiver$0");
        String str = numberInfo.m28385K().num;
        boolean z2 = true;
        if (!(str.length() > 0) || !numberInfo.m28312k0()) {
            z2 = false;
        }
        if (!z2) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        Boolean bool = numberInfo.whoscall.hasWhoscallNumber;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = m28560a(str);
            numberInfo.whoscall.hasWhoscallNumber = Boolean.valueOf(z);
        }
        return z;
    }

    /* renamed from: e */
    public static final Boolean m28556e(NumberInfo numberInfo) {
        C15149k.m377b(numberInfo, "receiver$0");
        return numberInfo.m28302p0() ? false : null;
    }

    /* renamed from: f */
    public static final Boolean m28555f(NumberInfo numberInfo) {
        C15149k.m377b(numberInfo, "receiver$0");
        return numberInfo.m28302p0() ? false : null;
    }
}
