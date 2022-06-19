.class public final Le/a/i/e/a/b/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/a/b/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/i/e/c<",
        "+",
        "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/a/b/g;


# direct methods
.method public constructor <init>(Le/a/i/e/a/b/g;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/b/g$a;->a:Le/a/i/e/a/b/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/c<",
            "+",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/i/e/c;

    .line 2
    iget-object p2, p0, Le/a/i/e/a/b/g$a;->a:Le/a/i/e/a/b/g;

    iget-object p2, p2, Le/a/i/e/a/b/g;->f:Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

    .line 3
    iget-object p2, p2, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->c:Lq3/a/x2/a1;

    .line 4
    invoke-interface {p2, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
