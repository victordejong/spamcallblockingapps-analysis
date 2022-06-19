.class public Lcom/hiya/client/callerid/ui/c0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/c0/e$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/client/callerid/ui/a0/m;

.field private final d:Lcom/hiya/client/callerid/ui/a0/d;

.field private final e:Lcom/hiya/client/callerid/ui/overlay/d;

.field private final f:Li/c/b0/c/a;

.field private final g:Lcom/hiya/client/callerid/ui/x/a;

.field private final h:Lg/g/d/h;

.field private final i:Lcom/hiya/client/callerid/ui/a0/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/overlay/d;Lcom/hiya/client/callerid/ui/overlay/g/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/x/a;Lg/g/d/h;Lcom/hiya/client/callerid/ui/a0/k;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayPresenter"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDisplayTypeMapper"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "compositeDisposable"

    invoke-static {p6, p5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "sendPhoneEventHandler"

    invoke-static {p7, p5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "hiyaTracer"

    invoke-static {p8, p5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "overlayBehaviorConfig"

    invoke-static {p9, p5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e;->c:Lcom/hiya/client/callerid/ui/a0/m;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e;->d:Lcom/hiya/client/callerid/ui/a0/d;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/c0/e;->e:Lcom/hiya/client/callerid/ui/overlay/d;

    iput-object p6, p0, Lcom/hiya/client/callerid/ui/c0/e;->f:Li/c/b0/c/a;

    iput-object p7, p0, Lcom/hiya/client/callerid/ui/c0/e;->g:Lcom/hiya/client/callerid/ui/x/a;

    iput-object p8, p0, Lcom/hiya/client/callerid/ui/c0/e;->h:Lg/g/d/h;

    iput-object p9, p0, Lcom/hiya/client/callerid/ui/c0/e;->i:Lcom/hiya/client/callerid/ui/a0/k;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/hiya/client/callerid/ui/c0/e;->j(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V

    return-void
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/c0/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/c0/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/a0/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/c0/e;->c:Lcom/hiya/client/callerid/ui/a0/m;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/overlay/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/c0/e;->e:Lcom/hiya/client/callerid/ui/overlay/d;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/client/callerid/ui/c0/e;)Lcom/hiya/client/callerid/ui/x/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/c0/e;->g:Lcom/hiya/client/callerid/ui/x/a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/client/callerid/ui/c0/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/client/callerid/ui/c0/e;->a:Z

    return p0
.end method

.method public static final synthetic g(Lcom/hiya/client/callerid/ui/c0/e;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/d/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/hiya/client/callerid/ui/c0/e;->o(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/d/e;)V

    return-void
.end method

.method public static final synthetic h(Lcom/hiya/client/callerid/ui/c0/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/c0/e;->a:Z

    return-void
.end method

.method private final j(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    .line 1
    invoke-direct {v10, v11, v12, v0, v1}, Lcom/hiya/client/callerid/ui/c0/e;->m(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Landroid/content/Context;Lg/g/d/e;)Lg/g/d/e;

    move-result-object v13

    .line 2
    new-instance v8, Lkotlin/w/c/q;

    invoke-direct {v8}, Lkotlin/w/c/q;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v8, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 3
    iget-object v1, v10, Lcom/hiya/client/callerid/ui/c0/e;->d:Lcom/hiya/client/callerid/ui/a0/d;

    .line 4
    iget-object v2, v10, Lcom/hiya/client/callerid/ui/c0/e;->i:Lcom/hiya/client/callerid/ui/a0/k;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/a0/k;->b()Z

    move-result v2

    .line 5
    invoke-virtual {v1, v12, v11, v0, v2}, Lcom/hiya/client/callerid/ui/a0/d;->f(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/b/c/t;Z)Li/c/b0/b/v;

    move-result-object v9

    .line 6
    new-instance v14, Lcom/hiya/client/callerid/ui/c0/e$b;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, p6

    move-object/from16 v5, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/hiya/client/callerid/ui/c0/e$b;-><init>(Lcom/hiya/client/callerid/ui/c0/e;Lkotlin/w/c/q;Lg/g/b/c/k;ZLcom/hiya/client/callerid/ui/b0/j;J)V

    invoke-virtual {v9, v14}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Li/c/b0/b/v;->timeout(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/client/callerid/ui/c0/e$c;

    invoke-direct {v1, v8}, Lcom/hiya/client/callerid/ui/c0/e$c;-><init>(Lkotlin/w/c/q;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/hiya/client/callerid/ui/c0/e$d;

    invoke-direct {v1, v13}, Lcom/hiya/client/callerid/ui/c0/e$d;-><init>(Lg/g/d/e;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doFinally(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v14

    .line 12
    new-instance v15, Lcom/hiya/client/callerid/ui/c0/e$e;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/hiya/client/callerid/ui/c0/e$e;-><init>(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/d/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JZLcom/hiya/client/callerid/ui/overlay/f;Lg/g/a/e/e/n;)V

    .line 13
    new-instance v7, Lcom/hiya/client/callerid/ui/c0/e$f;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hiya/client/callerid/ui/c0/e$f;-><init>(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/d/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;J)V

    .line 14
    invoke-virtual {v14, v15, v7}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 15
    iget-object v1, v10, Lcom/hiya/client/callerid/ui/c0/e;->f:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private final l(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/d/e;)Lg/g/d/e;
    .locals 2

    .line 1
    sget-object v0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e;->h:Lg/g/d/h;

    const-string v1, "fetchAndShowCallerId"

    invoke-interface {v0, v1, p3}, Lg/g/d/h;->c(Ljava/lang/String;Lg/g/d/e;)Lg/g/d/e;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    new-instance p3, Lg/g/d/l/b;

    invoke-direct {p3}, Lg/g/d/l/b;-><init>()V

    .line 4
    :goto_0
    invoke-interface {p3, p1}, Lg/g/d/e;->m(Lg/g/b/c/k;)V

    .line 5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lg/g/d/e;->k(Ljava/lang/String;)V

    return-object p3
.end method

.method private final m(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Landroid/content/Context;Lg/g/d/e;)Lg/g/d/e;
    .locals 2

    .line 1
    sget-object v0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e;->h:Lg/g/d/h;

    const-string v1, "showActual"

    invoke-interface {v0, v1, p4}, Lg/g/d/h;->c(Ljava/lang/String;Lg/g/d/e;)Lg/g/d/e;

    move-result-object p4

    goto :goto_0

    .line 3
    :cond_0
    new-instance p4, Lg/g/d/l/b;

    invoke-direct {p4}, Lg/g/d/l/b;-><init>()V

    .line 4
    :goto_0
    invoke-interface {p4, p1}, Lg/g/d/e;->m(Lg/g/b/c/k;)V

    .line 5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lg/g/d/e;->k(Ljava/lang/String;)V

    .line 6
    invoke-static {p4, p3}, Lcom/hiya/client/callerid/ui/e0/e;->c(Lg/g/d/e;Landroid/content/Context;)V

    return-object p4
.end method

.method private final n(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e;->d:Lcom/hiya/client/callerid/ui/a0/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/hiya/client/callerid/ui/a0/d;->e(Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/b0/j;ZILjava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/client/callerid/ui/c0/e$j;

    invoke-direct {v1, p0, p2, p1}, Lcom/hiya/client/callerid/ui/c0/e$j;-><init>(Lcom/hiya/client/callerid/ui/c0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)V

    .line 5
    new-instance p1, Lcom/hiya/client/callerid/ui/c0/e$k;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/c0/e$k;-><init>(Lcom/hiya/client/callerid/ui/c0/e;)V

    .line 6
    invoke-virtual {v0, v1, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method private final o(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/d/e;)V
    .locals 9

    .line 1
    invoke-direct {p0, p2, p3, p1, p6}, Lcom/hiya/client/callerid/ui/c0/e;->p(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/d/e;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e;->g:Lcom/hiya/client/callerid/ui/x/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p6

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    const-string p6, ""

    :goto_0
    move-object v1, p6

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result p1

    move v3, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v5, p3

    move-wide v6, p4

    .line 5
    invoke-virtual/range {v0 .. v8}, Lcom/hiya/client/callerid/ui/x/a;->e(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JI)V

    return-void
.end method

.method private final p(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/d/e;)V
    .locals 2

    .line 1
    sget-object v0, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e;->h:Lg/g/d/h;

    const-string v1, "sendPhoneEvent"

    invoke-interface {v0, v1, p4}, Lg/g/d/h;->c(Ljava/lang/String;Lg/g/d/e;)Lg/g/d/e;

    move-result-object p4

    .line 3
    invoke-interface {p4, p1}, Lg/g/d/e;->m(Lg/g/b/c/k;)V

    .line 4
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lg/g/d/e;->k(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e;->b:Landroid/content/Context;

    invoke-static {p4, p1}, Lcom/hiya/client/callerid/ui/e0/e;->c(Lg/g/d/e;Landroid/content/Context;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result p1

    invoke-interface {p4, p1}, Lg/g/d/e;->g(Z)V

    .line 7
    invoke-virtual {p3}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-interface {p4, p1}, Lg/g/d/e;->b(Lg/g/b/c/f;)V

    .line 8
    :cond_0
    invoke-interface {p4}, Lg/g/d/e;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final i(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)Z
    .locals 0

    const-string p3, "number"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "eventDirection"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/hiya/client/callerid/ui/e0/a;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object p2, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result p3

    .line 4
    invoke-interface {p2, p1, p3}, Lcom/hiya/client/callerid/ui/a;->c(Lcom/hiya/client/callerid/ui/b0/j;Z)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    sget-object p2, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/c0/e;->n(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final k(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p7

    const-string v0, "eventDirection"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {v4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationTimer"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentSpan"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v4, v3}, Lcom/hiya/client/callerid/ui/d;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v11, Lcom/hiya/client/callerid/ui/c0/e;->a:Z

    .line 4
    invoke-direct {v11, v3, v4, v10}, Lcom/hiya/client/callerid/ui/c0/e;->l(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/d/e;)Lg/g/d/e;

    move-result-object v12

    .line 5
    new-instance v13, Lkotlin/w/c/n;

    invoke-direct {v13}, Lkotlin/w/c/n;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v13, Lkotlin/w/c/n;->f:Z

    .line 6
    iget-object v0, v11, Lcom/hiya/client/callerid/ui/c0/e;->d:Lcom/hiya/client/callerid/ui/a0/d;

    iget-object v1, v11, Lcom/hiya/client/callerid/ui/c0/e;->i:Lcom/hiya/client/callerid/ui/a0/k;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/a0/k;->b()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/hiya/client/callerid/ui/a0/d;->d(Lcom/hiya/client/callerid/ui/b0/j;Z)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v14

    .line 9
    new-instance v15, Lcom/hiya/client/callerid/ui/c0/e$g;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object v9, v12

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/hiya/client/callerid/ui/c0/e$g;-><init>(Lcom/hiya/client/callerid/ui/c0/e;Lkotlin/w/c/n;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;Lg/g/d/e;)V

    invoke-virtual {v14, v15}, Li/c/b0/b/v;->doFinally(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/client/callerid/ui/c0/e$h;

    invoke-direct {v1, v11, v13, v12}, Lcom/hiya/client/callerid/ui/c0/e$h;-><init>(Lcom/hiya/client/callerid/ui/c0/e;Lkotlin/w/c/n;Lg/g/d/e;)V

    .line 11
    new-instance v2, Lcom/hiya/client/callerid/ui/c0/e$i;

    invoke-direct {v2, v12}, Lcom/hiya/client/callerid/ui/c0/e$i;-><init>(Lg/g/d/e;)V

    .line 12
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 13
    iget-object v1, v11, Lcom/hiya/client/callerid/ui/c0/e;->f:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p2

    move/from16 v1, p3

    const-string v2, "phoneNumber"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventDirection"

    invoke-static {v3, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/c0/e;->c:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/a0/m;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v7, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v7}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v3, v1}, Lcom/hiya/client/callerid/ui/d;->f(Lg/g/b/c/k;Z)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v7}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2, v8, v8, v3, v1}, Lcom/hiya/client/callerid/ui/d;->m(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Z)Lcom/hiya/client/callerid/ui/d$c;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v9, v1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lcom/hiya/client/callerid/ui/d$c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/hiya/client/callerid/ui/d$c;-><init>(ZZLg/g/b/c/f;ILkotlin/w/c/g;)V

    .line 4
    :goto_0
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/c0/e;->c:Lcom/hiya/client/callerid/ui/a0/m;

    sget-object v2, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/hiya/client/callerid/ui/a0/m;->h(Z)Landroid/view/View;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/c0/e;->e:Lcom/hiya/client/callerid/ui/overlay/d;

    const/4 v5, 0x0

    .line 6
    new-instance v6, Lcom/hiya/client/callerid/ui/overlay/f;

    invoke-direct {v6, v1}, Lcom/hiya/client/callerid/ui/overlay/f;-><init>(Landroid/view/View;)V

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v9

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/overlay/d;->a(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;Lcom/hiya/client/callerid/ui/overlay/f;)V

    .line 8
    invoke-virtual {v7}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v8, v9}, Lcom/hiya/client/callerid/ui/d;->a(Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;)V

    :cond_3
    :goto_2
    return-void
.end method
