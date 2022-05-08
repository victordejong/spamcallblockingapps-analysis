package com.zendesk.service;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/RetrofitZendeskCallbackAdapter.class */
public class RetrofitZendeskCallbackAdapter<E, F> implements Callback<E> {
    protected static final RequestExtractor DEFAULT_EXTRACTOR = new DefaultExtractor();
    private final ZendeskCallback<F> mCallback;
    private final RequestExtractor<E, F> mExtractor;

    /* loaded from: classes2-dex2jar.jar:com/zendesk/service/RetrofitZendeskCallbackAdapter$DefaultExtractor.class */
    static final class DefaultExtractor<E> implements RequestExtractor<E, E> {
        DefaultExtractor() {
        }

        @Override // com.zendesk.service.RetrofitZendeskCallbackAdapter.RequestExtractor
        public E extract(E e) {
            return e;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor.class */
    public interface RequestExtractor<E, F> {
        F extract(E e);
    }

    public RetrofitZendeskCallbackAdapter(ZendeskCallback<F> zendeskCallback) {
        this(zendeskCallback, DEFAULT_EXTRACTOR);
    }

    public RetrofitZendeskCallbackAdapter(ZendeskCallback<F> zendeskCallback, RequestExtractor<E, F> requestExtractor) {
        this.mCallback = zendeskCallback;
        this.mExtractor = requestExtractor;
    }

    @Override // retrofit2.Callback
    public void onFailure(Call<E> call, Throwable th) {
        if (this.mCallback != null) {
            this.mCallback.onError(RetrofitErrorResponse.throwable(th));
        }
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<E> call, Response<E> response) {
        if (this.mCallback == null) {
            return;
        }
        if (response.isSuccessful()) {
            this.mCallback.onSuccess(this.mExtractor.extract(response.body()));
        } else {
            this.mCallback.onError(RetrofitErrorResponse.response(response));
        }
    }
}
