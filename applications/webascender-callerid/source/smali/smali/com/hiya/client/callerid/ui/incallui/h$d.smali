.class final Lcom/hiya/client/callerid/ui/incallui/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/client/callerid/ui/d$g;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/h$d;->b(Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/client/callerid/ui/d$g;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/l;

    .line 1
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->REDIAL:Lcom/hiya/client/callerid/ui/d$g;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    sget v3, Lcom/hiya/client/callerid/ui/p;->g0:I

    invoke-virtual {v2, v3}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->MESSAGE:Lcom/hiya/client/callerid/ui/d$g;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    sget v3, Lcom/hiya/client/callerid/ui/p;->W:I

    invoke-virtual {v2, v3}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->ADD_CONTACT:Lcom/hiya/client/callerid/ui/d$g;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    sget v3, Lcom/hiya/client/callerid/ui/p;->c:I

    invoke-virtual {v2, v3}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->REPORT:Lcom/hiya/client/callerid/ui/d$g;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    sget v3, Lcom/hiya/client/callerid/ui/p;->h0:I

    invoke-virtual {v2, v3}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->BLOCK:Lcom/hiya/client/callerid/ui/d$g;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    sget v3, Lcom/hiya/client/callerid/ui/p;->i:I

    invoke-virtual {v2, v3}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$d;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it.value"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/Button;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/hiya/client/callerid/ui/incallui/h;->g1(Lcom/hiya/client/callerid/ui/incallui/h;Landroid/widget/Button;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
