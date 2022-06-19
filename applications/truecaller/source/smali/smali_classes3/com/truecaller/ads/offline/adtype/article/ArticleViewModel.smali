.class public final Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR$\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\'\u0010\u001d\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u00188\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;",
        "Ln3/v/y0;",
        "Le/a/i/e/a/b/d;",
        "e",
        "Le/a/i/e/a/b/d;",
        "articlePageUseCase",
        "",
        "a",
        "Ljava/lang/String;",
        "leadGenId",
        "Ls1/w/f;",
        "f",
        "Ls1/w/f;",
        "asyncContext",
        "Lq3/a/x2/a1;",
        "Le/a/i/e/c;",
        "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
        "c",
        "Lq3/a/x2/a1;",
        "_articlePageViewState",
        "Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;",
        "b",
        "Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;",
        "viewDto",
        "Lq3/a/x2/i1;",
        "d",
        "Lq3/a/x2/i1;",
        "getArticlePageViewState",
        "()Lq3/a/x2/i1;",
        "articlePageViewState",
        "<init>",
        "(Le/a/i/e/a/b/d;Ls1/w/f;)V",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/i/e/c<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/i/e/c<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Le/a/i/e/a/b/d;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/i/e/a/b/d;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "articlePageUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->e:Le/a/i/e/a/b/d;

    iput-object p2, p0, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->f:Ls1/w/f;

    .line 2
    sget-object p1, Le/a/i/e/e;->a:Le/a/i/e/e;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->c:Lq3/a/x2/a1;

    .line 3
    iput-object p1, p0, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->d:Lq3/a/x2/i1;

    return-void
.end method
