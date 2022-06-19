.class public final Lcom/facebook/ads/redexgen/X/9J;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9K;->A00()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9K;)V
    .locals 0

    .line 20044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:Lcom/facebook/ads/redexgen/X/9K;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 20045
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A2U:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nk;->A02(I)V

    .line 20046
    const/4 v0, 0x1

    return v0
.end method
