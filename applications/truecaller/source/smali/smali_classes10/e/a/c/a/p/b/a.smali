.class public final Le/a/c/a/p/b/a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/c/a/p/c/d;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$filterRelevantUpcomingCards$1"
    f = "GetInsightsSmartFeedUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/p/b/g;

.field public final synthetic g:Le/a/c/a/p/c/e;

.field public final synthetic h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/c/a/p/b/g;Le/a/c/a/p/c/e;Ljava/util/Set;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/b/a;->f:Le/a/c/a/p/b/g;

    iput-object p2, p0, Le/a/c/a/p/b/a;->g:Le/a/c/a/p/c/e;

    iput-object p3, p0, Le/a/c/a/p/b/a;->h:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/b/a;

    iget-object v1, p0, Le/a/c/a/p/b/a;->f:Le/a/c/a/p/b/g;

    iget-object v2, p0, Le/a/c/a/p/b/a;->g:Le/a/c/a/p/c/e;

    iget-object v3, p0, Le/a/c/a/p/b/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/c/a/p/b/a;-><init>(Le/a/c/a/p/b/g;Le/a/c/a/p/c/e;Ljava/util/Set;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/b/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/b/a;

    iget-object v1, p0, Le/a/c/a/p/b/a;->f:Le/a/c/a/p/b/g;

    iget-object v2, p0, Le/a/c/a/p/b/a;->g:Le/a/c/a/p/c/e;

    iget-object v3, p0, Le/a/c/a/p/b/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/c/a/p/b/a;-><init>(Le/a/c/a/p/b/g;Le/a/c/a/p/c/e;Ljava/util/Set;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/p/b/a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/p/b/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/b/a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/p/c/d;

    .line 2
    iget-object v0, p0, Le/a/c/a/p/b/a;->g:Le/a/c/a/p/c/e;

    .line 3
    iget-boolean v0, v0, Le/a/c/a/p/c/e;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 4
    instance-of v0, p1, Le/a/c/a/p/c/d$e;

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Le/a/c/a/p/b/a;->f:Le/a/c/a/p/b/g;

    check-cast p1, Le/a/c/a/p/c/d$e;

    .line 6
    iget-object v3, p1, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 9
    invoke-virtual {v0}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v0

    .line 10
    iget-object v4, v3, Le/a/c/y/m;->e:Lw3/b/a/b;

    .line 11
    invoke-virtual {v4}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v4

    .line 12
    iget-object v5, v3, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 13
    iget-object v5, v5, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 14
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    const/4 v7, 0x5

    if-eq v5, v7, :cond_2

    const/4 v7, 0x7

    if-eq v5, v7, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v4}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 16
    iget-object v0, v3, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 17
    iget-object v0, v0, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    .line 18
    sget-object v3, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryReadyForPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v4, v6}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v4, v6}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    if-gtz v0, :cond_3

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    iget-object v0, p0, Le/a/c/a/p/b/a;->h:Ljava/util/Set;

    .line 22
    iget-object p1, p1, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 23
    iget-object p1, p1, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    .line 25
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
