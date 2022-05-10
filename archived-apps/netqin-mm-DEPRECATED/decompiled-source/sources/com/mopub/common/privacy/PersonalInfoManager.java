package com.mopub.common.privacy;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.privacy.SyncRequest;
import com.mopub.common.util.ManifestUtils;
import com.mopub.mobileads.MoPubConversionTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MultiAdResponse;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p131c.p421j.p422a.p423g.C6641b;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager.class */
public class PersonalInfoManager {

    /* renamed from: a */
    public final Context f33871a;

    /* renamed from: c */
    public final C6641b f33873c;

    /* renamed from: d */
    public final ConsentDialogController f33874d;

    /* renamed from: e */
    public final MoPubConversionTracker f33875e;

    /* renamed from: g */
    public MultiAdResponse.ServerOverrideListener f33877g;

    /* renamed from: h */
    public SdkInitializationListener f33878h;

    /* renamed from: j */
    public Long f33880j;

    /* renamed from: k */
    public ConsentStatus f33881k;

    /* renamed from: l */
    public boolean f33882l;

    /* renamed from: m */
    public boolean f33883m;

    /* renamed from: n */
    public boolean f33884n;

    /* renamed from: o */
    public boolean f33885o;

    /* renamed from: i */
    public long f33879i = 300000;

    /* renamed from: b */
    public final Set<ConsentStatusChangeListener> f33872b = Collections.synchronizedSet(new HashSet());

    /* renamed from: f */
    public final SyncRequest.Listener f33876f = new C8744h(this, null);

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$a.class */
    public class C8737a implements MoPubIdentifier.AdvertisingIdChangeListener {
        public C8737a() {
        }

