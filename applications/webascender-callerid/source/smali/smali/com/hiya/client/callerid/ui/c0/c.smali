.class public final Lcom/hiya/client/callerid/ui/c0/c;
.super Lcom/hiya/client/callerid/ui/c0/e;
.source "SourceFile"


# instance fields
.field private final j:Landroid/content/Context;

.field private final k:Lcom/hiya/client/callerid/ui/a0/m;

.field private final l:Li/c/b0/c/a;

.field private final m:Lcom/hiya/client/callerid/ui/a0/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/overlay/d;Lcom/hiya/client/callerid/ui/overlay/g/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/k;Lg/g/d/h;)V
    .locals 15

    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    const-string v0, "context"

    invoke-static {v11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayManager"

    invoke-static {v12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdManager"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayPresenter"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDisplayTypeMapper"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {v13, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneEventHandler"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayBehaviorConfig"

    invoke-static {v14, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaTracer"

    move-object/from16 v8, p9

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/hiya/client/callerid/ui/c0/e;-><init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/overlay/d;Lcom/hiya/client/callerid/ui/overlay/g/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/x/a;Lg/g/d/h;Lcom/hiya/client/callerid/ui/a0/k;)V

    iput-object v11, v10, Lcom/hiya/client/callerid/ui/c0/c;->j:Landroid/content/Context;

    iput-object v12, v10, Lcom/hiya/client/callerid/ui/c0/c;->k:Lcom/hiya/client/callerid/ui/a0/m;

    iput-object v13, v10, Lcom/hiya/client/callerid/ui/c0/c;->l:Li/c/b0/c/a;

    iput-object v14, v10, Lcom/hiya/client/callerid/ui/c0/c;->m:Lcom/hiya/client/callerid/ui/a0/k;

    return-void
.end method


# virtual methods
.method public final r(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/a/e/e/n;JZLg/g/d/e;)V
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDirection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationTimer"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentSpan"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/c;->k:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/m;->r()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/hiya/client/callerid/ui/c0/c;->t(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/client/callerid/ui/c0/e;->k(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/c;->l:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public final t(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)Z
    .locals 1

    const-string v0, "eventDirection"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/c;->j:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hiya/client/callerid/ui/e0/c;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/c;->m:Lcom/hiya/client/callerid/ui/a0/k;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
