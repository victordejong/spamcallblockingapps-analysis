.class public final Le/a/c/w/n$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/n;->u(Z)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain$f;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/j;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.repository.BusinessInsightsRepositoryImpl$getUpcomingReminders$1"
    f = "BusinessInsightsRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Le/a/c/w/n;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/c/w/n;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/n$f;->g:Le/a/c/w/n;

    iput-boolean p2, p0, Le/a/c/w/n$f;->h:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ls1/w/d;

    const-string v0, "bills"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "travel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/w/n$f;->g:Le/a/c/w/n;

    iget-boolean v1, p0, Le/a/c/w/n$f;->h:Z

    .line 2
    invoke-interface {p3}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p3, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p3, v0, Le/a/c/w/n;->c:Le/a/c/a0/e;

    .line 6
    invoke-static {p1, p2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p3, Le/a/c/a0/f;

    invoke-virtual {p3, p1}, Le/a/c/a0/f;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1, v1}, Le/a/c/w/n;->c(Le/a/c/w/n;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/w/n$f;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Le/a/c/w/n$f;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2
    iget-object v1, p0, Le/a/c/w/n$f;->g:Le/a/c/w/n;

    .line 3
    iget-object v2, v1, Le/a/c/w/n;->c:Le/a/c/a0/e;

    .line 4
    invoke-static {p1, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast v2, Le/a/c/a0/f;

    invoke-virtual {v2, p1}, Le/a/c/a0/f;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iget-boolean v0, p0, Le/a/c/w/n$f;->h:Z

    invoke-static {v1, p1, v0}, Le/a/c/w/n;->c(Le/a/c/w/n;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
