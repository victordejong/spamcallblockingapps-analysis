.class public final Lcom/hiya/stingray/ui/local/f/n/b;
.super Lcom/hiya/stingray/ui/local/f/n/h;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/n/a;


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


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberUtil.formatPhoneNumberForUI(phone)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hiya/stingray/ui/local/f/n/i;->d(Lcom/hiya/stingray/ui/local/f/n/g;Ljava/lang/String;)V

    const v0, 0x7f08016b

    .line 2
    invoke-static {p0, v0}, Lcom/hiya/stingray/ui/local/f/n/i;->b(Lcom/hiya/stingray/ui/local/f/n/g;I)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/hiya/stingray/ui/local/f/n/b$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/f/n/b$b;-><init>(Lcom/hiya/stingray/ui/local/f/n/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "displayUrl"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/f/n/i;->d(Lcom/hiya/stingray/ui/local/f/n/g;Ljava/lang/String;)V

    const p1, 0x7f080175

    .line 2
    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/f/n/i;->b(Lcom/hiya/stingray/ui/local/f/n/g;I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/hiya/stingray/ui/local/f/n/b$c;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/local/f/n/b$c;-><init>(Lcom/hiya/stingray/ui/local/f/n/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/f/n/i;->d(Lcom/hiya/stingray/ui/local/f/n/g;Ljava/lang/String;)V

    const v0, 0x7f08016a

    .line 2
    invoke-static {p0, v0}, Lcom/hiya/stingray/ui/local/f/n/i;->b(Lcom/hiya/stingray/ui/local/f/n/g;I)V

    const v0, 0x7f08012c

    .line 3
    invoke-static {p0, v0}, Lcom/hiya/stingray/ui/local/f/n/i;->f(Lcom/hiya/stingray/ui/local/f/n/g;I)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/hiya/stingray/ui/local/f/n/b$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/f/n/b$a;-><init>(Lcom/hiya/stingray/ui/local/f/n/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final n()Lcom/hiya/stingray/manager/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/b;->a:Lcom/hiya/stingray/manager/e1;

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
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/b;->a:Lcom/hiya/stingray/manager/e1;

    return-void
.end method
