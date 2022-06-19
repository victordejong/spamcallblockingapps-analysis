.class public final Lcom/hiya/stingray/ui/local/search/g$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$i;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$i;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/search/g;->g1(Lcom/hiya/stingray/ui/local/search/g;)Li/c/b0/k/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$i;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/g;->m1()Lcom/hiya/stingray/ui/local/search/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/e;->f()Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$i;->f:Lcom/hiya/stingray/ui/local/search/g;

    sget v0, Lcom/hiya/stingray/o;->j2:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mainSearchRecyclerView"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/search/g$i;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v2, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hiya/stingray/util/e0;->h(Landroidx/recyclerview/widget/RecyclerView;)Lcom/hiya/stingray/ui/common/p;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
