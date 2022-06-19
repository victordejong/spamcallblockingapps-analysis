.class public final synthetic Le/n/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/n/b/k0$d;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/InlineAdAdapter;

.field public final synthetic b:Lcom/mopub/mobileads/BaseAd;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/InlineAdAdapter;Lcom/mopub/mobileads/BaseAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/w;->a:Lcom/mopub/mobileads/InlineAdAdapter;

    iput-object p2, p0, Le/n/b/w;->b:Lcom/mopub/mobileads/BaseAd;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged()V
    .locals 2

    iget-object v0, p0, Le/n/b/w;->a:Lcom/mopub/mobileads/InlineAdAdapter;

    iget-object v1, p0, Le/n/b/w;->b:Lcom/mopub/mobileads/BaseAd;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseAd;->e()V

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->onAdShown()V

    .line 4
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->onAdResumeAutoRefresh()V

    return-void
.end method
