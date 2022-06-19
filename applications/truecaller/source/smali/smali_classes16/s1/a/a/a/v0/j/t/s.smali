.class public final Ls1/a/a/a/v0/j/t/s;
.super Ls1/a/a/a/v0/j/t/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/j/t/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/g<",
        "Ls1/a/a/a/v0/j/t/s$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/a;I)V
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ls1/a/a/a/v0/j/t/f;

    invoke-direct {v0, p1, p2}, Ls1/a/a/a/v0/j/t/f;-><init>(Ls1/a/a/a/v0/f/a;I)V

    invoke-direct {p0, v0}, Ls1/a/a/a/v0/j/t/s;-><init>(Ls1/a/a/a/v0/j/t/f;)V

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/j/t/f;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ls1/a/a/a/v0/j/t/s$a$b;

    invoke-direct {v1, p1}, Ls1/a/a/a/v0/j/t/s$a$b;-><init>(Ls1/a/a/a/v0/j/t/f;)V

    .line 3
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v1}, Ls1/a/a/a/v0/j/t/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/j/t/s$a;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/j/t/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 8

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Ls1/a/a/a/v0/a/k$a;->W:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "module.builtIns.kClass"

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ls1/a/a/a/v0/m/a1;

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 10
    move-object v4, v0

    check-cast v4, Ls1/a/a/a/v0/j/t/s$a;

    .line 11
    instance-of v5, v4, Ls1/a/a/a/v0/j/t/s$a$a;

    if-eqz v5, :cond_0

    check-cast v0, Ls1/a/a/a/v0/j/t/s$a$a;

    .line 12
    iget-object p1, v0, Ls1/a/a/a/v0/j/t/s$a$a;->a:Ls1/a/a/a/v0/m/e0;

    goto :goto_1

    .line 13
    :cond_0
    instance-of v4, v4, Ls1/a/a/a/v0/j/t/s$a$b;

    if-eqz v4, :cond_3

    .line 14
    check-cast v0, Ls1/a/a/a/v0/j/t/s$a$b;

    .line 15
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/s$a$b;->a:Ls1/a/a/a/v0/j/t/f;

    .line 16
    iget-object v4, v0, Ls1/a/a/a/v0/j/t/f;->a:Ls1/a/a/a/v0/f/a;

    .line 17
    iget v0, v0, Ls1/a/a/a/v0/j/t/f;->b:I

    .line 18
    invoke-static {p1, v4}, Le/q/f/a/d/a;->o0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 19
    invoke-interface {v5}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    const-string v5, "descriptor.defaultType"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->W2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 20
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v6

    sget-object v7, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    invoke-virtual {v6, v7, v4}, Ls1/a/a/a/v0/a/g;->h(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    const-string v6, "module.builtIns.getArray\u2026Variance.INVARIANT, type)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v4

    goto :goto_1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unresolved type: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (arrayDimensions="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v0, "ErrorUtils.createErrorTy\u2026sions=$arrayDimensions)\")"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :goto_1
    invoke-direct {v3, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ls1/a/a/a/v0/m/f0;->e(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/e;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_4
    const/16 p1, 0x14

    .line 24
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
