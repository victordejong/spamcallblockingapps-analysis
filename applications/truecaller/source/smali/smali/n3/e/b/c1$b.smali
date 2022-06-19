.class public final Ln3/e/b/c1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/r1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/r1$a<",
        "Ln3/e/b/c1;",
        "Ln3/e/b/j1/e1;",
        "Ln3/e/b/c1$b;",
        ">;",
        "Ljava/lang/Object<",
        "Ln3/e/b/c1$b;",
        ">;",
        "Ljava/lang/Object<",
        "Ln3/e/b/c1$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln3/e/b/j1/a1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v0

    invoke-direct {p0, v0}, Ln3/e/b/c1$b;-><init>(Ln3/e/b/j1/a1;)V

    return-void
.end method

.method public constructor <init>(Ln3/e/b/j1/a1;)V
    .locals 5

    .line 2
    const-class v0, Ln3/e/b/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 4
    sget-object v1, Ln3/e/b/k1/f;->o:Ln3/e/b/j1/j0$a;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid target class configuration for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    sget-object v3, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {p1, v1, v3, v0}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 9
    sget-object v1, Ln3/e/b/k1/f;->n:Ln3/e/b/j1/j0$a;

    invoke-virtual {p1, v1, v2}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v3, v0}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ln3/e/b/c1;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 2
    sget-object v1, Ln3/e/b/j1/q0;->b:Ln3/e/b/j1/j0$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 4
    sget-object v1, Ln3/e/b/j1/q0;->d:Ln3/e/b/j1/j0$a;

    invoke-virtual {v0, v1, v2}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use both setTargetResolution and setTargetAspectRatio on the same config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Ln3/e/b/c1;

    invoke-virtual {p0}, Ln3/e/b/c1$b;->b()Ln3/e/b/j1/e1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/b/c1;-><init>(Ln3/e/b/j1/e1;)V

    return-object v0
.end method

.method public b()Ln3/e/b/j1/e1;
    .locals 2

    .line 1
    new-instance v0, Ln3/e/b/j1/e1;

    iget-object v1, p0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    invoke-static {v1}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/b/j1/e1;-><init>(Ln3/e/b/j1/d1;)V

    return-object v0
.end method
