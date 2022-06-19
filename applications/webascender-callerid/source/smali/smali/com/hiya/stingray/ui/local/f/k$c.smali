.class final Lcom/hiya/stingray/ui/local/f/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/k;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/k$c;->f:Lcom/hiya/stingray/ui/local/f/k;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/k$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/k$c;->f:Lcom/hiya/stingray/ui/local/f/k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$c;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/local/f/c;->a:Lcom/hiya/stingray/ui/local/f/c$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$c;->f:Lcom/hiya/stingray/ui/local/f/k;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/f/k;->j1()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v1, "fab"

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/c$a;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;)V

    return-void
.end method
