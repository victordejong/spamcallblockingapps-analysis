.class public final Le/a/p5/q0/d;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.utils.async.RetryHelper"
    f = "RetryHelper.kt"
    l = {
        0x1c
    }
    m = "retryIf$suspendImpl"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/p5/q0/e;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:I

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Le/a/p5/q0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/q0/d;->f:Le/a/p5/q0/e;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Le/a/p5/q0/d;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/p5/q0/d;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/p5/q0/d;->e:I

    iget-object v0, p0, Le/a/p5/q0/d;->f:Le/a/p5/q0/e;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Le/a/p5/q0/e;->a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
