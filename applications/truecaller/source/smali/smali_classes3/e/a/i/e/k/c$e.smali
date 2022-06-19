.class public final Le/a/i/e/k/c$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/k/c;->d(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.manager.OfflineAdsManagerImpl"
    f = "OfflineAdsManager.kt"
    l = {
        0x68,
        0x6a,
        0x6c,
        0x6d,
        0x6e,
        0x6f,
        0x74,
        0x77,
        0x83
    }
    m = "performSync"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/e/k/c;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:J


# direct methods
.method public constructor <init>(Le/a/i/e/k/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/k/c$e;->f:Le/a/i/e/k/c;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/e/k/c$e;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/e/k/c$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/e/k/c$e;->e:I

    iget-object p1, p0, Le/a/i/e/k/c$e;->f:Le/a/i/e/k/c;

    invoke-virtual {p1, p0}, Le/a/i/e/k/c;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
