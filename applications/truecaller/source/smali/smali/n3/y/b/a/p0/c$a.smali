.class public Ln3/y/b/a/p0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/p0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/p0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/y/b/a/p0/c<",
        "Ln3/y/b/a/p0/e;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ln3/y/b/a/p0/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Ln3/y/b/a/p0/b<",
            "Ln3/y/b/a/p0/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ln3/y/b/a/p0/d;

    new-instance p2, Ln3/y/b/a/p0/b$a;

    new-instance v0, Ln3/y/b/a/p0/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/y/b/a/p0/f;-><init>(I)V

    invoke-direct {p2, v0}, Ln3/y/b/a/p0/b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, p2}, Ln3/y/b/a/p0/d;-><init>(Ln3/y/b/a/p0/b$a;)V

    return-object p1
.end method

.method public d(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Ljava/lang/Class<",
            "Ln3/y/b/a/p0/e;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
