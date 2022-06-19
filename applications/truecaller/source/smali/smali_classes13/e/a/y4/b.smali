.class public final Le/a/y4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y4/a;


# instance fields
.field public final a:I

.field public final b:Ls1/w/f;

.field public final c:Le/a/k3/j/b;

.field public final d:Le/a/l4/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k3/j/b;Le/a/l4/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y4/b;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/y4/b;->c:Le/a/k3/j/b;

    iput-object p3, p0, Le/a/y4/b;->d:Le/a/l4/c;

    const/16 p1, 0x18

    .line 2
    iput p1, p0, Le/a/y4/b;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ls1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/y4/b$a;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/y4/b$a;

    iget v5, v4, Le/a/y4/b$a;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/y4/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/y4/b$a;

    invoke-direct {v4, p0, v2}, Le/a/y4/b$a;-><init>(Le/a/y4/b;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/y4/b$a;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/y4/b$a;->e:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Le/a/y4/b$a;->j:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    iget-object v5, v4, Le/a/y4/b$a;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Le/a/y4/b$a;->h:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v4, v4, Le/a/y4/b$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/y4/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v10, v5

    move-object v1, v6

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez v1, :cond_3

    return-object v3

    .line 4
    :cond_3
    iget-object v2, v0, Le/a/y4/b;->b:Ls1/w/f;

    new-instance v6, Le/a/y4/b$b;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v1, v8}, Le/a/y4/b$b;-><init>(Le/a/y4/b;Ljava/lang/String;Ls1/w/d;)V

    iput-object v0, v4, Le/a/y4/b$a;->g:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v4, Le/a/y4/b$a;->h:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v4, Le/a/y4/b$a;->i:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v4, Le/a/y4/b$a;->j:Ljava/lang/Object;

    iput v7, v4, Le/a/y4/b$a;->e:I

    invoke-static {v2, v6, v4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_4

    return-object v5

    :cond_4
    move-object v4, v0

    move-object v10, v8

    move-object v13, v9

    :goto_1
    move-object v9, v2

    check-cast v9, Lcom/truecaller/data/entity/Contact;

    if-eqz v9, :cond_8

    const-string v2, "withContext(asyncContext\u2026Number) } ?: return false"

    invoke-static {v9, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    if-nez v2, :cond_5

    return-object v3

    .line 6
    :cond_5
    iget-object v2, v4, Le/a/y4/b;->d:Le/a/l4/c;

    invoke-static {v2, v9}, Le/a/e/a2;->C(Le/a/l4/c;Lcom/truecaller/data/entity/Contact;)Le/a/l4/e;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 7
    iget-object v5, v2, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v5, :cond_8

    .line 8
    iget-object v6, v2, Le/a/l4/e;->d:Lw3/b/a/b;

    if-eqz v6, :cond_6

    .line 9
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object v5

    sget-object v6, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->CALL:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    if-ne v5, v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_8

    .line 10
    iget-object v2, v2, Le/a/l4/e;->d:Lw3/b/a/b;

    .line 11
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    if-ne v2, v5, :cond_7

    const-wide/16 v5, 0x0

    goto :goto_3

    .line 12
    :cond_7
    invoke-static {v2}, Lw3/b/a/e;->c(Lw3/b/a/z;)J

    move-result-wide v6

    .line 13
    invoke-static {v5}, Lw3/b/a/e;->c(Lw3/b/a/z;)J

    move-result-wide v11

    .line 14
    invoke-static {v11, v12, v6, v7}, Ls1/a/a/a/v0/f/d;->f3(JJ)J

    move-result-wide v5

    :goto_3
    const-wide/32 v7, 0x36ee80

    .line 15
    div-long/2addr v5, v7

    .line 16
    iget v2, v4, Le/a/y4/b;->a:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gtz v2, :cond_8

    const/4 v11, 0x0

    const-string v12, "callMeBackPopupInApp"

    move-object v8, v1

    .line 17
    invoke-static/range {v8 .. v13}, Lcom/truecaller/ui/CallMeBackActivity;->qa(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Landroid/content/Intent;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_8
    return-object v3
.end method
