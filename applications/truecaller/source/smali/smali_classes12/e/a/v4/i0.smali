.class public interface abstract Le/a/v4/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/i;
            value = "appKey"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "requestNonce"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/apps/requests/reject"
    .end annotation
.end method
