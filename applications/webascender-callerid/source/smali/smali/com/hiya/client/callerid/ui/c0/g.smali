.class public final Lcom/hiya/client/callerid/ui/c0/g;
.super Lcom/hiya/client/callerid/ui/c0/e;
.source "SourceFile"


# instance fields
.field private final j:Li/c/b0/c/a;

.field private final k:Lg/g/b/a/b;

.field private final l:Lcom/hiya/client/callerid/ui/a0/k;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/a0/m;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/overlay/d;Lcom/hiya/client/callerid/ui/overlay/g/b;Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/x/a;Lg/g/b/a/b;Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/k;Lg/g/d/h;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p9

    const-string v0, "overlayManager"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {v11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayPresenter"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDisplayTypeMapper"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdManager"

    move-object/from16 v3, p5

    invoke-static {v3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneEventHandler"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {v12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayBehaviorConfig"

    invoke-static {v13, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaTracer"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p9

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/hiya/client/callerid/ui/c0/e;-><init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/overlay/d;Lcom/hiya/client/callerid/ui/overlay/g/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/x/a;Lg/g/d/h;Lcom/hiya/client/callerid/ui/a0/k;)V

    iput-object v11, v10, Lcom/hiya/client/callerid/ui/c0/g;->j:Li/c/b0/c/a;

    iput-object v12, v10, Lcom/hiya/client/callerid/ui/c0/g;->k:Lg/g/b/a/b;

    iput-object v13, v10, Lcom/hiya/client/callerid/ui/c0/g;->l:Lcom/hiya/client/callerid/ui/a0/k;

    return-void
.end method


# virtual methods
.method public final r(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/a/e/e/n;JZLg/g/d/e;)V
    .locals 14

    move-object v9, p0

    move-object v2, p1

    move-object/from16 v5, p2

    move/from16 v7, p6

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDirection"

    invoke-static {v5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationTimer"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentSpan"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v9, Lcom/hiya/client/callerid/ui/c0/g;->l:Lcom/hiya/client/callerid/ui/a0/k;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v5, v0, :cond_0

    move-wide/from16 v10, p4

    .line 3
    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/hiya/client/callerid/ui/c0/e;->i(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)Z

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v5, v7}, Lcom/hiya/client/callerid/ui/c0/e;->q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Z)V

    goto/16 :goto_4

    :cond_1
    move-wide/from16 v10, p4

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    sget-object v0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v5, v0, :cond_5

    .line 6
    new-instance v1, Lcom/hiya/client/callerid/ui/c0/g$e;

    invoke-direct {v1, p1}, Lcom/hiya/client/callerid/ui/c0/g$e;-><init>(Lcom/hiya/client/callerid/ui/b0/j;)V

    invoke-static {v1}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object v1

    .line 7
    iget-object v3, v9, Lcom/hiya/client/callerid/ui/c0/g;->k:Lg/g/b/a/b;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->d()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->a()Ljava/lang/Short;

    move-result-object v12

    .line 10
    invoke-virtual {v3, v4, v12}, Lg/g/b/a/b;->b(Ljava/lang/String;Ljava/lang/Short;)Li/c/b0/b/e0;

    move-result-object v3

    if-ne v5, v0, :cond_4

    if-eqz v7, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    sget-object v0, Lcom/hiya/client/callerid/ui/c0/g$d;->a:Lcom/hiya/client/callerid/ui/c0/g$d;

    .line 12
    invoke-static {v1, v3, v0}, Li/c/b0/b/e0;->N(Li/c/b0/b/i0;Li/c/b0/b/i0;Li/c/b0/d/c;)Li/c/b0/b/e0;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v0

    .line 14
    :goto_2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 15
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    .line 16
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Li/c/b0/b/e0;->G(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e0;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/hiya/client/callerid/ui/c0/g$a;->f:Lcom/hiya/client/callerid/ui/c0/g$a;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->y(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v12

    .line 18
    new-instance v13, Lcom/hiya/client/callerid/ui/c0/g$b;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/hiya/client/callerid/ui/c0/g$b;-><init>(Lcom/hiya/client/callerid/ui/c0/g;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/b/c/k;Lg/g/a/e/e/n;ZLg/g/d/e;)V

    .line 19
    new-instance v0, Lcom/hiya/client/callerid/ui/c0/g$c;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/c0/g$c;-><init>(Lcom/hiya/client/callerid/ui/c0/g;)V

    .line 20
    invoke-virtual {v12, v13, v0}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/client/callerid/ui/c0/e;->k(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/g;->j:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method
