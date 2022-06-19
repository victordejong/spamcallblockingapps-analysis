.class final Lcom/hiya/stingray/ui/w/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->R(Lcom/hiya/stingray/t/n0;)V
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
        "Lcom/hiya/stingray/t/d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$f;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$f;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$f;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$f;->a(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
