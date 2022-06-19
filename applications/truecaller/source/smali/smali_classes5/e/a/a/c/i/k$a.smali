.class public final Le/a/a/c/i/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i/k;->Hj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Le/a/l0/u/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/i/k;


# direct methods
.method public constructor <init>(Le/a/a/c/i/k;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i/k$a;->a:Le/a/a/c/i/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/l0/u/d/b;

    .line 2
    iget-object v0, p0, Le/a/a/c/i/k$a;->a:Le/a/a/c/i/k;

    .line 3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/i/l;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {v2, p1}, Le/a/a/c/i/d;->c(Le/a/l0/u/d/b;)V

    .line 5
    iget-object p1, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {p1, v0}, Le/a/a/c/i/d;->a(Le/a/a/c/i/d$a;)V

    .line 6
    iget-object p1, v0, Le/a/a/c/i/k;->l:Le/a/a/c/l5;

    new-instance v2, Lw3/b/a/b;

    iget-wide v3, v0, Le/a/a/c/i/k;->c:J

    invoke-direct {v2, v3, v4}, Lw3/b/a/b;-><init>(J)V

    invoke-interface {p1, v2}, Le/a/a/c/l5;->z(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/a/c/i/l;->o0(Ljava/lang/String;)V

    .line 7
    iget-boolean p1, v0, Le/a/a/c/i/k;->f:Z

    const-string v2, "resourceProvider.getQuan\u2026nt(), dataSource.count())"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, v0, Le/a/a/c/i/k;->m:Le/a/p5/c0;

    const v5, 0x7f100002

    iget-object v6, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {v6}, Le/a/a/c/i/d;->b()I

    move-result v6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {v7}, Le/a/a/c/i/d;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-interface {p1, v5, v6, v4}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Le/a/a/c/i/l;->Fa(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, v0, Le/a/a/c/i/k;->m:Le/a/p5/c0;

    const v5, 0x7f100001

    iget-object v6, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {v6}, Le/a/a/c/i/d;->b()I

    move-result v6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {v7}, Le/a/a/c/i/d;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-interface {p1, v5, v6, v4}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Le/a/a/c/i/l;->Fa(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-interface {v1}, Le/a/a/c/i/l;->Ve()V

    .line 11
    iget-object p1, v0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {p1}, Le/a/a/c/i/d;->b()I

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v1}, Le/a/a/c/i/l;->s()V

    :cond_1
    return-void
.end method
