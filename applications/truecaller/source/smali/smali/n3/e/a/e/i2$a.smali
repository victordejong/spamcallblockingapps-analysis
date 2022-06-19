.class public Ln3/e/a/e/i2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/z0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/i2;


# direct methods
.method public constructor <init>(Ln3/e/a/e/i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/i2$a;->a:Ln3/e/a/e/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/i2$a;->a:Ln3/e/a/e/i2;

    iget-object v0, v0, Ln3/e/a/e/i2;->e:Ln3/e/a/e/i2$b;

    invoke-interface {v0, p1}, Ln3/e/a/e/i2$b;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    const/4 p1, 0x0

    return p1
.end method
