package com.gogolook.whoscallsdk.p051ml.request;

import androidx.annotation.NonNull;
import com.gogolook.whoscallsdk.p051ml.callback.InferCallback;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import java.util.Locale;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018��2\u00020\u0001:\u0001\u001cB)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0005¢\u0006\u0002\u0010\u000bR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/Request;", "", "inputData", "Lcom/gogolook/whoscallsdk/ml/request/Data;", "modelType", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "region", "", "callback", "Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;", "(Lcom/gogolook/whoscallsdk/ml/request/Data;Lcom/gogolook/whoscallsdk/ml/model/ModelType;Ljava/lang/String;Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;)V", "()V", "getCallback", "()Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;", "setCallback", "(Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;)V", "getInputData", "()Lcom/gogolook/whoscallsdk/ml/request/Data;", "setInputData", "(Lcom/gogolook/whoscallsdk/ml/request/Data;)V", "getModelType", "()Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "setModelType", "(Lcom/gogolook/whoscallsdk/ml/model/ModelType;)V", "getRegion", "()Ljava/lang/String;", "setRegion", "(Ljava/lang/String;)V", "Builder", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.request.Request */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/Request.class */
public abstract class Request {
    public InferCallback callback;
    public Data inputData;
    public ModelType modelType;
    public String region;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000f\b&\u0018��*\u0014\b��\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020��*\b\b\u0001\u0010\u0002*\u00020\u00032\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u000b\u0010*\u001a\u00028\u0001¢\u0006\u0002\u0010+J\r\u0010,\u001a\u00028\u0001H%¢\u0006\u0002\u0010+J\u0014\u0010-\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��H\u0003J\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010/\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\u0006\u0010\f\u001a\u00020\rJ\u001a\u00100\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\u0006\u0010\u0012\u001a\u00020\u0013J\u001a\u00101\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\u0006\u0010\u0018\u001a\u00020\u0019J\u001a\u00102\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\u0006\u0010\u001e\u001a\u00020\u001fJ\u001a\u00103\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010��2\u0006\u0010$\u001a\u00020%R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080.¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00064"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/Request$Builder;", "B", "R", "Lcom/gogolook/whoscallsdk/ml/request/Request;", "", "()V", "batchSize", "", "getBatchSize$whoscallSDK_ml_release", "()I", "setBatchSize$whoscallSDK_ml_release", "(I)V", "callback", "Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;", "getCallback$whoscallSDK_ml_release", "()Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;", "setCallback$whoscallSDK_ml_release", "(Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;)V", "inputData", "Lcom/gogolook/whoscallsdk/ml/request/Data;", "getInputData$whoscallSDK_ml_release", "()Lcom/gogolook/whoscallsdk/ml/request/Data;", "setInputData$whoscallSDK_ml_release", "(Lcom/gogolook/whoscallsdk/ml/request/Data;)V", "modelType", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "getModelType$whoscallSDK_ml_release", "()Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "setModelType$whoscallSDK_ml_release", "(Lcom/gogolook/whoscallsdk/ml/model/ModelType;)V", "parallelRunning", "", "getParallelRunning$whoscallSDK_ml_release", "()Z", "setParallelRunning$whoscallSDK_ml_release", "(Z)V", "region", "", "getRegion$whoscallSDK_ml_release", "()Ljava/lang/String;", "setRegion$whoscallSDK_ml_release", "(Ljava/lang/String;)V", "build", "()Lcom/gogolook/whoscallsdk/ml/request/Request;", "buildInternal", "getSelf", "setBatchSize", "setCallback", "setInputData", "setModelType", "setParallelRunning", "setRegion", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.request.Request$Builder */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/Request$Builder.class */
    public static abstract class Builder<B extends Builder<B, R>, R extends Request> {
        public int batchSize;
        public InferCallback callback;
        public Data inputData;
        public ModelType modelType = ModelType.NotAModel.INSTANCE;
        public boolean parallelRunning;
        public String region;

