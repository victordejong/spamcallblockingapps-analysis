.class public Ln3/e/a/e/k2/o/e;
.super Ln3/e/a/e/k2/o/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Ln3/e/a/e/k2/o/d;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ln3/e/a/e/k2/o/d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->n(Z)V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/k2/o/f;->a:Ljava/lang/Object;

    return-object v0
.end method
