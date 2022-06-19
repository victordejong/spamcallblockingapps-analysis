.class public Ls1/a/a/a/v0/m/w;
.super Ls1/a/a/a/v0/m/l0;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/m/v0;

.field public final c:Ls1/a/a/a/v0/j/y/i;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ljava/util/List;ZLjava/lang/String;I)V
    .locals 0

    and-int/lit8 p5, p6, 0x4

    if-eqz p5, :cond_0

    .line 1
    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    :cond_0
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p5, p6, 0x10

    if-eqz p5, :cond_2

    const-string p5, "???"

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    const-string p6, "constructor"

    .line 2
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "memberScope"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "arguments"

    invoke-static {p3, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "presentableName"

    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ls1/a/a/a/v0/m/l0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/w;->b:Ls1/a/a/a/v0/m/v0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/w;->c:Ls1/a/a/a/v0/j/y/i;

    iput-object p3, p0, Ls1/a/a/a/v0/m/w;->d:Ljava/util/List;

    iput-boolean p4, p0, Ls1/a/a/a/v0/m/w;->e:Z

    iput-object p5, p0, Ls1/a/a/a/v0/m/w;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public N0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/w;->d:Ljava/util/List;

    return-object v0
.end method

.method public O0()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/w;->b:Ls1/a/a/a/v0/m/v0;

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/m/w;->e:Z

    return v0
.end method

.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/w;->Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/w;->Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/w;

    move-result-object p1

    return-object p1
.end method

.method public U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 8

    .line 1
    new-instance v7, Ls1/a/a/a/v0/m/w;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/w;->b:Ls1/a/a/a/v0/m/v0;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/m/w;->c:Ls1/a/a/a/v0/j/y/i;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/m/w;->d:Ljava/util/List;

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, v7

    move v4, p1

    .line 5
    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/m/w;-><init>(Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/j/y/i;Ljava/util/List;ZLjava/lang/String;I)V

    return-object v7
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public X0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/w;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/w;->c:Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/w;->b:Ls1/a/a/a/v0/m/v0;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/m/w;->d:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/v0/m/w;->d:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const-string v3, ", "

    const-string v4, "<"

    const-string v5, ">"

    const-string v7, "..."

    .line 7
    invoke-static/range {v2 .. v8}, Ls1/u/i;->N(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
