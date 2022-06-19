.class public final Le/a/i/d0/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/i/d0/j<",
        "+",
        "Le/a/i/d0/h0/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.AdPartnerMediationManagerImpl$requestAsync$1$1"
    f = "AdPartnerMediationManager.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/d0/e;


# direct methods
.method public constructor <init>(Le/a/i/d0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/e$a;->f:Le/a/i/d0/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/d0/e$a;

    iget-object v0, p0, Le/a/i/d0/e$a;->f:Le/a/i/d0/e;

    invoke-direct {p1, v0, p2}, Le/a/i/d0/e$a;-><init>(Le/a/i/d0/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/d0/e$a;

    iget-object v0, p0, Le/a/i/d0/e$a;->f:Le/a/i/d0/e;

    invoke-direct {p1, v0, p2}, Le/a/i/d0/e$a;-><init>(Le/a/i/d0/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/d0/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/d0/e$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/d0/e$a;->f:Le/a/i/d0/e;

    iget-object v1, p1, Le/a/i/d0/e;->k:Le/a/i/d0/a0/q;

    .line 5
    iget-object v3, p1, Le/a/i/d0/e;->m:Landroid/content/Context;

    .line 6
    new-instance v4, Le/a/i/d0/a0/r;

    iget-object v5, p1, Le/a/i/d0/e;->n:Le/a/i/c/d/l;

    .line 7
    iget-object v5, v5, Le/a/i/c/d/l;->b:Ljava/lang/String;

    .line 8
    iget-object v6, p1, Le/a/i/d0/e;->o:Ljava/lang/String;

    iget-object p1, p1, Le/a/i/d0/e;->l:Lcom/truecaller/ads/mediation/model/Placement;

    invoke-virtual {p1}, Lcom/truecaller/ads/mediation/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Le/a/i/d0/e$a;->f:Le/a/i/d0/e;

    iget-object v7, v7, Le/a/i/d0/e;->n:Le/a/i/c/d/l;

    .line 9
    iget-object v7, v7, Le/a/i/c/d/l;->a:Ljava/lang/String;

    .line 10
    invoke-direct {v4, v5, v6, p1, v7}, Le/a/i/d0/a0/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Le/a/i/d0/e$a;->f:Le/a/i/d0/e;

    iget-object p1, p1, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    iput v2, p0, Le/a/i/d0/e$a;->e:I

    .line 12
    invoke-interface {v1, v3, v4, p1, p0}, Le/a/i/d0/a0/q;->c(Landroid/content/Context;Le/a/i/d0/a0/r;Le/a/i/d0/z;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
