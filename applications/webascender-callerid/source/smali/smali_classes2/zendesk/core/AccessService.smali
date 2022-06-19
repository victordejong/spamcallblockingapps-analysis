.class interface abstract Lzendesk/core/AccessService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAuthTokenForAnonymous(Lzendesk/core/AuthenticationRequestWrapper;)Lretrofit2/Call;
    .param p1    # Lzendesk/core/AuthenticationRequestWrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/AuthenticationRequestWrapper;",
            ")",
            "Lretrofit2/Call<",
            "Lzendesk/core/AuthenticationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/access/sdk/anonymous"
    .end annotation
.end method

.method public abstract getAuthTokenForJwt(Lzendesk/core/AuthenticationRequestWrapper;)Lretrofit2/Call;
    .param p1    # Lzendesk/core/AuthenticationRequestWrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/AuthenticationRequestWrapper;",
            ")",
            "Lretrofit2/Call<",
            "Lzendesk/core/AuthenticationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/access/sdk/jwt"
    .end annotation
.end method
