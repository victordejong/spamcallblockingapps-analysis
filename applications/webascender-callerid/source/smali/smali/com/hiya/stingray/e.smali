.class public final Lcom/hiya/stingray/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/w1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/hiya/stingray/manager/o2;

.field private final d:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/service/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/hiya/stingray/util/a0;

.field private final f:Lcom/hiya/stingray/manager/y1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh/a;Lcom/hiya/stingray/manager/o2;Lh/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/y1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/w1;",
            ">;",
            "Lcom/hiya/stingray/manager/o2;",
            "Lh/a<",
            "Lcom/hiya/stingray/service/a/b;",
            ">;",
            "Lcom/hiya/stingray/util/a0;",
            "Lcom/hiya/stingray/manager/y1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManagerLazy"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreenerHelperLazy"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/e;->b:Lh/a;

    iput-object p3, p0, Lcom/hiya/stingray/e;->c:Lcom/hiya/stingray/manager/o2;

    iput-object p4, p0, Lcom/hiya/stingray/e;->d:Lh/a;

    iput-object p5, p0, Lcom/hiya/stingray/e;->e:Lcom/hiya/stingray/util/a0;

    iput-object p6, p0, Lcom/hiya/stingray/e;->f:Lcom/hiya/stingray/manager/y1;

    return-void
.end method

.method private final d(Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Z
    .locals 31

    move-object/from16 v1, p0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, v1, Lcom/hiya/stingray/e;->c:Lcom/hiya/stingray/manager/o2;

    iget-object v2, v1, Lcom/hiya/stingray/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    if-nez p3, :cond_1

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/hiya/stingray/e;->f:Lcom/hiya/stingray/manager/y1;

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/y1;->c(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->onErrorReturnItem(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->blockingFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    :goto_0
    new-instance v2, Lcom/hiya/client/callerid/ui/b0/e;

    new-instance v15, Lg/g/b/c/f;

    move-object v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v30, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x3fffff

    const/16 v29, 0x0

    invoke-direct/range {v3 .. v29}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    const-string v3, "isContact"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object/from16 v3, v30

    invoke-direct {v2, v3, v0}, Lcom/hiya/client/callerid/ui/b0/e;-><init>(Lg/g/b/c/f;Z)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    .line 6
    :goto_1
    new-instance v3, Lcom/hiya/stingray/manager/n1;

    sget-object v0, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object v4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    invoke-direct {v3, v0, v4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    .line 7
    :try_start_1
    iget-object v0, v1, Lcom/hiya/stingray/e;->b:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/manager/w1;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 10
    :goto_2
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v7

    .line 11
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v8

    .line 12
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v9

    const/4 v10, 0x0

    .line 13
    sget-object v11, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    .line 14
    invoke-virtual/range {v4 .. v11}, Lcom/hiya/stingray/manager/w1;->c(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;

    move-result-object v0

    .line 15
    new-instance v2, Lcom/hiya/stingray/e$a;

    invoke-direct {v2, v3}, Lcom/hiya/stingray/e$a;-><init>(Lcom/hiya/stingray/manager/n1;)V

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Li/c/b0/b/v;->blockingFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/n1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 17
    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 18
    :goto_3
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    sget-object v2, Lcom/hiya/stingray/t/b0;->CALL_SCREENER_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne v0, v2, :cond_3

    .line 19
    iget-object v0, v1, Lcom/hiya/stingray/e;->d:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/service/a/b;

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/service/a/b;->b(Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/b0;->isBlocked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/hiya/client/callerid/ui/b0/j;Z)Z
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/hiya/stingray/e;->d(Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;)Z
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/hiya/stingray/e;->d(Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/hiya/client/callerid/ui/b0/j;Z)V
    .locals 0

    const-string p2, "number"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/e;->e:Lcom/hiya/stingray/util/a0;

    new-instance p2, Lcom/hiya/stingray/l$a;

    invoke-direct {p2}, Lcom/hiya/stingray/l$a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method
