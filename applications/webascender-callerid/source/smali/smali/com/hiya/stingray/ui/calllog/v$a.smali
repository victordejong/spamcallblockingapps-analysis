.class Lcom/hiya/stingray/ui/calllog/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/calllog/v;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Lcom/hiya/stingray/ui/calllog/v;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/calllog/v;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/v$a;->g:Lcom/hiya/stingray/ui/calllog/v;

    iput p2, p0, Lcom/hiya/stingray/ui/calllog/v$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/v$a;->g:Lcom/hiya/stingray/ui/calllog/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/calllog/v;->d(Lcom/hiya/stingray/ui/calllog/v;)Lcom/hiya/stingray/manager/e1;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/v$a;->g:Lcom/hiya/stingray/ui/calllog/v;

    invoke-static {v0}, Lcom/hiya/stingray/ui/calllog/v;->c(Lcom/hiya/stingray/ui/calllog/v;)Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "make_call"

    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/v$a;->g:Lcom/hiya/stingray/ui/calllog/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/calllog/v;->e(Lcom/hiya/stingray/ui/calllog/v;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/v$a;->g:Lcom/hiya/stingray/ui/calllog/v;

    invoke-static {v0}, Lcom/hiya/stingray/ui/calllog/v;->f(Lcom/hiya/stingray/ui/calllog/v;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/hiya/stingray/ui/calllog/v$a;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/v$a;->g:Lcom/hiya/stingray/ui/calllog/v;

    invoke-static {p1}, Lcom/hiya/stingray/ui/calllog/v;->g(Lcom/hiya/stingray/ui/calllog/v;)Lcom/hiya/stingray/ui/calllog/v$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/hiya/stingray/ui/calllog/v$b;->Z()V

    return-void
.end method
