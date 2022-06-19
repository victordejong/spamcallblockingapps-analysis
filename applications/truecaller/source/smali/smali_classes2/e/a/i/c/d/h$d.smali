.class public final Le/a/i/c/d/h$d;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/h;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.adsrouter.provider.AdRouterCacheManagerImpl"
    f = "AdRouterCacheManager.kt"
    l = {
        0x37,
        0x39
    }
    m = "isAdExpired"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/c/d/h;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Z


# direct methods
.method public constructor <init>(Le/a/i/c/d/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/h$d;->f:Le/a/i/c/d/h;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/c/d/h$d;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/c/d/h$d;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/c/d/h$d;->e:I

    iget-object p1, p0, Le/a/i/c/d/h$d;->f:Le/a/i/c/d/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/i/c/d/h;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
