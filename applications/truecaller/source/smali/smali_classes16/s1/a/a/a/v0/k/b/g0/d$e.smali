.class public final Ls1/a/a/a/v0/k/b/g0/d$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$e;->b:Ls1/a/a/a/v0/k/b/g0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$e;->b:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 3
    iget v2, v1, Ls1/a/a/a/v0/e/c;->c:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 5
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 6
    iget v1, v1, Ls1/a/a/a/v0/e/c;->f:I

    .line 7
    invoke-static {v2, v1}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    .line 8
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d;->l:Ls1/a/a/a/v0/b/o0;

    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->r:Ls1/a/a/a/v0/m/l1/k;

    .line 11
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->c()Ls1/a/a/a/v0/m/l1/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Ls1/a/a/a/v0/b/o0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/k/b/g0/d$a;

    .line 12
    sget-object v2, Ls1/a/a/a/v0/c/a/d;->h:Ls1/a/a/a/v0/c/a/d;

    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/k/b/g0/d$a;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v0

    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    check-cast v3, Ls1/a/a/a/v0/b/e;

    :goto_2
    return-object v3
.end method
