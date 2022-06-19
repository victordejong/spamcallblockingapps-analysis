.class public final Le/a/i/c/d/f$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/f;->a(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsRepositoryImpl"
    f = "AdRouterAdsRepository.kt"
    l = {
        0x1b,
        0x1d,
        0x20,
        0x27
    }
    m = "loadAd"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/c/d/f;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/i/c/d/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/f$a;->f:Le/a/i/c/d/f;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/i/c/d/f$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/c/d/f$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/c/d/f$a;->e:I

    iget-object p1, p0, Le/a/i/c/d/f$a;->f:Le/a/i/c/d/f;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Le/a/i/c/d/f;->a(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
