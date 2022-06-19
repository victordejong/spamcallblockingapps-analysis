.class final Lcom/hiya/stingray/ui/local/f/n/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/n/b;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/n/b;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/n/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/b$b;->f:Lcom/hiya/stingray/ui/local/f/n/b;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/n/b$b;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/b$b;->f:Lcom/hiya/stingray/ui/local/f/n/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/b$b;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/b$b;->f:Lcom/hiya/stingray/ui/local/f/n/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/n/b;->n()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/c$a;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;)V

    return-void
.end method
