.class public final Ls1/a/a/a/v0/a/o/d;
.super Ls1/a/a/a/v0/j/y/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/o/b;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/j/y/e;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V

    return-void
.end method


# virtual methods
.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/a/o/b;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/a/o/b;->j:Ls1/a/a/a/v0/a/o/c;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    .line 7
    check-cast v0, Ls1/a/a/a/v0/a/o/b;

    invoke-static {v0, v1}, Ls1/a/a/a/v0/a/o/e;->b1(Ls1/a/a/a/v0/a/o/b;Z)Ls1/a/a/a/v0/a/o/e;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    .line 9
    check-cast v0, Ls1/a/a/a/v0/a/o/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ls1/a/a/a/v0/a/o/e;->b1(Ls1/a/a/a/v0/a/o/b;Z)Ls1/a/a/a/v0/a/o/e;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
