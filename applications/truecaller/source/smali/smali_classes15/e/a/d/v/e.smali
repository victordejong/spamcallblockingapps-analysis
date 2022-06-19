.class public final Le/a/d/v/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/v/e$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/d/v/e$a;

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/w/f;

.field public final e:Le/a/d/u/f;

.field public final f:Le/a/d/c0/z1/j;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/y1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/d/c0/q;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/t;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/p5/u;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/u/f;Le/a/d/c0/z1/j;Lo3/a;Lo3/a;Le/a/d/c0/q;Lo3/a;Le/a/p5/u;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/d/u/f;",
            "Le/a/d/c0/z1/j;",
            "Lo3/a<",
            "Le/a/d/c0/e;",
            ">;",
            "Lo3/a<",
            "Le/a/d/c0/y1/b;",
            ">;",
            "Le/a/d/c0/q;",
            "Lo3/a<",
            "Le/a/d/c0/t;",
            ">;",
            "Le/a/p5/u;",
            "Lo3/a<",
            "Le/a/d/c/a/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallComponent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepositoryFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyCallStatusUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCallStateModel"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logPriorityVoipCallEvent"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/e;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/d/v/e;->e:Le/a/d/u/f;

    iput-object p3, p0, Le/a/d/v/e;->f:Le/a/d/c0/z1/j;

    iput-object p4, p0, Le/a/d/v/e;->g:Lo3/a;

    iput-object p5, p0, Le/a/d/v/e;->h:Lo3/a;

    iput-object p6, p0, Le/a/d/v/e;->i:Le/a/d/c0/q;

    iput-object p7, p0, Le/a/d/v/e;->j:Lo3/a;

    iput-object p8, p0, Le/a/d/v/e;->k:Le/a/p5/u;

    iput-object p9, p0, Le/a/d/v/e;->l:Lo3/a;

    .line 2
    iput-object p1, p0, Le/a/d/v/e;->a:Ls1/w/f;

    .line 3
    new-instance p1, Le/a/d/v/e$a;

    invoke-direct {p1}, Le/a/d/v/e$a;-><init>()V

    iput-object p1, p0, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/v/e;->c:Lq3/a/x2/a1;

    return-void
.end method


# virtual methods
.method public a()Le/a/d/c0/z1/d;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/f;

    .line 3
    instance-of v1, v0, Le/a/d/v/f$c;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/d/v/f$c;

    .line 4
    iget-object v0, v0, Le/a/d/v/f$c;->a:Le/a/d/c0/z1/d;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Le/a/d/v/f$a;

    if-eqz v1, :cond_1

    check-cast v0, Le/a/d/v/f$a;

    .line 6
    iget-object v0, v0, Le/a/d/v/f$a;->b:Le/a/d/c0/z1/d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Le/a/d/v/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/d/v/f$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/d/v/f$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    :cond_1
    return-object v2
.end method

.method public c(Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/voip/VoipCallOptions;",
            ")",
            "Lq3/a/n0<",
            "Le/a/d/v/j;",
            ">;"
        }
    .end annotation

    const-string v0, "inviteNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callOptions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/v/e$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/d/v/e$f;-><init>(Le/a/d/v/e;Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/d/c0/z1/i;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/z1/i;",
            ")",
            "Lq3/a/n0<",
            "Le/a/d/v/b;",
            ">;"
        }
    .end annotation

    const-string v0, "callInfoRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/v/e$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/v/e$e;-><init>(Le/a/d/v/e;Le/a/d/c0/z1/i;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public e()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/e$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/v/e$c;-><init>(Le/a/d/v/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public f()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->c:Lq3/a/x2/a1;

    return-object v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/d/v/f$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/d/v/f$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 4
    :goto_0
    instance-of v1, v0, Le/a/d/a/v;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    check-cast v2, Le/a/d/a/v;

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->a:Ls1/w/f;

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    return-object v0
.end method

