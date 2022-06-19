.class final Lcom/hiya/stingray/ui/local/f/n/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/n/f;->g(ILjava/lang/String;Lcom/hiya/stingray/t/h1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/n/f;

.field final synthetic g:Lcom/hiya/stingray/t/h1/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/n/f;Lcom/hiya/stingray/t/h1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/f$a;->f:Lcom/hiya/stingray/ui/local/f/n/f;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/n/f$a;->g:Lcom/hiya/stingray/t/h1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "it.context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/f$a;->g:Lcom/hiya/stingray/t/h1/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/e0;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/f$a;->f:Lcom/hiya/stingray/ui/local/f/n/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/n/f;->o()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v1, "view_all_reviews"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/c$a;->d(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;)V

    return-void
.end method
