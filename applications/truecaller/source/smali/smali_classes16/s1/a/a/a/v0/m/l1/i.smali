.class public final Ls1/a/a/a/v0/m/l1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/s/a/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/a/a/a/v0/m/y0;

.field public c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/i1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/m/l1/i;

.field public final e:Ls1/a/a/a/v0/b/w0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/y0;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/i1;",
            ">;>;",
            "Ls1/a/a/a/v0/m/l1/i;",
            "Ls1/a/a/a/v0/b/w0;",
            ")V"
        }
    .end annotation

    const-string v0, "projection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/i;->b:Ls1/a/a/a/v0/m/y0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/l1/i;->c:Ls1/z/b/a;

    iput-object p3, p0, Ls1/a/a/a/v0/m/l1/i;->d:Ls1/a/a/a/v0/m/l1/i;

    iput-object p4, p0, Ls1/a/a/a/v0/m/l1/i;->e:Ls1/a/a/a/v0/b/w0;

    .line 2
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance p2, Ls1/a/a/a/v0/m/l1/i$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/m/l1/i$a;-><init>(Ls1/a/a/a/v0/m/l1/i;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/i;->a:Ls1/g;

    return-void
.end method

.method public synthetic constructor <init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Ls1/a/a/a/v0/m/l1/i;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l1/i;->f(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/i;

    move-result-object p1

    return-object p1
.end method

.method public b()Ls1/a/a/a/v0/m/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i;->b:Ls1/a/a/a/v0/m/y0;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Ls1/a/a/a/v0/m/l1/i;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/m/l1/i;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/l1/i;->d:Ls1/a/a/a/v0/m/l1/i;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    iget-object v3, p1, Ls1/a/a/a/v0/m/l1/i;->d:Ls1/a/a/a/v0/m/l1/i;

    if-eqz v3, :cond_4

    move-object p1, v3

    :cond_4
    if-ne v1, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0
.end method

.method public f(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l1/i;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i;->b:Ls1/a/a/a/v0/m/y0;

    .line 2
    invoke-interface {v0, p1}, Ls1/a/a/a/v0/m/y0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    const-string v1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/l1/i;->c:Ls1/z/b/a;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ls1/a/a/a/v0/m/l1/i$b;

    invoke-direct {v1, p0, p1}, Ls1/a/a/a/v0/m/l1/i$b;-><init>(Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/m/l1/e;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object p1, p0, Ls1/a/a/a/v0/m/l1/i;->d:Ls1/a/a/a/v0/m/l1/i;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    .line 6
    :goto_1
    iget-object v2, p0, Ls1/a/a/a/v0/m/l1/i;->e:Ls1/a/a/a/v0/b/w0;

    .line 7
    new-instance v3, Ls1/a/a/a/v0/m/l1/i;

    invoke-direct {v3, v0, v1, p1, v2}, Ls1/a/a/a/v0/m/l1/i;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;)V

    return-object v3
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i;->d:Ls1/a/a/a/v0/m/l1/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/l1/i;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i;->b:Ls1/a/a/a/v0/m/y0;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v1, "projection.type"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->i1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CapturedType("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/l1/i;->b:Ls1/a/a/a/v0/m/y0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
