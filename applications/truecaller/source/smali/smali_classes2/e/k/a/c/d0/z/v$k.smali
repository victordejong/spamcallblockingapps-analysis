.class public abstract Le/k/a/c/d0/z/v$k;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/m0/f;

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/m0/f;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Le/k/a/c/m0/f;",
            "TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/z/v$k;->d:Le/k/a/c/m0/f;

    .line 3
    iput-object p3, p0, Le/k/a/c/d0/z/v$k;->e:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/z/v$k;->g:Z

    return-void
.end method


# virtual methods
.method public final c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Le/k/a/c/h;->h:Le/k/a/c/h;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v2}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Cannot map `null` into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to \'false\' to allow)"

    .line 4
    invoke-virtual {p1, p0, v1, v0}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public final o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/v$k;->d:Le/k/a/c/m0/f;

    return-object v0
.end method
