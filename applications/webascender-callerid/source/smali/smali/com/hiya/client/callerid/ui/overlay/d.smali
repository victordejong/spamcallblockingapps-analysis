.class public final Lcom/hiya/client/callerid/ui/overlay/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/client/callerid/ui/a0/r;

.field private final c:Ls/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/b/a/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/a0/r;Ls/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "compositeDisposable"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uiStateManager"

    invoke-static {p4, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "callerIdPresenter"

    invoke-static {p5, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/d;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/overlay/d;->b:Lcom/hiya/client/callerid/ui/a0/r;

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    return-void
.end method

.method private final b(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/d$c;Lcom/hiya/client/callerid/ui/overlay/f;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    invoke-virtual {v0, p1, p2, p3}, Ls/b;->e(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/hiya/client/callerid/ui/overlay/f;->l(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    invoke-virtual {v0, p1, p2, p3}, Ls/b;->d(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p5, v0}, Lcom/hiya/client/callerid/ui/overlay/f;->j(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/d$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    invoke-virtual {v0, p1, p2, p3}, Ls/b;->a(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p5, v0}, Lcom/hiya/client/callerid/ui/overlay/f;->k(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/d$c;->b()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 8
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    .line 9
    invoke-virtual {p5}, Lcom/hiya/client/callerid/ui/overlay/f;->b()Landroid/widget/ImageView;

    move-result-object v1

    .line 10
    sget v2, Lcom/hiya/client/callerid/ui/n;->j:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Ls/b;->g(Landroid/widget/ImageView;ILcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;Lcom/hiya/client/callerid/ui/overlay/f;)V
    .locals 8

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDirection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayOptions"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayView"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/d$c;->b()Z

    move-result v0

    invoke-virtual {p5, v0}, Lcom/hiya/client/callerid/ui/overlay/f;->h(Z)V

    .line 2
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/d$c;->c()Z

    move-result v0

    invoke-virtual {p5, v0}, Lcom/hiya/client/callerid/ui/overlay/f;->i(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    invoke-virtual {v0, p1, p3, p2}, Ls/b;->f(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p5}, Lcom/hiya/client/callerid/ui/overlay/f;->m()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p5}, Lcom/hiya/client/callerid/ui/overlay/f;->n()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    invoke-virtual {v0, p1, p3, p2}, Ls/b;->c(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 7
    invoke-static {p5, v0, v1, v2, v3}, Lcom/hiya/client/callerid/ui/overlay/f;->f(Lcom/hiya/client/callerid/ui/overlay/f;IZILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/d;->c:Ls/b;

    invoke-virtual {v0, p3, p2}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object v0

    sget-object v1, Lcom/hiya/client/callerid/ui/overlay/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/hiya/client/callerid/ui/overlay/d;->b(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/d$c;Lcom/hiya/client/callerid/ui/overlay/f;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/hiya/client/callerid/ui/l;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/d;->b:Lcom/hiya/client/callerid/ui/a0/r;

    iget-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/d;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/hiya/client/callerid/ui/a0/r;->c(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p5, p1}, Lcom/hiya/client/callerid/ui/overlay/f;->o(Z)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p5, v1}, Lcom/hiya/client/callerid/ui/overlay/f;->o(Z)V

    :goto_1
    return-void
.end method
