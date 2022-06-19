.class public final Lcom/hiya/stingray/ui/local/f/m/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/local/f/m/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/f/m/h;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/local/f/m/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/h$b;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h$b;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/m/h;->g()Lcom/hiya/stingray/ui/local/f/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/g;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h$b;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/m/h;->g()Lcom/hiya/stingray/ui/local/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/f/a;->e(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h$b;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/m/h;->g()Lcom/hiya/stingray/ui/local/f/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/g;->d(Landroidx/recyclerview/widget/RecyclerView$d0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h$b;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/m/h;->g()Lcom/hiya/stingray/ui/local/f/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/local/f/h;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    return-object p1
.end method
