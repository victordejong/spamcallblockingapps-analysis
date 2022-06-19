.class public final synthetic Le/n/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;


# static fields
.field public static final synthetic a:Le/n/b/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/n/b/u;

    invoke-direct {v0}, Le/n/b/u;-><init>()V

    sput-object v0, Le/n/b/u;->a:Le/n/b/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReady(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/mopub/mobileads/FullscreenAdController;->u:Ljava/util/EnumSet;

    return-void
.end method
