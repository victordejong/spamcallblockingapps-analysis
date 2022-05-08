package com.tmobile.services.nameid.utility;

import com.apptentive.android.sdk.util.NotImplementedException;
import com.tmobile.services.nameid.api.ActivityLogApi;
import com.tmobile.services.nameid.model.CallLog;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.CategorySettingList;
import com.tmobile.services.nameid.model.EventSummary;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LookupResponse;
import com.tmobile.services.nameid.model.ReportRequest;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserPreferenceItem;
import com.tmobile.services.nameid.model.UserPreferenceItemPostRequest;
import com.tmobile.services.nameid.model.UserPreferencePutRequest;
import com.tmobile.services.nameid.model.UserPreferenceResponse;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.UserPreferenceTransaction;
import io.reactivex.Observable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import javax.annotation.Nullable;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.http.Body;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.mock.BehaviorDelegate;
import retrofit2.mock.MockRetrofit;
import retrofit2.mock.NetworkBehavior;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MockActivityLogApi.class */
public class MockActivityLogApi implements ActivityLogApi {

    /* renamed from: a */
    private BehaviorDelegate<ActivityLogApi> f14400a;
    @Nullable

    /* renamed from: c */
    FeatureState f14402c;

    /* renamed from: b */
    private List<UserPreferenceItem> f14401b = new ArrayList();

    /* renamed from: d */
    NetworkBehavior f14403d = NetworkBehavior.create();

    public MockActivityLogApi(Retrofit retrofit) {
        new ArrayList();
        this.f14400a = new MockRetrofit.Builder(retrofit).networkBehavior(this.f14403d).build().create(ActivityLogApi.class);
    }

