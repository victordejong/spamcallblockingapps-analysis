.class public final Lcom/facebook/ads/redexgen/X/MI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TF;->AC3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/widget/EditText;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TF;Landroid/widget/EditText;)V
    .locals 0

    .line 44280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MI;->A01:Lcom/facebook/ads/redexgen/X/TF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MI;->A00:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 44281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MI;->A01:Lcom/facebook/ads/redexgen/X/TF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TF;->A05(Lcom/facebook/ads/redexgen/X/TF;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TG;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TG;-><init>(Lcom/facebook/ads/redexgen/X/MI;Landroid/content/DialogInterface;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44282
    return-void
.end method
