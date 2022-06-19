.class public final Ls1/a/a/a/v0/m/p1/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/j1;",
        "Ls1/a/a/a/v0/m/j1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/p1/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/p1/f;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/p1/e;->b:Ls1/a/a/a/v0/m/p1/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/j1;
    .locals 1

    const-string v0, "variance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/p1/e;->b:Ls1/a/a/a/v0/m/p1/f;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/m/p1/f;->a:Ls1/a/a/a/v0/b/w0;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ls1/a/a/a/v0/m/j1;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/p1/e;->a(Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/j1;

    move-result-object p1

    return-object p1
.end method