    /* renamed from: o */
    private CallLog m5490o() {
        CallLog callLog = new CallLog();
        ArrayList arrayList = new ArrayList();
        CallLog.CallLogItem callLogItem = new CallLog.CallLogItem();
        callLogItem.setName("");
        callLogItem.setDisposition(CallerSetting.Action.BLOCKED.getValue());
        callLogItem.setId(TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
        callLogItem.setNumber("+15015551234");
        callLogItem.setType("");
        callLogItem.setBucketId(-1);
        callLogItem.setControlNumber(0);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        callLogItem.setDts(simpleDateFormat.format(new Date()));
        arrayList.add(callLogItem);
        callLog.setItems(arrayList);
        callLog.setPage(1);
        callLog.setPageSize(50);
        callLog.setMorePages(false);
        return callLog;
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: a */
    public Observable<CategorySettingList> mo5504a(@Path("version") int i, @Path("number") String str) {
        CategorySettingList categorySettingList = new CategorySettingList();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 25; i2++) {
            CategorySetting categorySetting = new CategorySetting();
            categorySetting.setBucketId(i2);
            categorySetting.setDisposition(CallerSetting.Action.NONE.getValue());
            categorySetting.setBlocked(true);
            arrayList.add(categorySetting);
        }
        categorySettingList.setSettings(arrayList);
        return this.f14400a.returningResponse(categorySettingList).mo5504a(i, str);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: b */
    public Observable<Response<Void>> mo5503b(@Path("version") int i, @Path("number") String str, @Path("prefId") String str2) {
        return this.f14400a.returningResponse(Response.success(null)).mo5503b(i, str, str2);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: c */
    public Observable<Response<Void>> mo5502c(@Path("version") int i, @Path("number") String str, @Path("prefId") String str2, @Body UserPreferencePutRequest userPreferencePutRequest) {
        return this.f14400a.returningResponse(Response.success(null)).mo5502c(i, str, str2, userPreferencePutRequest);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: d */
    public Observable<UserPreferenceTransaction> mo5501d(@Path("version") int i, @Path("number") String str, @Body UserPreferenceItemPostRequest userPreferenceItemPostRequest) {
        UserPreferenceTransaction userPreferenceTransaction = new UserPreferenceTransaction();
        userPreferenceTransaction.setTransactionId(TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
        this.f14401b.clear();
        for (UserPreferenceItemPostRequest.PostedUserPreferenceItem postedUserPreferenceItem : userPreferenceItemPostRequest.getItems()) {
            UserPreferenceItem userPreferenceItem = new UserPreferenceItem();
            userPreferenceItem.setUpdatedDts("");
            userPreferenceItem.setCommEvent(postedUserPreferenceItem.getCommEvent());
            userPreferenceItem.setName("");
            userPreferenceItem.setNumber(postedUserPreferenceItem.getNumber());
            userPreferenceItem.setDisposition(postedUserPreferenceItem.getDisposition());
            userPreferenceItem.setId(UUID.randomUUID().toString());
            this.f14401b.add(userPreferenceItem);
        }
        return this.f14400a.returningResponse(userPreferenceTransaction).mo5501d(i, str, userPreferenceItemPostRequest);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: e */
    public Call<FeatureState> mo5500e(@Path("version") int i, @Path("number") String str) {
        FeatureState featureState = this.f14402c;
        if (featureState != null) {
            return this.f14400a.returningResponse(featureState).mo5500e(i, str);
        }
        FeatureState featureState2 = new FeatureState();
        featureState2.setState("active");
        featureState2.setNapFeatures("cnambase,cnamfree,scamid,scamid-blk");
        return this.f14400a.returningResponse(featureState2).mo5500e(i, str);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: f */
    public Observable<LookupResponse> mo5499f(@Path("version") int i, @Path("number") String str, @Path("callerNumber") String str2) {
        LookupResponse lookupResponse = new LookupResponse();
        lookupResponse.setName("Self-lookup @" + new Date().toString());
        lookupResponse.setBucketId(0);
        lookupResponse.setNumber(PhoneNumberHelper.m5415d(str2));
        lookupResponse.setSpamScore(0);
        lookupResponse.setType("");
        return this.f14400a.returningResponse(lookupResponse).mo5498g(i, str, str2);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: g */
    public Observable<LookupResponse> mo5498g(@Path("version") int i, @Path("number") String str, @Path("callerNumber") String str2) {
        LookupResponse lookupResponse = new LookupResponse();
        lookupResponse.setName("Lookup @" + new Date().toString());
        lookupResponse.setBucketId(0);
        lookupResponse.setNumber(PhoneNumberHelper.m5415d(str2));
        lookupResponse.setSpamScore(0);
        lookupResponse.setType("");
        return this.f14400a.returningResponse(lookupResponse).mo5498g(i, str, str2);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: h */
    public Observable<FeatureState> mo5497h(@Path("version") int i, @Path("number") String str) {
        FeatureState featureState = this.f14402c;
        if (featureState != null) {
            return this.f14400a.returningResponse(featureState).mo5497h(i, str);
        }
        FeatureState featureState2 = new FeatureState();
        featureState2.setState("active");
        featureState2.setNapFeatures("cnambase,cnamfree,scamid,scamid-blk");
        return this.f14400a.returningResponse(featureState2).mo5497h(i, str);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: i */
    public Observable<UserPreferenceResponse> mo5496i(@Path("version") int i, @Path("number") String str, @Nullable @Query("pagesize") Integer num, @Nullable @Query("filter") String str2) {
        UserPreferenceResponse userPreferenceResponse = new UserPreferenceResponse();
        UserPreferenceItem userPreferenceItem = new UserPreferenceItem();
        userPreferenceItem.setNumber("+15015551234");
        userPreferenceItem.setId(TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
        userPreferenceItem.setDisposition(CallerSetting.Action.BLOCKED.getValue());
        userPreferenceItem.setCommEvent(1);
        userPreferenceItem.setName("");
        userPreferenceItem.setUpdatedDts("");
        userPreferenceResponse.getPreferenceItems().add(userPreferenceItem);
        return this.f14400a.returningResponse(userPreferenceResponse).mo5496i(i, str, num, str2);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: j */
    public Observable<Response<Void>> mo5495j(@Path("version") int i, @Path("number") String str, @Body ReportRequest reportRequest) {
        return this.f14400a.returningResponse(Response.success(null)).mo5495j(i, str, reportRequest);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: k */
    public Observable<CallLog> mo5494k(@Path("version") int i, @Path("number") String str, @Path("page") Integer num, @Nullable @Query("pagesize") Integer num2, @Nullable @Query("filter") String str2) {
        return this.f14400a.returningResponse(m5490o()).mo5494k(i, str, num, num2, str2);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: l */
    public Observable<UserPreferenceStatus> mo5493l(@Path("version") int i, @Path("number") String str, @Path("transactionId") String str2) {
        UserPreferenceStatus userPreferenceStatus = new UserPreferenceStatus();
        userPreferenceStatus.setSuccessfulItems(this.f14401b);
        return this.f14400a.returningResponse(userPreferenceStatus).mo5493l(i, str, str2);
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: m */
    public Observable<EventSummary> mo5492m(int i, String str, int i2, int i3, int i4, @Nullable int i5, @Nullable String str2, @Nullable String str3) {
        throw new NotImplementedException();
    }

    @Override // com.tmobile.services.nameid.api.ActivityLogApi
    /* renamed from: n */
    public Observable<Response<Void>> mo5491n(@Path("version") int i, @Path("number") String str, @Body CategorySettingList categorySettingList) {
        return this.f14400a.returningResponse(Response.success(null)).mo5491n(i, str, categorySettingList);
    }
}
