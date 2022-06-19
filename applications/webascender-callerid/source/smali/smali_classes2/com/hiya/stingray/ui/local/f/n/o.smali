.class public final Lcom/hiya/stingray/ui/local/f/n/o;
.super Lcom/hiya/stingray/ui/local/f/n/h;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/n/n;


# instance fields
.field public a:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/f/n/h;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final p(Lcom/hiya/stingray/t/h1/f;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/hiya/stingray/ui/local/f/n/o$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/f/n/o$a;-><init>(Lcom/hiya/stingray/ui/local/f/n/o;Lcom/hiya/stingray/t/h1/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-static {p0, p2}, Lcom/hiya/stingray/ui/local/f/n/i;->b(Lcom/hiya/stingray/ui/local/f/n/g;I)V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/f/n/i;->d(Lcom/hiya/stingray/ui/local/f/n/g;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public i(Lcom/hiya/stingray/t/h1/f;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08008b

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/local/f/n/o;->p(Lcom/hiya/stingray/t/h1/f;I)V

    return-void
.end method

.method public m(Lcom/hiya/stingray/t/h1/f;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08016c

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/local/f/n/o;->p(Lcom/hiya/stingray/t/h1/f;I)V

    return-void
.end method

.method public final n()Lcom/hiya/stingray/manager/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/o;->a:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final o(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/o;->a:Lcom/hiya/stingray/manager/e1;

    return-void
.end method
