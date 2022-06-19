.class public interface abstract Le/a/j3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J)\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004H\'\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0001\u0010\n\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0001\u0010\n\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Le/a/j3/h;",
        "",
        "",
        "receiver",
        "Le/m/e/t;",
        "body",
        "Lx3/b;",
        "Lu3/l0;",
        "c",
        "(Ljava/lang/String;Le/m/e/t;)Lx3/b;",
        "webId",
        "b",
        "(Ljava/lang/String;)Lx3/b;",
        "a",
        "contact-request_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "webid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/contact-request/webid/{webid}/reject"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "webid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/contact-request/webid/{webid}/accept"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Le/m/e/t;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "receiver"
        .end annotation
    .end param
    .param p2    # Le/m/e/t;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/e/t;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/contact-request/receiver/{receiver}"
    .end annotation
.end method
