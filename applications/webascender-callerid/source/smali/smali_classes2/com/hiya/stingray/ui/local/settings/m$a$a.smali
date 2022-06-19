.class final Lcom/hiya/stingray/ui/local/settings/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/m$a;->n(Lcom/hiya/stingray/t/a1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/m$a;

.field final synthetic g:Lcom/hiya/stingray/t/a1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/m$a;Lcom/hiya/stingray/t/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m$a$a;->f:Lcom/hiya/stingray/ui/local/settings/m$a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/settings/m$a$a;->g:Lcom/hiya/stingray/t/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m$a$a;->g:Lcom/hiya/stingray/t/a1;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m$a$a;->f:Lcom/hiya/stingray/ui/local/settings/m$a;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/hiya/stingray/o;->m4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/m$a$a;->f:Lcom/hiya/stingray/ui/local/settings/m$a;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/m$a;->a:Lcom/hiya/stingray/ui/local/settings/m;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/m;->c()Lkotlin/w/b/p;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/m$a$a;->g:Lcom/hiya/stingray/t/a1;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_1
    :goto_0
    return-void
.end method
