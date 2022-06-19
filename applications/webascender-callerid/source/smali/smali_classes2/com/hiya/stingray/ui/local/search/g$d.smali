.class public final Lcom/hiya/stingray/ui/local/search/g$d;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$d;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$d;->a:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/g$d;->a:Lcom/hiya/stingray/ui/local/search/g;

    sget v0, Lcom/hiya/stingray/o;->j2:I

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "mainSearchRecyclerView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
