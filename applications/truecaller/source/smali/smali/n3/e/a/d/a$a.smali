.class public final Ln3/e/a/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ln3/e/a/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln3/e/b/j1/a1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v0

    iput-object v0, p0, Ln3/e/a/d/a$a;->a:Ln3/e/b/j1/a1;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/a/d/a;
    .locals 2

    .line 1
    new-instance v0, Ln3/e/a/d/a;

    iget-object v1, p0, Ln3/e/a/d/a$a;->a:Ln3/e/b/j1/a1;

    invoke-static {v1}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/a/d/a;-><init>(Ln3/e/b/j1/j0;)V

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TValueT;>;TValueT;)",
            "Ln3/e/a/d/a$a;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    const-string v0, "camera2.captureRequest.option."

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    .line 3
    new-instance v2, Ln3/e/b/j1/n;

    invoke-direct {v2, v0, v1, p1}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ln3/e/a/d/a$a;->a:Ln3/e/b/j1/a1;

    .line 5
    sget-object v0, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {p1, v2, v0, p2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    return-object p0
.end method
