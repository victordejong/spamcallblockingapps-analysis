.class public abstract Le/a/r/b/n;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r/b/i;",
        ">;",
        "Le/a/r/b/h;"
    }
.end annotation


# instance fields
.field public d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/wizard/adschoices/AdsChoice;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/b0/b/l/a;

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/b0/e/f;


# direct methods
.method public constructor <init>(Le/a/b0/b/l/a;Ls1/w/f;Ls1/w/f;Le/a/b0/e/f;)V
    .locals 1

    const-string v0, "optOutRequester"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/r/b/n;->g:Le/a/b0/b/l/a;

    iput-object p2, p0, Le/a/r/b/n;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/r/b/n;->i:Ls1/w/f;

    iput-object p4, p0, Le/a/r/b/n;->j:Le/a/b0/e/f;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Le/a/r/b/n;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic Qj(Le/a/r/b/n;Lcom/truecaller/wizard/adschoices/AdsChoice;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/r/b/n;->Pj(Lcom/truecaller/wizard/adschoices/AdsChoice;ZZ)V

    return-void
.end method


# virtual methods
.method public final Ij()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r/b/n;->f:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v2

    :cond_4
    const-string v0, "states"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract Jj()Z
.end method

.method public final Kj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/b/n;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Lj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V
    .locals 2

    const-string v0, "choice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/b/n;->f:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/wizard/adschoices/AdsChoice;->PERSONALIZED_ADS:Lcom/truecaller/wizard/adschoices/AdsChoice;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Le/a/r/b/n;->d:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/r/b/i;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Le/a/r/b/n;->Oj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "states"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract Mj()V
.end method

.method public Nj()V
    .locals 0

    return-void
.end method

.method public final Oj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/b/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/r/b/i;->f(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/r/b/n;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/r/b/n$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le/a/r/b/n$a;-><init>(Le/a/r/b/n;ZLcom/truecaller/wizard/adschoices/AdsChoice;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Pj(Lcom/truecaller/wizard/adschoices/AdsChoice;ZZ)V
    .locals 0

    const-string p3, "choice"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/r/b/i;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Le/a/r/b/i;->g(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V

    .line 2
    :cond_0
    iget-object p3, p0, Le/a/r/b/n;->f:Ljava/util/Map;

    if-eqz p3, :cond_1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p1, "states"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final Rj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/b/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/r/b/n;->Ij()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Le/a/r/b/n;->Kj()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/r/b/i;->h(Z)V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Le/a/r/b/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/r/b/n;->j:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Lcom/truecaller/wizard/adschoices/AdsChoice;

    sget-object v2, Lcom/truecaller/wizard/adschoices/AdsChoice;->RESTRICTED_ADS:Lcom/truecaller/wizard/adschoices/AdsChoice;

    aput-object v2, v0, v1

    sget-object v1, Lcom/truecaller/wizard/adschoices/AdsChoice;->DIRECT_MARKETING:Lcom/truecaller/wizard/adschoices/AdsChoice;

    aput-object v1, v0, v3

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/truecaller/wizard/adschoices/AdsChoice;

    .line 5
    sget-object v2, Lcom/truecaller/wizard/adschoices/AdsChoice;->PERSONALIZED_ADS:Lcom/truecaller/wizard/adschoices/AdsChoice;

    aput-object v2, v0, v1

    sget-object v1, Lcom/truecaller/wizard/adschoices/AdsChoice;->DIRECT_MARKETING:Lcom/truecaller/wizard/adschoices/AdsChoice;

    aput-object v1, v0, v3

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/truecaller/wizard/adschoices/AdsChoice;

    .line 8
    invoke-virtual {v5}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getModifiable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    move v4, v5

    :cond_3
    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    move-object v6, v4

    check-cast v6, Lcom/truecaller/wizard/adschoices/AdsChoice;

    .line 12
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v2}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Le/a/r/b/n;->f:Ljava/util/Map;

    .line 14
    invoke-interface {p1, v0}, Le/a/r/b/i;->i(Ljava/lang/Iterable;)V

    .line 15
    invoke-interface {p1, v3}, Le/a/r/b/i;->f(Z)V

    .line 16
    invoke-virtual {p0}, Le/a/r/b/n;->Rj()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 17
    new-instance v9, Le/a/r/b/m;

    invoke-direct {v9, p0, p1, v5}, Le/a/r/b/m;-><init>(Le/a/r/b/n;Le/a/r/b/i;Ls1/w/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
