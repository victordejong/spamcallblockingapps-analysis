.class public final Le/i/b/o2/d$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/o2/d;->a(Le/i/b/v2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/o2/d;

.field public final synthetic d:Le/i/b/v2;


# direct methods
.method public constructor <init>(Le/i/b/o2/d;Le/i/b/v2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/v2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/i/b/o2/d$a;->c:Le/i/b/o2/d;

    iput-object p2, p0, Le/i/b/o2/d$a;->d:Le/i/b/v2;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/o2/d$a;->c:Le/i/b/o2/d;

    .line 2
    iget-object v0, v0, Le/i/b/o2/d;->c:Ljava/lang/ref/Reference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/i/b/o2/d$a;->c:Le/i/b/o2/d;

    iget-object v2, p0, Le/i/b/o2/d$a;->d:Le/i/b/v2;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v3, Le/i/b/o2/c;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdClicked()V

    .line 7
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdLeftApplication()V

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdClosed()V

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdOpened()V

    goto :goto_0

    .line 10
    :pswitch_3
    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    goto :goto_0

    .line 11
    :pswitch_4
    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    goto :goto_0

    .line 12
    :pswitch_5
    iget-object v1, v1, Le/i/b/o2/d;->b:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
