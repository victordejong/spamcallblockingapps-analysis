.class public final Lt3/a/a/c/a;
.super Lt3/a/a/c/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/a/a/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lt3/a/a/c/a;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lt3/a/a/c/a;->c:Z

    .line 3
    iget v0, p0, Lt3/a/a/c/a;->b:I

    if-gt p1, v0, :cond_1

    .line 4
    :goto_0
    iget-object v1, p0, Lt3/a/a/c/b;->a:Ls1/z/b/a;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    :cond_0
    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt3/a/a/c/a;->c:Z

    return v0
.end method
