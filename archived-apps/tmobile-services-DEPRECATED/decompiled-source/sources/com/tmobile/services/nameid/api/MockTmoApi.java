package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.TmoUserStatusResponse;
import io.reactivex.Observable;
import okhttp3.RequestBody;
import retrofit2.Retrofit;
import retrofit2.http.Body;
import retrofit2.mock.BehaviorDelegate;
import retrofit2.mock.MockRetrofit;
import retrofit2.mock.NetworkBehavior;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/MockTmoApi.class */
public class MockTmoApi implements TmoAccountApi {

    /* renamed from: a */
    private final TmoUserStatusResponse f13231a;

    /* renamed from: b */
    private BehaviorDelegate<TmoAccountApi> f13232b;

    public MockTmoApi(Retrofit retrofit) {
        this(retrofit, new MockTmoApiConfig());
    }

    public MockTmoApi(Retrofit retrofit, MockTmoApiConfig mockTmoApiConfig) {
        NetworkBehavior create = NetworkBehavior.create();
        create.setFailurePercent(0);
        this.f13232b = new MockRetrofit.Builder(retrofit).networkBehavior(create).build().create(TmoAccountApi.class);
        this.f13231a = mockTmoApiConfig.m6701c();
    }

    /* renamed from: c */
    private TmoUserStatusResponse m6704c() {
        return this.f13231a;
    }

    @Override // com.tmobile.services.nameid.api.TmoAccountApi
    /* renamed from: a */
    public Observable<TmoUserStatusResponse> mo6681a() {
        return this.f13232b.returningResponse(m6704c()).mo6681a();
    }

    @Override // com.tmobile.services.nameid.api.TmoAccountApi
    /* renamed from: b */
    public Observable<TmoUserStatusResponse> mo6680b(@Body RequestBody requestBody) {
        return this.f13232b.returningResponse(m6704c()).mo6680b(requestBody);
    }
}
