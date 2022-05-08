package com.gogolook.whoscallsdk.p051ml.request;

import com.gogolook.whoscallsdk.p051ml.request.Request;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001:\u0001\u0005B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0006"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/SingleRequest;", "Lcom/gogolook/whoscallsdk/ml/request/Request;", "builder", "Lcom/gogolook/whoscallsdk/ml/request/SingleRequest$Builder;", "(Lcom/gogolook/whoscallsdk/ml/request/SingleRequest$Builder;)V", "Builder", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.request.SingleRequest */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/SingleRequest.class */
public final class SingleRequest extends Request {

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0014¨\u0006\u0005"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/request/SingleRequest$Builder;", "Lcom/gogolook/whoscallsdk/ml/request/Request$Builder;", "Lcom/gogolook/whoscallsdk/ml/request/SingleRequest;", "()V", "buildInternal", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.request.SingleRequest$Builder */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/request/SingleRequest$Builder.class */
    public static final class Builder extends Request.Builder<Builder, SingleRequest> {
        @Override // com.gogolook.whoscallsdk.p051ml.request.Request.Builder
        public SingleRequest buildInternal() {
            return new SingleRequest(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleRequest(Builder builder) {
        super(builder.getInputData$whoscallSDK_ml_release(), builder.getModelType$whoscallSDK_ml_release(), builder.getRegion$whoscallSDK_ml_release(), builder.getCallback$whoscallSDK_ml_release());
        C15149k.m377b(builder, "builder");
    }
}
