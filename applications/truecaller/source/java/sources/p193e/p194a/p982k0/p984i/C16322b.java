package p193e.p194a.p982k0.p984i;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.callrecording.CallRecordingOnBoardingLaunchContext;
import com.truecaller.callrecording.analytics.RecordingAction;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.callrecording.analytics.RecordingOnBoardingStep;
import com.truecaller.callrecording.recorder.RecordingError;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import org.apache.avro.Schema;
import p193e.p194a.p1050l5.p1051a.C17433a0;
import p193e.p194a.p1050l5.p1051a.C17451b0;
import p193e.p194a.p1050l5.p1051a.C17469c0;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1050l5.p1051a.C17831z;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.k0.i.b */
/* loaded from: classes7-dex2jar.jar:e/a/k0/i/b.class */
public final class C16322b implements AbstractC16321a {

    /* renamed from: a */
    public final AbstractC19462a f45938a;

    @Inject
    public C16322b(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f45938a = abstractC19462a;
    }

    @Override // p193e.p194a.p982k0.p984i.AbstractC16321a
    /* renamed from: a */
    public void mo17535a(RecordingError recordingError) {
        CharSequence charSequence;
        l.e(recordingError, "recordingError");
        if (recordingError == RecordingError.NONE) {
            AssertionUtil.shouldNeverHappen(new IllegalArgumentException("RecordingError.None is not allowed here"), new String[0]);
            return;
        }
        AbstractC19462a abstractC19462a = this.f45938a;
        Schema schema = C17831z.f50751d;
        C17831z.C17833b c17833b = new C17831z.C17833b(null);
        l.e(recordingError, "$this$toAnalyticsError");
        switch (recordingError.ordinal()) {
            case 2:
                charSequence = "StartFailed";
                break;
            case 3:
                charSequence = "StopFailed";
                break;
            case 4:
                charSequence = "RecorderError";
                break;
            case 5:
                charSequence = "CreateFileFailed";
                break;
            case 6:
                charSequence = "CreateDirectoryFailed";
                break;
            case 7:
                charSequence = "InvalidStorageState";
                break;
            case 8:
                charSequence = "MissingSession";
                break;
            case 9:
                charSequence = "ResetWithOngoingSession";
                break;
            case 10:
                charSequence = "WatchdogTriggered";
                break;
            default:
                charSequence = "Unmapped";
                break;
        }
        c17833b.validate(c17833b.fields()[2], charSequence);
        c17833b.f50758a = charSequence;
        c17833b.fieldSetFlags()[2] = true;
        C17831z build = c17833b.build();
        l.d(build, "AppCallRecordingFailure.…\n                .build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p982k0.p984i.AbstractC16321a
    /* renamed from: b */
    public void mo17534b(CallRecordingOnBoardingLaunchContext callRecordingOnBoardingLaunchContext, RecordingOnBoardingStep recordingOnBoardingStep) {
        RecordingAnalyticsSource recordingAnalyticsSource;
        l.e(callRecordingOnBoardingLaunchContext, "launchContext");
        l.e(recordingOnBoardingStep, "step");
        l.e(callRecordingOnBoardingLaunchContext, "$this$toAnalyticsSource");
        int ordinal = callRecordingOnBoardingLaunchContext.ordinal();
        if (ordinal == 1) {
            recordingAnalyticsSource = RecordingAnalyticsSource.RECORDING_LIST;
        } else if (ordinal == 3) {
            recordingAnalyticsSource = RecordingAnalyticsSource.INCALLUI;
        } else if (ordinal != 4) {
            AssertionUtil.shouldNeverHappen(new IllegalArgumentException("CallRecordingOnBoardingLaunchContext context not mapped"), new String[0]);
            recordingAnalyticsSource = null;
        } else {
            recordingAnalyticsSource = RecordingAnalyticsSource.BUBBLE;
        }
        if (recordingAnalyticsSource != null) {
            AbstractC19462a abstractC19462a = this.f45938a;
            Schema schema = C17433a0.f48818e;
            C17433a0.C17435b c17435b = new C17433a0.C17435b(null);
            String value = recordingAnalyticsSource.getValue();
            c17435b.validate(c17435b.fields()[2], value);
            c17435b.f48826a = value;
            c17435b.fieldSetFlags()[2] = true;
            String value2 = recordingOnBoardingStep.getValue();
            c17435b.validate(c17435b.fields()[3], value2);
            c17435b.f48827b = value2;
            c17435b.fieldSetFlags()[3] = true;
            C17433a0 build = c17435b.build();
            l.d(build, "AppCallRecordingOnboardi…                 .build()");
            abstractC19462a.mo13275a(build);
        }
    }

    @Override // p193e.p194a.p982k0.p984i.AbstractC16321a
    /* renamed from: c */
    public void mo17533c(RecordingAnalyticsSource recordingAnalyticsSource, int i, int i2) {
        l.e(recordingAnalyticsSource, "source");
        AbstractC19462a abstractC19462a = this.f45938a;
        Schema schema = C17469c0.f48956f;
        C17469c0.C17471b c17471b = new C17469c0.C17471b(null);
        String value = recordingAnalyticsSource.getValue();
        c17471b.validate(c17471b.fields()[2], value);
        c17471b.f48965a = value;
        c17471b.fieldSetFlags()[2] = true;
        c17471b.validate(c17471b.fields()[3], Integer.valueOf(i));
        c17471b.f48966b = i;
        c17471b.fieldSetFlags()[3] = true;
        c17471b.validate(c17471b.fields()[4], Integer.valueOf(i2));
        c17471b.f48967c = i2;
        c17471b.fieldSetFlags()[4] = true;
        C17469c0 build = c17471b.build();
        l.d(build, "AppCallRecordingSuccessf…\n                .build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p982k0.p984i.AbstractC16321a
    /* renamed from: d */
    public void mo17532d(CallRecordingOnBoardingLaunchContext callRecordingOnBoardingLaunchContext) {
        l.e(callRecordingOnBoardingLaunchContext, "source");
        AbstractC19462a abstractC19462a = this.f45938a;
        Schema schema = C17451b0.f48880d;
        C17451b0.C17453b c17453b = new C17451b0.C17453b(null);
        String name = callRecordingOnBoardingLaunchContext.name();
        c17453b.validate(c17453b.fields()[2], name);
        c17453b.f48887a = name;
        c17453b.fieldSetFlags()[2] = true;
        C17451b0 build = c17453b.build();
        l.d(build, "AppCallRecordingReEnable…\n                .build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p982k0.p984i.AbstractC16321a
    /* renamed from: e */
    public void mo17531e(RecordingAnalyticsSource recordingAnalyticsSource, RecordingAction recordingAction) {
        l.e(recordingAnalyticsSource, "source");
        l.e(recordingAction, "action");
        AbstractC19462a abstractC19462a = this.f45938a;
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15903c(recordingAnalyticsSource.getValue());
        m15906a.m15904b(recordingAction.getValue());
        C17635l2 build = m15906a.build();
        l.d(build, "AppUserInteraction.newBu…\n                .build()");
        abstractC19462a.mo13275a(build);
    }
}
