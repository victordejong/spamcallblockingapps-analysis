.class public Le/n/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# instance fields
.field public final synthetic a:Le/n/d/h;


# direct methods
.method public constructor <init>(Le/n/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/g;->a:Le/n/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/n/d/g;->a:Le/n/d/h;

    const/4 v0, 0x0

    iput-boolean v0, p1, Le/n/d/h;->e:Z

    .line 2
    iget v1, p1, Le/n/d/h;->h:I

    sget-object v2, Le/n/d/h;->m:[I

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_0

    .line 3
    iput v0, p1, Le/n/d/h;->h:I

    return-void

    .line 4
    :cond_0
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    add-int/2addr v1, v4

    .line 5
    iput v1, p1, Le/n/d/h;->h:I

    .line 6
    :cond_1
    iput-boolean v4, p1, Le/n/d/h;->f:Z

    .line 7
    iget-object v0, p1, Le/n/d/h;->b:Landroid/os/Handler;

    .line 8
    iget-object v1, p1, Le/n/d/h;->c:Ljava/lang/Runnable;

    .line 9
    iget v3, p1, Le/n/d/h;->h:I

    array-length v4, v2

    if-lt v3, v4, :cond_2

    .line 10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Le/n/d/h;->h:I

    .line 11
    :cond_2
    iget p1, p1, Le/n/d/h;->h:I

    aget p1, v2, p1

    int-to-long v2, p1

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/n/d/g;->a:Le/n/d/h;

    .line 2
    iget-object v1, v0, Le/n/d/h;->k:Lcom/mopub/nativeads/MoPubNative;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/n/d/h;->e:Z

    .line 4
    iget v2, v0, Le/n/d/h;->g:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Le/n/d/h;->g:I

    .line 5
    iput v1, v0, Le/n/d/h;->h:I

    .line 6
    iget-object v0, v0, Le/n/d/h;->a:Ljava/util/List;

    .line 7
    new-instance v1, Le/n/d/q;

    invoke-direct {v1, p1}, Le/n/d/q;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Le/n/d/g;->a:Le/n/d/h;

    .line 9
    iget-object p1, p1, Le/n/d/h;->a:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Le/n/d/g;->a:Le/n/d/h;

    .line 11
    iget-object p1, p1, Le/n/d/h;->i:Le/n/d/h$a;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Le/n/d/h$a;->onAdsAvailable()V

    .line 13
    :cond_1
    iget-object p1, p0, Le/n/d/g;->a:Le/n/d/h;

    invoke-virtual {p1}, Le/n/d/h;->b()V

    return-void
.end method
