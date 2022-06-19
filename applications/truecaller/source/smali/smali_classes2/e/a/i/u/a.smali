.class public interface abstract Le/a/i/u/a;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\u0008`\u0018\u00002\u00020\u0001J)\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J9\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0001\u0010\n\u001a\u00020\t2\u0014\u0008\u0001\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Le/a/i/u/a;",
        "",
        "",
        "Lcom/truecaller/ads/adslogger/AdsPixelData;",
        "list",
        "Lx3/a0;",
        "Ls1/s;",
        "b",
        "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;",
        "",
        "path",
        "",
        "map",
        "a",
        "(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;",
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
.method public abstract a(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "pixel_type"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Ls1/s;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "v0/{pixel_type}"
    .end annotation
.end method

.method public abstract b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/adslogger/AdsPixelData;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Ls1/s;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "v0/store_batch"
    .end annotation
.end method
