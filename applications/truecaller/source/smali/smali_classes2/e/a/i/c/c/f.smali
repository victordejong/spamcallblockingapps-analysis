.class public interface abstract Le/a/i/c/c/f;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J+\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0014\u0008\u0001\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002H\'\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0008\u0008\u0001\u0010\t\u001a\u00020\u0003H\'\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ)\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00052\u0008\u0008\u0001\u0010\r\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000eH\'\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Le/a/i/c/c/f;",
        "",
        "",
        "",
        "map",
        "Lx3/b;",
        "Lcom/truecaller/ads/adsrouter/model/AdResponse;",
        "c",
        "(Ljava/util/Map;)Lx3/b;",
        "url",
        "Lu3/l0;",
        "a",
        "(Ljava/lang/String;)Lx3/b;",
        "campaign",
        "",
        "uiConfigVersion",
        "Lcom/truecaller/ads/adsrouter/model/Ad;",
        "b",
        "(Ljava/lang/String;I)Lx3/b;",
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
.method public abstract a(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/y;
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

    .annotation runtime Lx3/h0/f;
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;I)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "campaign"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lx3/h0/t;
            value = "ui_config_version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lx3/b<",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/uiConfig/{campaign}"
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lx3/b<",
            "Lcom/truecaller/ads/adsrouter/model/AdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "v2/ads"
    .end annotation
.end method
