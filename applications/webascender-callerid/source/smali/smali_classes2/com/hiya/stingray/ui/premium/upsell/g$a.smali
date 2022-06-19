.class final Lcom/hiya/stingray/ui/premium/upsell/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/upsell/g;->B()V
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
        "Lcom/hiya/stingray/t/e0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/upsell/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g$a;->f:Lcom/hiya/stingray/ui/premium/upsell/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g$a;->f:Lcom/hiya/stingray/ui/premium/upsell/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g$a;->f:Lcom/hiya/stingray/ui/premium/upsell/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/premium/upsell/h;->T0(Lcom/hiya/stingray/t/e0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/e0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g$a;->a(Lcom/hiya/stingray/t/e0;)V

    return-void
.end method
