.class public Ln3/e/a/e/k2/k$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/k$a;->onCameraAccessPrioritiesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/k2/k$a;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/k$a$a;->a:Ln3/e/a/e/k2/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/k$a$a;->a:Ln3/e/a/e/k2/k$a;

    iget-object v0, v0, Ln3/e/a/e/k2/k$a;->b:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAccessPrioritiesChanged()V

    return-void
.end method
