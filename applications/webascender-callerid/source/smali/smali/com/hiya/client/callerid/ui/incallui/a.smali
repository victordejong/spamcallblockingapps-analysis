.class public final Lcom/hiya/client/callerid/ui/incallui/a;
.super Lcom/hiya/client/callerid/ui/incallui/c;
.source "SourceFile"


# instance fields
.field public n:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/b/a/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/incallui/c;-><init>(Landroid/content/Context;Lg/g/b/a/b;)V

    return-void
.end method

.method private final x(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/p;->m0:I

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v1, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 3
    :goto_1
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public n(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 5

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->n(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    const-string v2, "remoteViews"

    if-eqz v0, :cond_5

    sget v3, Lcom/hiya/client/callerid/ui/p;->q0:I

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->g(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/hiya/client/callerid/ui/incallui/c;->t(Landroid/widget/RemoteViews;ILcom/hiya/client/callerid/ui/incallui/c$d;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$a;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/hiya/client/callerid/ui/incallui/c;->p(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$a;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    sget v3, Lcom/hiya/client/callerid/ui/p;->t0:I

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->i(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/hiya/client/callerid/ui/incallui/c;->t(Landroid/widget/RemoteViews;ILcom/hiya/client/callerid/ui/incallui/c$d;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    sget v3, Lcom/hiya/client/callerid/ui/p;->r0:I

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->h(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/hiya/client/callerid/ui/incallui/c;->t(Landroid/widget/RemoteViews;ILcom/hiya/client/callerid/ui/incallui/c$d;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->f(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$c;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/hiya/client/callerid/ui/incallui/c;->s(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$c;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/hiya/client/callerid/ui/incallui/a;->x(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final v(Landroid/widget/RemoteViews;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    return-void
.end method

.method public final w(Lcom/hiya/client/callerid/ui/a0/c$b;ILandroid/app/Notification;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/a;->n:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$a;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/incallui/c;->q(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$a;ILandroid/app/Notification;)V

    return-void

    :cond_0
    const-string p1, "remoteViews"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
