.class public final Lcom/appnext/nativeads/AdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/SettingsManager$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/AdLoader;->getAdsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/nativeads/NativeAdListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic fA:Lcom/appnext/nativeads/AdLoader;

.field public final synthetic fB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/AdLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/AdLoader$1;->fA:Lcom/appnext/nativeads/AdLoader;

    iput-object p2, p0, Lcom/appnext/nativeads/AdLoader$1;->fB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$1;->fA:Lcom/appnext/nativeads/AdLoader;

    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader$1;->fB:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final loaded(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$1;->fA:Lcom/appnext/nativeads/AdLoader;

    iget-object v0, p0, Lcom/appnext/nativeads/AdLoader$1;->fB:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
