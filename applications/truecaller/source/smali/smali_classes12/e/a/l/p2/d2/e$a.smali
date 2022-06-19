.class public final Le/a/l/p2/d2/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/d2/e;->a(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.feature.PremiumFeatureManagerImpl$isFeatureAvailableSync$1"
    f = "PremiumFeatureManager.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/d2/e;

.field public final synthetic g:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/d2/e$a;->f:Le/a/l/p2/d2/e;

    iput-object p2, p0, Le/a/l/p2/d2/e$a;->g:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iput-boolean p3, p0, Le/a/l/p2/d2/e$a;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/l/p2/d2/e$a;

    iget-object v0, p0, Le/a/l/p2/d2/e$a;->f:Le/a/l/p2/d2/e;

    iget-object v1, p0, Le/a/l/p2/d2/e$a;->g:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iget-boolean v2, p0, Le/a/l/p2/d2/e$a;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/d2/e$a;-><init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/d2/e$a;

    iget-object v0, p0, Le/a/l/p2/d2/e$a;->f:Le/a/l/p2/d2/e;

    iget-object v1, p0, Le/a/l/p2/d2/e$a;->g:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iget-boolean v2, p0, Le/a/l/p2/d2/e$a;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/d2/e$a;-><init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/d2/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/p2/d2/e$a;->e:I

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
    iget-object p1, p0, Le/a/l/p2/d2/e$a;->f:Le/a/l/p2/d2/e;

    iget-object v1, p0, Le/a/l/p2/d2/e$a;->g:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iget-boolean v3, p0, Le/a/l/p2/d2/e$a;->h:Z

    iput v2, p0, Le/a/l/p2/d2/e$a;->e:I

    .line 5
    iget-object v2, p1, Le/a/l/p2/d2/e;->f:Ls1/w/f;

    new-instance v4, Le/a/l/p2/d2/d;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v3, v5}, Le/a/l/p2/d2/d;-><init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V

    invoke-static {v2, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
