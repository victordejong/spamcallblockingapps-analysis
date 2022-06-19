.class public final Le/a/l/p2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lcom/truecaller/premium/PremiumActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2
    const-class v2, Lcom/truecaller/premium/PremiumDialogActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 3
    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4
    const-class v2, Lcom/truecaller/deeplink/DeepLinkHandlerActivity;

    aput-object v2, v0, v1

    .line 5
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/a/l/p2/t;->a:Ljava/util/Set;

    return-void
.end method