        @Override // com.mopub.common.privacy.MoPubIdentifier.AdvertisingIdChangeListener
        public void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
            Preconditions.checkNotNull(advertisingId);
            Preconditions.checkNotNull(advertisingId2);
            if (advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                return;
            }
            if (!advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                PersonalInfoManager.this.m4541a(ConsentStatus.DNT, ConsentChangeReason.DENIED_BY_DNT_ON);
                PersonalInfoManager.this.requestSync(true);
            } else if (!advertisingId.isDoNotTrack() || advertisingId2.isDoNotTrack()) {
                if (!TextUtils.isEmpty(advertisingId2.mAdvertisingId) && !advertisingId2.getIfaWithPrefix().equals(PersonalInfoManager.this.f33873c.m20223l()) && ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f33873c.m20237e())) {
                    PersonalInfoManager.this.f33873c.m20242c((ConsentStatus) null);
                    PersonalInfoManager.this.f33873c.m20220m(null);
                    PersonalInfoManager.this.m4541a(ConsentStatus.UNKNOWN, ConsentChangeReason.IFA_CHANGED);
                }
            } else if (ConsentStatus.EXPLICIT_NO.equals(PersonalInfoManager.this.f33873c.m20235f())) {
                PersonalInfoManager.this.m4541a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DNT_OFF);
            } else {
                PersonalInfoManager.this.m4541a(ConsentStatus.UNKNOWN, ConsentChangeReason.DNT_OFF);
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$b.class */
    public class RunnableC8738b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f33887a;

        public RunnableC8738b(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f33887a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.DO_NOT_TRACK.getIntCode()), MoPubErrorCode.DO_NOT_TRACK);
            this.f33887a.onConsentDialogLoadFailed(MoPubErrorCode.DO_NOT_TRACK);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$c.class */
    public class RunnableC8739c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f33888a;

        public RunnableC8739c(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f33888a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.GDPR_DOES_NOT_APPLY.getIntCode()), MoPubErrorCode.GDPR_DOES_NOT_APPLY);
            this.f33888a.onConsentDialogLoadFailed(MoPubErrorCode.GDPR_DOES_NOT_APPLY);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$d.class */
    public class RunnableC8740d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentStatusChangeListener f33889a;

        /* renamed from: b */
        public final /* synthetic */ ConsentStatus f33890b;

        /* renamed from: c */
        public final /* synthetic */ ConsentStatus f33891c;

        /* renamed from: d */
        public final /* synthetic */ boolean f33892d;

        public RunnableC8740d(PersonalInfoManager personalInfoManager, ConsentStatusChangeListener consentStatusChangeListener, ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
            this.f33889a = consentStatusChangeListener;
            this.f33890b = consentStatus;
            this.f33891c = consentStatus2;
            this.f33892d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33889a.onConsentStateChange(this.f33890b, this.f33891c, this.f33892d);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$e.class */
    public class C8741e implements SdkInitializationListener {
        public C8741e() {
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "MoPubIdentifier initialized.");
            if (PersonalInfoManager.m4531a(PersonalInfoManager.this.f33882l, PersonalInfoManager.this.gdprApplies(), false, PersonalInfoManager.this.f33880j, PersonalInfoManager.this.f33879i, PersonalInfoManager.this.f33873c.m20223l(), ClientMetadata.getInstance(PersonalInfoManager.this.f33871a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                PersonalInfoManager.this.m4530b();
            } else if (PersonalInfoManager.this.f33878h != null) {
                PersonalInfoManager.this.f33878h.onInitializationFinished();
                PersonalInfoManager.this.f33878h = null;
            }
            new MoPubConversionTracker(PersonalInfoManager.this.f33871a).reportAppOpen(true);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$f.class */
    public static /* synthetic */ class C8742f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33894a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f33894a = iArr;
            try {
                iArr[ConsentStatus.EXPLICIT_YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33894a[ConsentStatus.EXPLICIT_NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$g.class */
    public class C8743g implements MultiAdResponse.ServerOverrideListener {
        public C8743g() {
        }

        public /* synthetic */ C8743g(PersonalInfoManager personalInfoManager, C8737a aVar) {
            this();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onForceExplicitNo(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m4541a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.REVOKED_BY_SERVER);
            } else {
                PersonalInfoManager.this.m4538a(ConsentStatus.EXPLICIT_NO, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onForceGdprApplies() {
            PersonalInfoManager.this.forceGdprApplies();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onInvalidateConsent(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m4541a(ConsentStatus.UNKNOWN, ConsentChangeReason.REACQUIRE_BY_SERVER);
            } else {
                PersonalInfoManager.this.m4538a(ConsentStatus.UNKNOWN, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onReacquireConsent(String str) {
            if (!TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f33873c.m20241c(str);
            }
            PersonalInfoManager.this.f33873c.m20244b(true);
            PersonalInfoManager.this.f33873c.m20217o();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onRequestSuccess(String str) {
            if (TextUtils.isEmpty(PersonalInfoManager.this.f33873c.m20247b()) && !TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f33873c.m20250a(str);
                PersonalInfoManager.this.f33873c.m20217o();
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$h.class */
    public class C8744h implements SyncRequest.Listener {
        public C8744h() {
        }

        public /* synthetic */ C8744h(PersonalInfoManager personalInfoManager, C8737a aVar) {
            this();
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            boolean z = volleyError instanceof MoPubNetworkError;
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_FAILED, Integer.valueOf(z ? ((MoPubNetworkError) volleyError).getReason().ordinal() : MoPubErrorCode.UNSPECIFIED.getIntCode()), z ? volleyError.getMessage() : MoPubErrorCode.UNSPECIFIED.toString());
            PersonalInfoManager.this.f33882l = false;
            if (PersonalInfoManager.this.f33878h != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Personal Info Manager initialization finished but ran into errors.");
                PersonalInfoManager.this.f33878h.onInitializationFinished();
                PersonalInfoManager.this.f33878h = null;
            }
        }

        @Override // com.mopub.common.privacy.SyncRequest.Listener
        public void onSuccess(SyncResponse syncResponse) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_COMPLETED, new Object[0]);
            boolean canCollectPersonalInformation = PersonalInfoManager.this.canCollectPersonalInformation();
            if (PersonalInfoManager.this.f33873c.m20231h() == null) {
                PersonalInfoManager.this.f33873c.m20251a(Boolean.valueOf(syncResponse.isGdprRegion()));
            }
            if (syncResponse.isForceGdprApplies()) {
                PersonalInfoManager.this.f33883m = true;
                PersonalInfoManager.this.f33873c.m20248a(true);
                boolean canCollectPersonalInformation2 = PersonalInfoManager.this.canCollectPersonalInformation();
                if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                    PersonalInfoManager personalInfoManager = PersonalInfoManager.this;
                    personalInfoManager.m4539a(personalInfoManager.f33873c.m20237e(), PersonalInfoManager.this.f33873c.m20237e(), canCollectPersonalInformation2);
                }
            }
            String c = PersonalInfoManager.this.f33873c.m20243c();
            if (!TextUtils.isEmpty(c) && PersonalInfoManager.this.f33873c.m20247b().isEmpty()) {
                PersonalInfoManager.this.f33873c.m20250a(c);
            }
            PersonalInfoManager.this.f33873c.m20242c(PersonalInfoManager.this.f33881k);
            PersonalInfoManager.this.f33873c.m20240c(syncResponse.isWhitelisted());
            PersonalInfoManager.this.f33873c.m20222l(syncResponse.getCurrentVendorListVersion());
            PersonalInfoManager.this.f33873c.m20224k(syncResponse.getCurrentVendorListLink());
            PersonalInfoManager.this.f33873c.m20230h(syncResponse.getCurrentPrivacyPolicyVersion());
            PersonalInfoManager.this.f33873c.m20232g(syncResponse.getCurrentPrivacyPolicyLink());
            String currentVendorListIabHash = syncResponse.getCurrentVendorListIabHash();
            String currentVendorListIabFormat = syncResponse.getCurrentVendorListIabFormat();
            if (!TextUtils.isEmpty(currentVendorListIabHash) && !currentVendorListIabHash.equals(PersonalInfoManager.this.f33873c.m20233g()) && !TextUtils.isEmpty(currentVendorListIabFormat)) {
                PersonalInfoManager.this.f33873c.m20228i(currentVendorListIabFormat);
                PersonalInfoManager.this.f33873c.m20226j(currentVendorListIabHash);
            }
            String a = syncResponse.m4518a();
            if (!TextUtils.isEmpty(a)) {
                PersonalInfoManager.this.f33873c.setExtras(a);
            }
            String consentChangeReason = syncResponse.getConsentChangeReason();
            if (syncResponse.isForceExplicitNo()) {
                PersonalInfoManager.this.f33877g.onForceExplicitNo(consentChangeReason);
            } else if (syncResponse.isInvalidateConsent()) {
                PersonalInfoManager.this.f33877g.onInvalidateConsent(consentChangeReason);
            } else if (syncResponse.isReacquireConsent()) {
                PersonalInfoManager.this.f33877g.onReacquireConsent(consentChangeReason);
            }
            String callAgainAfterSecs = syncResponse.getCallAgainAfterSecs();
            if (!TextUtils.isEmpty(callAgainAfterSecs)) {
                try {
                    long parseLong = Long.parseLong(callAgainAfterSecs);
                    if (parseLong > 0) {
                        PersonalInfoManager.this.f33879i = parseLong * 1000;
                    } else {
                        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
                        MoPubLog.log(consentLogEvent, "callAgainAfterSecs is not positive: " + callAgainAfterSecs);
                    }
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Unable to parse callAgainAfterSecs. Ignoring value");
                }
            }
            if (!ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f33881k)) {
                PersonalInfoManager.this.f33873c.m20218n(null);
            }
            if (PersonalInfoManager.this.f33884n) {
                PersonalInfoManager.this.f33883m = false;
                PersonalInfoManager.this.f33884n = false;
            }
            PersonalInfoManager.this.f33873c.m20217o();
            PersonalInfoManager.this.f33882l = false;
            if (ConsentStatus.POTENTIAL_WHITELIST.equals(PersonalInfoManager.this.f33881k) && PersonalInfoManager.this.f33873c.m20221m()) {
                PersonalInfoManager.this.m4541a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
                PersonalInfoManager.this.requestSync(true);
            }
            if (PersonalInfoManager.this.f33878h != null) {
                PersonalInfoManager.this.f33878h.onInitializationFinished();
                PersonalInfoManager.this.f33878h = null;
            }
        }
    }

    public PersonalInfoManager(Context context, String str, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f33871a = context.getApplicationContext();
        C8743g gVar = new C8743g(this, null);
        this.f33877g = gVar;
        MultiAdResponse.setServerOverrideListener(gVar);
        this.f33874d = new ConsentDialogController(this.f33871a);
        this.f33873c = new C6641b(this.f33871a);
        if (!TextUtils.isEmpty(str) && !str.equals(this.f33873c.m20243c())) {
            this.f33873c.m20250a("");
            this.f33873c.m20245b(str);
            this.f33873c.m20217o();
        }
        this.f33875e = new MoPubConversionTracker(this.f33871a);
        C8737a aVar = new C8737a();
        this.f33878h = sdkInitializationListener;
        MoPubIdentifier moPubIdentifier = ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier();
        moPubIdentifier.setIdChangeListener(aVar);
        moPubIdentifier.m4553a(m4543a());
    }

    /* renamed from: a */
    public static boolean m4540a(ConsentStatus consentStatus, ConsentStatus consentStatus2) {
        if (!ConsentStatus.EXPLICIT_NO.equals(consentStatus2) && !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus2)) {
            return !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus) && ConsentStatus.EXPLICIT_YES.equals(consentStatus2);
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static boolean m4531a(boolean z, Boolean bool, boolean z2, Long l, long j, String str, boolean z3) {
        boolean z4 = false;
        if (z) {
            return false;
        }
        if (bool == null) {
            return true;
        }
        if (!bool.booleanValue()) {
            return false;
        }
        if (z2) {
            return true;
        }
        if (z3 && TextUtils.isEmpty(str)) {
            return false;
        }
        if (l == null) {
            return true;
        }
        if (SystemClock.uptimeMillis() - l.longValue() > j) {
            z4 = true;
        }
        return z4;
    }

    /* renamed from: a */
    public final SdkInitializationListener m4543a() {
        return new C8741e();
    }

    /* renamed from: a */
    public void m4542a(ConsentStatus consentStatus) {
        Preconditions.checkNotNull(consentStatus);
        int i = C8742f.f33894a[consentStatus.ordinal()];
        if (i == 1) {
            m4541a(consentStatus, ConsentChangeReason.GRANTED_BY_USER);
            requestSync(true);
        } else if (i != 2) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
            MoPubLog.log(consentLogEvent, "Invalid consent status: " + consentStatus + ". This is a bug with the use of changeConsentStateFromDialog.");
        } else {
            m4541a(consentStatus, ConsentChangeReason.DENIED_BY_USER);
            requestSync(true);
        }
    }

    /* renamed from: a */
    public final void m4541a(ConsentStatus consentStatus, ConsentChangeReason consentChangeReason) {
        m4538a(consentStatus, consentChangeReason.getReason());
    }

    /* renamed from: a */
    public final void m4539a(ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
        synchronized (this.f33872b) {
            try {
                for (ConsentStatusChangeListener consentStatusChangeListener : this.f33872b) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC8740d(this, consentStatusChangeListener, consentStatus, consentStatus2, z));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4538a(ConsentStatus consentStatus, String str) {
        Preconditions.checkNotNull(consentStatus);
        Preconditions.checkNotNull(str);
        ConsentStatus e = this.f33873c.m20237e();
        if (this.f33873c.m20219n() || !e.equals(consentStatus)) {
            C6641b bVar = this.f33873c;
            bVar.m20220m("" + Calendar.getInstance().getTimeInMillis());
            this.f33873c.m20241c(str);
            this.f33873c.m20252a(consentStatus);
            if (m4540a(e, consentStatus)) {
                C6641b bVar2 = this.f33873c;
                bVar2.m20238d(bVar2.getCurrentPrivacyPolicyVersion());
                C6641b bVar3 = this.f33873c;
                bVar3.m20234f(bVar3.getCurrentVendorListVersion());
                C6641b bVar4 = this.f33873c;
                bVar4.m20236e(bVar4.getCurrentVendorListIabFormat());
            }
            if (ConsentStatus.DNT.equals(consentStatus) || ConsentStatus.UNKNOWN.equals(consentStatus)) {
                this.f33873c.m20238d(null);
                this.f33873c.m20234f(null);
                this.f33873c.m20236e(null);
            }
            if (ConsentStatus.EXPLICIT_YES.equals(consentStatus)) {
                this.f33873c.m20218n(ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier().getAdvertisingInfo().getIfaWithPrefix());
            }
            if (ConsentStatus.DNT.equals(consentStatus)) {
                this.f33873c.m20246b(e);
            }
            this.f33873c.m20244b(false);
            this.f33873c.m20217o();
            boolean canCollectPersonalInformation = canCollectPersonalInformation();
            if (canCollectPersonalInformation) {
                ClientMetadata.getInstance(this.f33871a).repopulateCountryData();
                if (this.f33875e.shouldTrack()) {
                    this.f33875e.reportAppOpen(false);
                }
            }
            MoPubLog.log(MoPubLog.ConsentLogEvent.UPDATED, e, consentStatus, Boolean.valueOf(canCollectPersonalInformation()), str);
            m4539a(e, consentStatus, canCollectPersonalInformation);
            return;
        }
        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
        MoPubLog.log(consentLogEvent, "Consent status is already " + e + ". Not doing a state transition.");
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m4530b() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_ATTEMPTED, new Object[0]);
        this.f33881k = this.f33873c.m20237e();
        this.f33882l = true;
        this.f33880j = Long.valueOf(SystemClock.uptimeMillis());
        SyncUrlGenerator syncUrlGenerator = new SyncUrlGenerator(this.f33871a, this.f33881k.getValue());
        syncUrlGenerator.withAdUnitId(this.f33873c.m20254a()).withUdid(this.f33873c.m20223l()).withLastChangedMs(this.f33873c.m20229i()).withLastConsentStatus(this.f33873c.m20227j()).withConsentChangeReason(this.f33873c.m20239d()).withConsentedVendorListVersion(this.f33873c.getConsentedVendorListVersion()).withConsentedPrivacyPolicyVersion(this.f33873c.getConsentedPrivacyPolicyVersion()).withCachedVendorListIabHash(this.f33873c.m20233g()).withExtras(this.f33873c.getExtras()).withGdprApplies(gdprApplies()).withForceGdprApplies(this.f33873c.isForceGdprApplies());
        if (this.f33883m) {
            this.f33884n = true;
            syncUrlGenerator.withForceGdprAppliesChanged(true);
        }
        Networking.getRequestQueue(this.f33871a).add(new SyncRequest(this.f33871a, syncUrlGenerator.generateUrlString(Constants.HOST), this.f33876f));
    }

    public boolean canCollectPersonalInformation() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null) {
            return false;
        }
        if (!gdprApplies.booleanValue()) {
            return true;
        }
        boolean z = false;
        if (getPersonalInfoConsentStatus().equals(ConsentStatus.EXPLICIT_YES)) {
            z = false;
            if (!ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
                z = true;
            }
        }
        return z;
    }

    public void forceGdprApplies() {
        if (!this.f33873c.isForceGdprApplies()) {
            boolean canCollectPersonalInformation = canCollectPersonalInformation();
            this.f33873c.m20248a(true);
            this.f33883m = true;
            this.f33873c.m20217o();
            boolean canCollectPersonalInformation2 = canCollectPersonalInformation();
            if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                m4539a(this.f33873c.m20237e(), this.f33873c.m20237e(), canCollectPersonalInformation2);
            }
            requestSync(true);
        }
    }

    public Boolean gdprApplies() {
        if (this.f33873c.isForceGdprApplies()) {
            return true;
        }
        return this.f33873c.m20231h();
    }

    public ConsentData getConsentData() {
        return new C6641b(this.f33871a);
    }

    public ConsentStatus getPersonalInfoConsentStatus() {
        return this.f33873c.m20237e();
    }

    public void grantConsent() {
        if (ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot grant consent because Do Not Track is on.");
            return;
        }
        if (this.f33873c.m20221m()) {
            m4541a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
        } else {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information.");
            m4541a(ConsentStatus.POTENTIAL_WHITELIST, ConsentChangeReason.GRANTED_BY_NOT_WHITELISTED_PUB);
        }
        requestSync(true);
    }

    public boolean isConsentDialogReady() {
        return this.f33874d.m4567a();
    }

    public void loadConsentDialog(ConsentDialogListener consentDialogListener) {
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_ATTEMPTED, new Object[0]);
        ManifestUtils.checkGdprActivitiesDeclared(this.f33871a);
        if (!ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            Boolean gdprApplies = gdprApplies();
            if (gdprApplies == null || gdprApplies.booleanValue()) {
                this.f33874d.m4566a(consentDialogListener, gdprApplies, this.f33873c);
            } else if (consentDialogListener != null) {
                new Handler().post(new RunnableC8739c(this, consentDialogListener));
            }
        } else if (consentDialogListener != null) {
            new Handler().post(new RunnableC8738b(this, consentDialogListener));
        }
    }

    public void requestSync(boolean z) {
        if (MoPub.isSdkInitialized()) {
            if (m4531a(this.f33882l, gdprApplies(), z, this.f33880j, this.f33879i, this.f33873c.m20223l(), ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                m4530b();
            }
        }
    }

    public void revokeConsent() {
        if (ClientMetadata.getInstance(this.f33871a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot revoke consent because Do Not Track is on.");
            return;
        }
        m4541a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DENIED_BY_PUB);
        requestSync(true);
    }

    public void setAllowLegitimateInterest(boolean z) {
        this.f33885o = z;
    }

    public boolean shouldAllowLegitimateInterest() {
        return this.f33885o;
    }

    public boolean shouldShowConsentDialog() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || !gdprApplies.booleanValue()) {
            return false;
        }
        if (this.f33873c.m20219n()) {
            return true;
        }
        return this.f33873c.m20237e().equals(ConsentStatus.UNKNOWN);
    }

    public boolean showConsentDialog() {
        return this.f33874d.m4564c();
    }

    public void subscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        if (consentStatusChangeListener != null) {
            this.f33872b.add(consentStatusChangeListener);
        }
    }

    public void unsubscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        this.f33872b.remove(consentStatusChangeListener);
    }
}
