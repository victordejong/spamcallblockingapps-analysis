.class final Lcom/hiya/stingray/ui/premium/upsell/c$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/upsell/c;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/upsell/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c$n;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c$n;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    sget v1, Lcom/hiya/stingray/o;->i2:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/upsell/c$n;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "mainContent"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/upsell/c$n;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    sget v5, Lcom/hiya/stingray/o;->v1:I

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "header"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .line 4
    iget-object v5, p0, Lcom/hiya/stingray/ui/premium/upsell/c$n;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {v5, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-static {v5, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/hiya/stingray/ui/premium/upsell/c$n;->f:Lcom/hiya/stingray/ui/premium/upsell/c;

    invoke-virtual {v6, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 6
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method
