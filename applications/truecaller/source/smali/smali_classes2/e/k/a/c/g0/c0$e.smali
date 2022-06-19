.class public final Le/k/a/c/g0/c0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Le/k/a/c/g0/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Le/k/a/c/v;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/k/a/c/g0/c0$e;Le/k/a/c/v;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;",
            "Le/k/a/c/v;",
            "ZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Le/k/a/c/v;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p3}, Le/k/a/c/v;->c()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p4, 0x0

    goto :goto_2

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass true for \'explName\' if name is null/empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_2
    iput-boolean p4, p0, Le/k/a/c/g0/c0$e;->d:Z

    .line 8
    iput-boolean p5, p0, Le/k/a/c/g0/c0$e;->e:Z

    .line 9
    iput-boolean p6, p0, Le/k/a/c/g0/c0$e;->f:Z

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le/k/a/c/g0/c0$e;->a(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p1

    return-object p1
.end method

.method public b()Le/k/a/c/g0/c0$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/g0/c0$e;->b()Le/k/a/c/g0/c0$e;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    if-eqz v1, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget-boolean v1, p0, Le/k/a/c/g0/c0$e;->e:Z

    iget-boolean v3, v0, Le/k/a/c/g0/c0$e;->e:Z

    if-ne v1, v3, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0, v2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/g0/c0$e;

    iget-object v2, p0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    iget-object v4, p0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    iget-boolean v5, p0, Le/k/a/c/g0/c0$e;->d:Z

    iget-boolean v6, p0, Le/k/a/c/g0/c0$e;->e:Z

    iget-boolean v7, p0, Le/k/a/c/g0/c0$e;->f:Z

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Le/k/a/c/g0/c0$e;-><init>(Ljava/lang/Object;Le/k/a/c/g0/c0$e;Le/k/a/c/v;ZZZ)V

    return-object v0
.end method

.method public d()Le/k/a/c/g0/c0$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/g0/c0$e;->f:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/k/a/c/g0/c0$e;->d()Le/k/a/c/g0/c0$e;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Le/k/a/c/g0/c0$e;->d()Le/k/a/c/g0/c0$e;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method public e()Le/k/a/c/g0/c0$e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/g0/c0$e;

    iget-object v2, p0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    iget-boolean v5, p0, Le/k/a/c/g0/c0$e;->d:Z

    iget-boolean v6, p0, Le/k/a/c/g0/c0$e;->e:Z

    iget-boolean v7, p0, Le/k/a/c/g0/c0$e;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/k/a/c/g0/c0$e;-><init>(Ljava/lang/Object;Le/k/a/c/g0/c0$e;Le/k/a/c/v;ZZZ)V

    return-object v0
.end method

.method public f()Le/k/a/c/g0/c0$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/k/a/c/g0/c0$e;->f()Le/k/a/c/g0/c0$e;

    move-result-object v0

    .line 2
    :goto_0
    iget-boolean v1, p0, Le/k/a/c/g0/c0$e;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/c/g0/c0$e;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/c/g0/c0$e;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/c/g0/c0$e;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s[visible=%b,ignore=%b,explicitName=%b]"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 5
    invoke-static {v0, v1}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    invoke-virtual {v1}, Le/k/a/c/g0/c0$e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
