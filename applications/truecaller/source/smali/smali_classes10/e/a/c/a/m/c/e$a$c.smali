.class public final Le/a/c/a/m/c/e$a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.view.InsightsCategorizerSeedFetchFragment$fetchSeedData$1$3"
    f = "InsightsCategorizerSeedFetchFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/a/m/c/e$a;

.field public final synthetic f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/e$a;Ljava/lang/Throwable;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/e$a$c;->e:Le/a/c/a/m/c/e$a;

    iput-object p2, p0, Le/a/c/a/m/c/e$a$c;->f:Ljava/lang/Throwable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/c/a/m/c/e$a$c;

    iget-object v0, p0, Le/a/c/a/m/c/e$a$c;->e:Le/a/c/a/m/c/e$a;

    iget-object v1, p0, Le/a/c/a/m/c/e$a$c;->f:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/e$a$c;-><init>(Le/a/c/a/m/c/e$a;Ljava/lang/Throwable;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/m/c/e$a$c;->e:Le/a/c/a/m/c/e$a;

    iget-object v1, p0, Le/a/c/a/m/c/e$a$c;->f:Ljava/lang/Throwable;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/c/a/m/c/e$a;->h:Le/a/c/a/m/c/e;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v0}, Le/a/c/a/m/c/g;->TA(Ljava/lang/String;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/m/c/e$a$c;->e:Le/a/c/a/m/c/e$a;

    iget-object p1, p1, Le/a/c/a/m/c/e$a;->h:Le/a/c/a/m/c/e;

    iget-object v0, p0, Le/a/c/a/m/c/e$a$c;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Le/a/c/a/m/c/g;->TA(Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
