.class public final Ls1/a/a/a/u$a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/u$a;-><init>(Ls1/a/a/a/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/o<",
        "+",
        "Ls1/a/a/a/v0/e/a0/b/g;",
        "+",
        "Ls1/a/a/a/v0/e/l;",
        "+",
        "Ls1/a/a/a/v0/e/a0/b/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/u$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/u$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/u$a$c;->b:Ls1/a/a/a/u$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u$a$c;->b:Ls1/a/a/a/u$a;

    invoke-static {v0}, Ls1/a/a/a/u$a;->a(Ls1/a/a/a/u$a;)Ls1/a/a/a/v0/b/j1/a/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/j1/a/e;->b:Ls1/a/a/a/v0/d/b/w/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Ls1/a/a/a/v0/d/b/w/a;->c:[Ljava/lang/String;

    .line 4
    iget-object v3, v0, Ls1/a/a/a/v0/d/b/w/a;->e:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v2, v3}, Ls1/a/a/a/v0/e/a0/b/h;->g([Ljava/lang/String;[Ljava/lang/String;)Ls1/k;

    move-result-object v1

    .line 6
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast v2, Ls1/a/a/a/v0/e/a0/b/g;

    .line 8
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Ls1/a/a/a/v0/e/l;

    .line 10
    new-instance v3, Ls1/o;

    .line 11
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 12
    invoke-direct {v3, v2, v1, v0}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    :cond_0
    return-object v1
.end method
