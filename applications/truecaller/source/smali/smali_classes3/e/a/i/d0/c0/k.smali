.class public final Le/a/i/d0/c0/k;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.cache.LocalDataSource"
    f = "LocalDataSource.kt"
    l = {
        0x5f
    }
    m = "set"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/d0/c0/i;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/c0/k;->f:Le/a/i/d0/c0/i;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/d0/c0/k;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/d0/c0/k;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/d0/c0/k;->e:I

    iget-object p1, p0, Le/a/i/d0/c0/k;->f:Le/a/i/d0/c0/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/i/d0/c0/i;->i(Le/a/i/d0/j;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
