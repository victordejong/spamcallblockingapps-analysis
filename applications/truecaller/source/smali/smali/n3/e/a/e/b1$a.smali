.class public Ln3/e/a/e/b1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/b1;->u(Ln3/e/a/e/r1;Z)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/r1;

.field public final synthetic b:Ln3/e/a/e/b1;


# direct methods
.method public constructor <init>(Ln3/e/a/e/b1;Ln3/e/a/e/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    iput-object p2, p0, Ln3/e/a/e/b1$a;->a:Ln3/e/a/e/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    iget-object p1, p1, Ln3/e/a/e/b1;->p:Ljava/util/Map;

    iget-object v0, p0, Ln3/e/a/e/b1$a;->a:Ln3/e/a/e/r1;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    iget-object p1, p1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    iget p1, p1, Ln3/e/a/e/b1;->j:I

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    invoke-virtual {p1}, Ln3/e/a/e/b1;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    iget-object p1, p1, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 7
    iget-object p1, p0, Ln3/e/a/e/b1$a;->b:Ln3/e/a/e/b1;

    const/4 v0, 0x0

    iput-object v0, p1, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    :goto_0
    return-void
.end method
