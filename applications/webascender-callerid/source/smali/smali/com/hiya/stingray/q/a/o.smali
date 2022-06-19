.class public interface abstract Lcom/hiya/stingray/q/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/g/h/c;


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/v;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "raw_phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_locale"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "commentsOnly"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/m/c;",
            ">;"
        }
    .end annotation
.end method

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
.end method

.method public abstract d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
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
.end method

.method public abstract e(Ljava/lang/String;)Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;>;"
        }
    .end annotation
.end method
