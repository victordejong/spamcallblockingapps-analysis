.class public final Lcom/facebook/ads/redexgen/X/Nj;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nk;->A0E()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nk;)V
    .locals 0

    .line 46039
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:Lcom/facebook/ads/redexgen/X/Nk;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 46040
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A2S:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nk;->A02(I)V

    .line 46041
    const/4 v0, 0x1

    return v0
.end method
