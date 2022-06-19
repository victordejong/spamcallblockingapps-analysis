.class public Ln3/e/a/e/k2/f$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/f$b;->onError(Landroid/hardware/camera2/CameraDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic b:I

.field public final synthetic c:Ln3/e/a/e/k2/f$b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/f$b;Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/f$b$c;->c:Ln3/e/a/e/k2/f$b;

    iput-object p2, p0, Ln3/e/a/e/k2/f$b$c;->a:Landroid/hardware/camera2/CameraDevice;

    iput p3, p0, Ln3/e/a/e/k2/f$b$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/f$b$c;->c:Ln3/e/a/e/k2/f$b;

    iget-object v0, v0, Ln3/e/a/e/k2/f$b;->a:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Ln3/e/a/e/k2/f$b$c;->a:Landroid/hardware/camera2/CameraDevice;

    iget v2, p0, Ln3/e/a/e/k2/f$b$c;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method
