.class public final Ln3/e/c/b;
.super Landroidx/camera/lifecycle/LifecycleCameraRepository$a;
.source "SourceFile"


# instance fields
.field public final a:Ln3/v/b0;

.field public final b:Ln3/e/b/k1/c$b;


# direct methods
.method public constructor <init>(Ln3/v/b0;Ln3/e/b/k1/c$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;-><init>()V

    const-string v0, "Null lifecycleOwner"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/e/c/b;->a:Ln3/v/b0;

    const-string p1, "Null cameraId"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ln3/e/c/b;->b:Ln3/e/b/k1/c$b;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/b/k1/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/c/b;->b:Ln3/e/b/k1/c$b;

    return-object v0
.end method

.method public b()Ln3/v/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/c/b;->a:Ln3/v/b0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;

    .line 3
    iget-object v1, p0, Ln3/e/c/b;->a:Ln3/v/b0;

    invoke-virtual {p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;->b()Ln3/v/b0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln3/e/c/b;->b:Ln3/e/b/k1/c$b;

    .line 4
    invoke-virtual {p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;->a()Ln3/e/b/k1/c$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/e/b/k1/c$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/c/b;->a:Ln3/v/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Ln3/e/c/b;->b:Ln3/e/b/k1/c$b;

    invoke-virtual {v1}, Ln3/e/b/k1/c$b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Key{lifecycleOwner="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/c/b;->a:Ln3/v/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/e/c/b;->b:Ln3/e/b/k1/c$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
