.class public interface abstract Lg/g/a/a/g/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract b(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .param p1    # Lg/g/a/a/i/o/y;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/y;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-type: application/json; version=2_0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "phone_numbers/feedback"
    .end annotation
.end method

.method public abstract c(Ljava/util/List;)Li/c/b0/b/v;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/k/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-type: application/json; version=2_0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "phone_numbers/events"
    .end annotation
.end method
