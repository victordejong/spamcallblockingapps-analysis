.class public interface abstract Le/a/i/e/l/c;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J?\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0014\u0008\u0001\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0005H\'\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Le/a/i/e/l/c;",
        "",
        "",
        "formPath",
        "campaign",
        "",
        "requestParams",
        "Lx3/b;",
        "Lu3/l0;",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lx3/b;",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            encoded = true
            value = "formPath"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "campaign"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lx3/h0/d;
            encoded = false
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/e;
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "{formPath}/{campaign}"
    .end annotation
.end method
