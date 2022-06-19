.class public Ln3/e/a/e/k2/k$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/k$a;->onCameraUnavailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln3/e/a/e/k2/k$a;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/k$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/k$a$c;->b:Ln3/e/a/e/k2/k$a;

    iput-object p2, p0, Ln3/e/a/e/k2/k$a$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/k$a$c;->b:Ln3/e/a/e/k2/k$a;

    iget-object v0, v0, Ln3/e/a/e/k2/k$a;->b:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v1, p0, Ln3/e/a/e/k2/k$a$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    return-void
.end method
