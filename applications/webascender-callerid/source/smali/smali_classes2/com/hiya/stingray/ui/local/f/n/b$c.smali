.class final Lcom/hiya/stingray/ui/local/f/n/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/n/b;->e(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/b$c;->f:Lcom/hiya/stingray/ui/local/f/n/b;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/n/b$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/b$c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/b$c;->f:Lcom/hiya/stingray/ui/local/f/n/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/b$c;->f:Lcom/hiya/stingray/ui/local/f/n/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/n/b;->n()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v1, "view_website"

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/c$a;->d(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;)V

    return-void
.end method
