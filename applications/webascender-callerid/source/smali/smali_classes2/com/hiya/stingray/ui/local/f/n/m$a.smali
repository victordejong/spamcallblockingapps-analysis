.class final Lcom/hiya/stingray/ui/local/f/n/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/n/m;->b(Lcom/hiya/stingray/t/h1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/n/m;

.field final synthetic g:Lcom/hiya/stingray/t/h1/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/n/m;Lcom/hiya/stingray/t/h1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/n/m$a;->f:Lcom/hiya/stingray/ui/local/f/n/m;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/n/m$a;->g:Lcom/hiya/stingray/t/h1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/n/m$a;->g:Lcom/hiya/stingray/t/h1/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/h1/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "it"

    .line 3
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/n/m$a;->f:Lcom/hiya/stingray/ui/local/f/n/m;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/n/m;->n()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v1, "open_content_provider"

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/c$a;->d(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;)V

    return-void
.end method
