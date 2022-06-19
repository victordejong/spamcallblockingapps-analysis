.class final Lcom/hiya/stingray/ui/w/l$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l$u;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l$u;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l$u;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$u$a;->f:Lcom/hiya/stingray/ui/w/l$u;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/w/l$u$a;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$u$a;->f:Lcom/hiya/stingray/ui/w/l$u;

    iget-object v0, v0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/w/l$u$a;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l$u$a;->f:Lcom/hiya/stingray/ui/w/l$u;

    iget-object v2, v2, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v2}, Lcom/hiya/stingray/ui/w/l;->u(Lcom/hiya/stingray/ui/w/l;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110325

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/hiya/stingray/ui/w/o;->E0(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