        public Builder() {
            Locale locale = Locale.TAIWAN;
            C15149k.m383a((Object) locale, "Locale.TAIWAN");
            String country = locale.getCountry();
            C15149k.m383a((Object) country, "Locale.TAIWAN.country");
            Locale locale2 = Locale.ROOT;
            C15149k.m383a((Object) locale2, "Locale.ROOT");
            if (country != null) {
                String lowerCase = country.toLowerCase(locale2);
                C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                this.region = lowerCase;
                return;
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.String");
        }

        @NonNull
        private final Builder<B, R> getSelf() {
            return this;
        }

        public final R build() {
            return buildInternal();
        }

        @NonNull
        public abstract R buildInternal();

        public final int getBatchSize$whoscallSDK_ml_release() {
            return this.batchSize;
        }

        public final InferCallback getCallback$whoscallSDK_ml_release() {
            return this.callback;
        }

        public final Data getInputData$whoscallSDK_ml_release() {
            Data data = this.inputData;
            if (data != null) {
                return data;
            }
            C15149k.m373d("inputData");
            throw null;
        }

        public final ModelType getModelType$whoscallSDK_ml_release() {
            return this.modelType;
        }

        public final boolean getParallelRunning$whoscallSDK_ml_release() {
            return this.parallelRunning;
        }

        public final String getRegion$whoscallSDK_ml_release() {
            return this.region;
        }

        public final Builder<B, R> setBatchSize(int i) {
            this.batchSize = i;
            return this;
        }

        public final void setBatchSize$whoscallSDK_ml_release(int i) {
            this.batchSize = i;
        }

        public final Builder<B, R> setCallback(InferCallback inferCallback) {
            C15149k.m377b(inferCallback, "callback");
            this.callback = inferCallback;
            return this;
        }

        public final void setCallback$whoscallSDK_ml_release(InferCallback inferCallback) {
            this.callback = inferCallback;
        }

        public final Builder<B, R> setInputData(Data data) {
            C15149k.m377b(data, "inputData");
            this.inputData = data;
            return this;
        }

        public final void setInputData$whoscallSDK_ml_release(Data data) {
            C15149k.m377b(data, "<set-?>");
            this.inputData = data;
        }

        public final Builder<B, R> setModelType(ModelType modelType) {
            C15149k.m377b(modelType, "modelType");
            this.modelType = modelType;
            return this;
        }

        public final void setModelType$whoscallSDK_ml_release(ModelType modelType) {
            C15149k.m377b(modelType, "<set-?>");
            this.modelType = modelType;
        }

        public final Builder<B, R> setParallelRunning(boolean z) {
            this.parallelRunning = z;
            return this;
        }

        public final void setParallelRunning$whoscallSDK_ml_release(boolean z) {
            this.parallelRunning = z;
        }

        public final Builder<B, R> setRegion(String str) {
            C15149k.m377b(str, "region");
            this.region = str;
            return this;
        }

        public final void setRegion$whoscallSDK_ml_release(String str) {
            C15149k.m377b(str, "<set-?>");
            this.region = str;
        }
    }

    public Request() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Request(Data data, ModelType modelType, String str, InferCallback inferCallback) {
        this();
        C15149k.m377b(data, "inputData");
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "region");
        this.inputData = data;
        this.modelType = modelType;
        this.region = str;
        this.callback = inferCallback;
    }

    public final InferCallback getCallback() {
        return this.callback;
    }

    public final Data getInputData() {
        Data data = this.inputData;
        if (data != null) {
            return data;
        }
        C15149k.m373d("inputData");
        throw null;
    }

    public final ModelType getModelType() {
        ModelType modelType = this.modelType;
        if (modelType != null) {
            return modelType;
        }
        C15149k.m373d("modelType");
        throw null;
    }

    public final String getRegion() {
        String str = this.region;
        if (str != null) {
            return str;
        }
        C15149k.m373d("region");
        throw null;
    }

    public final void setCallback(InferCallback inferCallback) {
        this.callback = inferCallback;
    }

    public final void setInputData(Data data) {
        C15149k.m377b(data, "<set-?>");
        this.inputData = data;
    }

    public final void setModelType(ModelType modelType) {
        C15149k.m377b(modelType, "<set-?>");
        this.modelType = modelType;
    }

    public final void setRegion(String str) {
        C15149k.m377b(str, "<set-?>");
        this.region = str;
    }
}
