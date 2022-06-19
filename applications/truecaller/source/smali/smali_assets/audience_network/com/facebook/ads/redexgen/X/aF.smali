.class public final Lcom/facebook/ads/redexgen/X/aF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a3;->A0Y()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a3;)V
    .locals 0

    .line 67966
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 3

    .line 67967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A01(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67968
    .local p0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6b;->A06(J)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
