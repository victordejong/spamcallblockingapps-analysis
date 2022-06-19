.class public final Le/a/i/e/k/c$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/k/c;->e(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.manager.OfflineAdsManagerImpl"
    f = "OfflineAdsManager.kt"
    l = {
        0x97,
        0x98,
        0x99
    }
    m = "invalidate"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/e/k/c;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/i/e/k/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/k/c$a;->f:Le/a/i/e/k/c;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/e/k/c$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/e/k/c$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/e/k/c$a;->e:I

    iget-object p1, p0, Le/a/i/e/k/c$a;->f:Le/a/i/e/k/c;

    invoke-virtual {p1, p0}, Le/a/i/e/k/c;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
