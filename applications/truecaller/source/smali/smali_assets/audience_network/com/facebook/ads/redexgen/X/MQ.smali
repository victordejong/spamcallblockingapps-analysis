.class public final Lcom/facebook/ads/redexgen/X/MQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MR;->setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/MU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1S;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jb;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/MR;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/MU;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MR;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/MU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 44428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MQ;->A02:Lcom/facebook/ads/redexgen/X/MR;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MQ;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MQ;->A03:Lcom/facebook/ads/redexgen/X/MU;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MQ;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/MQ;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 44429
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MQ;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/MQ;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0A:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 44430
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MQ;->A02:Lcom/facebook/ads/redexgen/X/MR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MR;->A00(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2A;->A0P(Lcom/facebook/ads/redexgen/X/XS;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44431
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/MQ;->A03:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/MQ;->A04:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MQ;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A8a(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    goto :goto_0

    .line 44432
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MQ;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MQ;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44433
    new-instance v3, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LI;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MQ;->A02:Lcom/facebook/ads/redexgen/X/MR;

    .line 44434
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MR;->A00(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MQ;->A00:Lcom/facebook/ads/redexgen/X/1S;

    .line 44435
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/MQ;->A04:Ljava/lang/String;

    .line 44436
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LI;->A08(Lcom/facebook/ads/redexgen/X/LI;Lcom/facebook/ads/redexgen/X/XT;Landroid/net/Uri;Ljava/lang/String;)V

    .line 44437
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
