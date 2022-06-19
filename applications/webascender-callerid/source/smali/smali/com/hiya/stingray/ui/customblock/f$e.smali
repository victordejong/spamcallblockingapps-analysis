.class final Lcom/hiya/stingray/ui/customblock/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/f;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/t/c0;

.field final synthetic g:Lcom/hiya/stingray/ui/customblock/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/t/c0;Lcom/hiya/stingray/ui/customblock/f;Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/f$e;->f:Lcom/hiya/stingray/t/c0;

    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/f$e;->g:Lcom/hiya/stingray/ui/customblock/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/f$e;->g:Lcom/hiya/stingray/ui/customblock/f;

    invoke-static {p1}, Lcom/hiya/stingray/ui/customblock/f;->c(Lcom/hiya/stingray/ui/customblock/f;)Li/c/b0/k/b;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f$e;->f:Lcom/hiya/stingray/t/c0;

    invoke-virtual {p1, v0}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method
