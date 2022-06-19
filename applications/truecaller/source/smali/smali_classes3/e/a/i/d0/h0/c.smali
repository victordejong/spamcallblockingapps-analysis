.class public abstract Le/a/i/d0/h0/c;
.super Le/a/i/d0/h0/a;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public transient m:Landroid/view/View;

.field public n:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/i/d0/h0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
.end method

.method public d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string p2, "view"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "list"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
