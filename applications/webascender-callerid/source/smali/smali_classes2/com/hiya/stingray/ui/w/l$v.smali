.class final Lcom/hiya/stingray/ui/w/l$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/t/h1/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$v;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h1/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$v;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/w/l$v$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/w/l$v$a;-><init>(Lcom/hiya/stingray/ui/w/l$v;Lcom/hiya/stingray/t/h1/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$v;->a(Lcom/hiya/stingray/t/h1/i;)V

    return-void
.end method
