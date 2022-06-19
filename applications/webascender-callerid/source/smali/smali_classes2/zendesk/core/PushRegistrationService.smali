.class interface abstract Lzendesk/core/PushRegistrationService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract registerDevice(Lzendesk/core/PushRegistrationRequestWrapper;)Lretrofit2/Call;
    .param p1    # Lzendesk/core/PushRegistrationRequestWrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/PushRegistrationRequestWrapper;",
            ")",
            "Lretrofit2/Call<",
            "Lzendesk/core/PushRegistrationResponseWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/mobile/push_notification_devices.json"
    .end annotation
.end method

.method public abstract unregisterDevice(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/mobile/push_notification_devices/{id}.json"
    .end annotation
.end method