.method public h(Le/a/d/a/p;)Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/a/p;",
            ")",
            "Lq3/a/n0<",
            "Le/a/d/a/v;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/d/v/e$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/v/e$d;-><init>(Le/a/d/v/e;Le/a/d/a/p;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/v/e;->b()Le/a/d/v/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Le/a/d/v/b;)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/e$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/v/e$b;-><init>(Le/a/d/v/e;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public final k(Le/a/d/c0/d0;Le/a/d/c0/z1/i;Ljava/util/Set;)Le/a/d/v/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/d0<",
            "Le/a/d/v/f;",
            ">;",
            "Le/a/d/c0/z1/i;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Le/a/d/v/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/v/e;->e:Le/a/d/u/f;

    .line 2
    check-cast v0, Le/a/r1$k;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, v0, Le/a/r1$k;->b:Le/a/d/c0/z1/i;

    .line 6
    const-class v1, Le/a/d/c0/z1/i;

    invoke-static {p2, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v1, Le/a/r1$l;

    iget-object v2, v0, Le/a/r1$k;->a:Le/a/r1;

    iget-object v0, v0, Le/a/r1$k;->b:Le/a/d/c0/z1/i;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Le/a/r1$l;-><init>(Le/a/r1;Le/a/d/c0/z1/i;Le/a/h1;)V

    .line 8
    iget-object v0, v1, Le/a/r1$l;->d0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/b;

    .line 9
    invoke-interface {v0, p3}, Le/a/d/v/k/j;->j(Ljava/util/Set;)Lq3/a/p1;

    .line 10
    invoke-virtual {p0, v0}, Le/a/d/v/e;->j(Le/a/d/v/b;)Lq3/a/p1;

    .line 11
    new-instance p3, Le/a/d/v/f$a;

    invoke-direct {p3, v0, p2}, Le/a/d/v/f$a;-><init>(Le/a/d/v/b;Le/a/d/c0/z1/d;)V

    invoke-interface {p1, p3}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final l(Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/voip/VoipCallOptions;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/v/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    sget-object v2, Le/a/d/v/j$b;->a:Le/a/d/v/j$b;

    sget-object v3, Le/a/d/v/f$b;->a:Le/a/d/v/f$b;

    sget-object v4, Le/a/d/v/j$e;->a:Le/a/d/v/j$e;

    instance-of v5, v0, Le/a/d/v/e$g;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Le/a/d/v/e$g;

    iget v6, v5, Le/a/d/v/e$g;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Le/a/d/v/e$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Le/a/d/v/e$g;

    invoke-direct {v5, v1, v0}, Le/a/d/v/e$g;-><init>(Le/a/d/v/e;Ls1/w/d;)V

    :goto_0
    iget-object v0, v5, Le/a/d/v/e$g;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v5, Le/a/d/v/e$g;->e:I

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    if-eq v7, v12, :cond_5

    if-eq v7, v8, :cond_4

    if-eq v7, v9, :cond_3

    if-eq v7, v10, :cond_2

    if-ne v7, v11, :cond_1

    iget-object v4, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/z1/i;

    iget-object v6, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    check-cast v6, Le/a/d/c0/d0;

    iget-object v7, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    check-cast v7, Lq3/a/b3/c;

    iget-object v8, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    iget-object v5, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    check-cast v5, Le/a/d/v/e;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v7, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/d0;

    iget-object v8, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    check-cast v8, Lq3/a/b3/c;

    iget-object v9, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    iget-object v10, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    check-cast v10, Le/a/d/v/e;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :cond_3
    iget-object v7, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/d0;

    iget-object v8, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    check-cast v8, Lq3/a/b3/c;

    iget-object v9, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    iget-object v10, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    check-cast v10, Le/a/d/v/e;

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_6

    :cond_4
    iget-object v7, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/d0;

    iget-object v8, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    check-cast v8, Lq3/a/b3/c;

    iget-object v9, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/voip/VoipCallOptions;

    iget-object v10, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/Set;

    iget-object v11, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    check-cast v11, Le/a/d/v/e;

    :try_start_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v15, v8

    move-object v8, v7

    move-object v7, v15

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :cond_5
    iget-object v7, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;

    check-cast v7, Lq3/a/b3/c;

    iget-object v9, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    check-cast v9, Le/a/d/c0/r;

    iget-object v10, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    check-cast v10, Lcom/truecaller/voip/VoipCallOptions;

    iget-object v11, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    check-cast v11, Ljava/util/Set;

    iget-object v12, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    check-cast v12, Le/a/d/v/e;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v9

    move-object v9, v7

    move-object v7, v11

    move-object v11, v12

    goto :goto_1

    :cond_6
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v9, v1, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 5
    iget-object v0, v9, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 6
    iput-object v1, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    iput-object v9, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    iput-object v0, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;

    iput v12, v5, Le/a/d/v/e$g;->e:I

    invoke-interface {v0, v13, v5}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_7

    return-object v6

    :cond_7
    move-object v11, v1

    move-object v15, v9

    move-object v9, v0

    move-object v0, v15

    .line 7
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 8
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Initiating outgoing call. Invite numbers: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v4, v2

    goto :goto_5

    .line 10
    :cond_8
    iget-object v12, v11, Le/a/d/v/e;->k:Le/a/p5/u;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 11
    :try_start_6
    iget-wide v13, v10, Lcom/truecaller/voip/VoipCallOptions;->a:J

    .line 12
    iput-object v11, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    iput-object v7, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    iput-object v10, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    iput-object v9, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    iput-object v0, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;

    iput v8, v5, Le/a/d/v/e$g;->e:I

    invoke-interface {v12, v13, v14, v5}, Le/a/p5/u;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v8, v6, :cond_9

    return-object v6

    :cond_9
    move-object v15, v8

    move-object v8, v0

    move-object v0, v15

    move-object/from16 v16, v10

    move-object v10, v7

    move-object v7, v9

    move-object/from16 v9, v16

    :goto_2
    :try_start_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v4, Le/a/d/v/j$c;->a:Le/a/d/v/j$c;

    goto :goto_4

    .line 13
    :cond_a
    iget-object v0, v11, Le/a/d/v/e;->b:Le/a/d/v/e$a;

    .line 14
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/f;

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    if-eqz v0, :cond_d

    .line 15
    invoke-virtual {v11}, Le/a/d/v/e;->a()Le/a/d/c0/z1/d;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Le/a/d/c0/z1/d;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    .line 16
    :goto_3
    invoke-interface {v0, v10}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17
    sget-object v4, Le/a/d/v/j$a;->a:Le/a/d/v/j$a;

    :cond_c
    :goto_4
    move-object v9, v7

    move-object v0, v8

    move-object v7, v10

    :goto_5
    move-object v8, v9

    move-object v10, v11

    move-object v9, v7

    move-object v7, v0

    goto :goto_9

    .line 18
    :cond_d
    iget-object v0, v11, Le/a/d/v/e;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/t;

    .line 19
    iget-wide v13, v9, Lcom/truecaller/voip/VoipCallOptions;->b:J

    .line 20
    iput-object v11, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    iput-object v10, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    iput-object v7, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    iput-object v8, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v9, 0x0

    :try_start_8
    iput-object v9, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v9, 0x3

    :try_start_9
    iput v9, v5, Le/a/d/v/e$g;->e:I

    invoke-interface {v0, v13, v14, v5}, Le/a/d/c0/t;->c(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-ne v0, v6, :cond_e

    return-object v6

    :cond_e
    move-object v9, v10

    move-object v10, v11

    move-object v15, v8

    move-object v8, v7

    move-object v7, v15

    :goto_6
    :try_start_a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_9

    .line 21
    :cond_f
    iput-object v10, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    iput-object v9, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    iput-object v8, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    iput-object v7, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v5, Le/a/d/v/e$g;->e:I

    invoke-virtual {v10, v9, v5}, Le/a/d/v/e;->m(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_10

    return-object v6

    :cond_10
    :goto_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 22
    sget-object v4, Le/a/d/v/j$d;->a:Le/a/d/v/j$d;

    goto :goto_9

    .line 23
    :cond_11
    iget-object v0, v10, Le/a/d/v/e;->i:Le/a/d/c0/q;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-boolean v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    if-nez v0, :cond_13

    .line 26
    sget-boolean v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_12

    goto :goto_8

    :cond_12
    const/4 v12, 0x0

    :cond_13
    :goto_8
    if-eqz v12, :cond_14

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_15

    const/4 v0, 0x0

    .line 27
    invoke-interface {v8, v0}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v4

    .line 28
    :cond_15
    :try_start_b
    iget-object v0, v10, Le/a/d/v/e;->f:Le/a/d/c0/z1/j;

    invoke-virtual {v0}, Le/a/d/c0/z1/j;->a()Le/a/d/c0/z1/i;

    move-result-object v4

    .line 29
    new-instance v0, Le/a/d/v/f$c;

    invoke-direct {v0, v4}, Le/a/d/v/f$c;-><init>(Le/a/d/c0/z1/d;)V

    invoke-interface {v7, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 30
    iput-object v10, v5, Le/a/d/v/e$g;->g:Ljava/lang/Object;

    iput-object v9, v5, Le/a/d/v/e$g;->h:Ljava/lang/Object;

    iput-object v8, v5, Le/a/d/v/e$g;->i:Ljava/lang/Object;

    iput-object v7, v5, Le/a/d/v/e$g;->j:Ljava/lang/Object;

    iput-object v4, v5, Le/a/d/v/e$g;->k:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v5, Le/a/d/v/e$g;->e:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v0, v4

    check-cast v0, Le/a/d/c0/z1/k;

    :try_start_c
    invoke-virtual {v0, v9, v5}, Le/a/d/c0/z1/k;->x(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-ne v0, v6, :cond_16

    return-object v6

    :cond_16
    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v5, v10

    :goto_a
    :try_start_d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 31
    invoke-interface {v6, v3}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_b
    const/4 v0, 0x0

    .line 32
    invoke-interface {v7, v0}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v2

    .line 33
    :cond_17
    :try_start_e
    invoke-virtual {v5, v6, v4, v8}, Le/a/d/v/e;->k(Le/a/d/c0/d0;Le/a/d/c0/z1/i;Ljava/util/Set;)Le/a/d/v/b;

    move-result-object v0

    .line 34
    iget-object v2, v5, Le/a/d/v/e;->l:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/c/a/f;

    invoke-interface {v2, v4}, Le/a/d/c/a/f;->a(Le/a/d/c0/z1/i;)V

    .line 35
    new-instance v2, Le/a/d/v/j$f;

    invoke-direct {v2, v0}, Le/a/d/v/j$f;-><init>(Le/a/d/v/b;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v9, v7

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v7, v9

    :goto_c
    move-object v8, v7

    goto :goto_e

    :catchall_4
    move-exception v0

    :goto_d
    move-object v8, v9

    :goto_e
    const/4 v2, 0x0

    .line 36
    invoke-interface {v8, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method

.method public final m(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/v/e$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/e$h;

    iget v1, v0, Le/a/d/v/e$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/e$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/e$h;

    invoke-direct {v0, p0, p2}, Le/a/d/v/e$h;-><init>(Le/a/d/v/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/e$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/e$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/v/e$h;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/d/v/e$h;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/v/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    iget-object v4, v2, Le/a/d/v/e;->h:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/y1/b;

    iput-object v2, v0, Le/a/d/v/e$h;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/v/e$h;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/e$h;->e:I

    invoke-interface {v4, p2, v0}, Le/a/d/c0/y1/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
