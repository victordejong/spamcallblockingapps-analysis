.class public Ln3/e/a/e/k2/o/d;
.super Ln3/e/a/e/k2/o/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/k2/o/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Ln3/e/a/e/k2/o/d$a;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-direct {v0, v1}, Ln3/e/a/e/k2/o/d$a;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 2
    invoke-direct {p0, v0}, Ln3/e/a/e/k2/o/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ln3/e/a/e/k2/o/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/f;->a:Ljava/lang/Object;

    check-cast v0, Ln3/e/a/e/k2/o/d$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Ln3/e/a/e/k2/o/d$a;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->n(Z)V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/k2/o/f;->a:Ljava/lang/Object;

    check-cast v0, Ln3/e/a/e/k2/o/d$a;

    iget-object v0, v0, Ln3/e/a/e/k2/o/d$a;->a:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method
