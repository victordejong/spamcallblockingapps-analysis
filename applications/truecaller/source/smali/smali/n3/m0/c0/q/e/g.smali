.class public Ln3/m0/c0/q/e/g;
.super Ln3/m0/c0/q/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/m0/c0/q/e/c<",
        "Ln3/m0/c0/q/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ln3/m0/c0/q/f/g;->a(Landroid/content/Context;Ln3/m0/c0/t/x/a;)Ln3/m0/c0/q/f/g;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ln3/m0/c0/q/f/g;->c:Ln3/m0/c0/q/f/e;

    .line 3
    invoke-direct {p0, p1}, Ln3/m0/c0/q/e/c;-><init>(Ln3/m0/c0/q/f/d;)V

    return-void
.end method


# virtual methods
.method public b(Ln3/m0/c0/s/p;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 2
    iget-object p1, p1, Ln3/m0/d;->a:Ln3/m0/q;

    .line 3
    sget-object v0, Ln3/m0/q;->c:Ln3/m0/q;

    if-eq p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 4
    sget-object v0, Ln3/m0/q;->f:Ln3/m0/q;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Ln3/m0/c0/q/b;

    .line 2
    iget-boolean v0, p1, Ln3/m0/c0/q/b;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p1, Ln3/m0/c0/q/b;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
