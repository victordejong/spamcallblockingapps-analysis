.class interface abstract Lzendesk/support/UploadService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract uploadAttachment(Ljava/lang/String;Lm/f0;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "filename"
        .end annotation
    .end param
    .param p2    # Lm/f0;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lm/f0;",
            ")",
            "Lretrofit2/Call<",
            "Lzendesk/support/UploadResponseWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/mobile/uploads.json"
    .end annotation
.end method
