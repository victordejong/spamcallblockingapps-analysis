.class final Lcom/hiya/stingray/ui/premium/upsell/g$b;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/upsell/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g$b;->f:Lcom/hiya/stingray/ui/premium/upsell/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g$b;->f:Lcom/hiya/stingray/ui/premium/upsell/g;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g$b;->f:Lcom/hiya/stingray/ui/premium/upsell/g;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->T0(Lcom/hiya/stingray/t/e0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
