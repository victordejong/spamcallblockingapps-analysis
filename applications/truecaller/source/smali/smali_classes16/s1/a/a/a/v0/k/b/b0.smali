.class public final Ls1/a/a/a/v0/k/b/b0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/a/a/a/v0/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/c0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/c0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/b0;->b:Ls1/a/a/a/v0/k/b/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/b0;->b:Ls1/a/a/a/v0/k/b/c0;

    .line 3
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 5
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    .line 6
    iget-boolean v1, p1, Ls1/a/a/a/v0/f/a;->c:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/k/b/j;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 11
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 12
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    .line 13
    invoke-static {v0, p1}, Le/q/f/a/d/a;->p0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method
