.class public final Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/factories/MediaPlayerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroidx/media2/player/MediaPlayer;",
        "create",
        "(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;",
        "Lcom/mopub/mobileads/factories/MediaPlayerFactory;",
        "instance",
        "Lcom/mopub/mobileads/factories/MediaPlayerFactory;",
        "getInstance",
        "()Lcom/mopub/mobileads/factories/MediaPlayerFactory;",
        "setInstance",
        "(Lcom/mopub/mobileads/factories/MediaPlayerFactory;)V",
        "<init>",
        "()V",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;->getInstance()Lcom/mopub/mobileads/factories/MediaPlayerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->internalCreate(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;

    move-result-object p1

    return-object p1
.end method

.method public final getInstance()Lcom/mopub/mobileads/factories/MediaPlayerFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->access$getInstance$cp()Lcom/mopub/mobileads/factories/MediaPlayerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final setInstance(Lcom/mopub/mobileads/factories/MediaPlayerFactory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->access$setInstance$cp(Lcom/mopub/mobileads/factories/MediaPlayerFactory;)V

    return-void
.end method
