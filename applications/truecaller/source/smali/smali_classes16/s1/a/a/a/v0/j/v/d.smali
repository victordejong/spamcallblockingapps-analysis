.class public final Ls1/a/a/a/v0/j/v/d;
.super Ls1/a/a/a/v0/o/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/o/b<",
        "Ls1/a/a/a/v0/b/b;",
        "Ls1/a/a/a/v0/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/c/c0;

.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Ls1/z/b/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/j/v/d;->a:Ls1/z/c/c0;

    iput-object p2, p0, Ls1/a/a/a/v0/j/v/d;->b:Ls1/z/b/l;

    invoke-direct {p0}, Ls1/a/a/a/v0/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/v/d;->a:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/b/b;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "current"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/j/v/d;->a:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/b/b;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "current"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/j/v/d;->a:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/b/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/j/v/d;->b:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/j/v/d;->a:Ls1/z/c/c0;

    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method
