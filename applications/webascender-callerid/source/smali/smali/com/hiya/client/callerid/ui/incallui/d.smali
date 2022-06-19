.class public final Lcom/hiya/client/callerid/ui/incallui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/d;->b:Landroid/content/Context;

    return-void
.end method

.method private final c(Lcom/hiya/client/callerid/ui/a0/c$b;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/d;->b:Landroid/content/Context;

    sget v0, Lcom/hiya/client/callerid/ui/s;->g:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/d;->b:Landroid/content/Context;

    sget v3, Lcom/hiya/client/callerid/ui/s;->v:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026allui_holding_call, name)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/d;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    :cond_0
    const-string v0, "view"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/d;->a:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "calls"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/d;->a:Landroid/widget/LinearLayout;

    const-string v1, "view"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hiya/client/callerid/ui/a0/c$b;

    .line 4
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/a0/c$b;

    .line 6
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/incallui/d;->a:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 7
    sget v4, Lcom/hiya/client/callerid/ui/r;->d:I

    .line 8
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 9
    sget v4, Lcom/hiya/client/callerid/ui/p;->a0:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "onHoldTitle"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/d;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/d;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void

    .line 12
    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method
