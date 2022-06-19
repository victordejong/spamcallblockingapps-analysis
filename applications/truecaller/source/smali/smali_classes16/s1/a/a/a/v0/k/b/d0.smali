.class public final Ls1/a/a/a/v0/k/b/d0;
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

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/d0;->b:Ls1/a/a/a/v0/k/b/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/d0;->b:Ls1/a/a/a/v0/k/b/c0;

    .line 3
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 5
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    .line 6
    iget-boolean v1, p1, Ls1/a/a/a/v0/f/a;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    const-string v1, "$this$findTypeAliasAcrossModuleDependencies"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classId"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0, p1}, Le/q/f/a/d/a;->p0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/h;

    move-result-object p1

    instance-of v0, p1, Ls1/a/a/a/v0/b/v0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    check-cast v2, Ls1/a/a/a/v0/b/v0;

    :goto_1
    return-object v2
.end method
