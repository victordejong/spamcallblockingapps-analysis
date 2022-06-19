.class public final Ls1/a/a/a/v0/b/j1/b/f0;
.super Ls1/a/a/a/v0/b/j1/b/u;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/y;


# instance fields
.field public final a:Ls1/a/a/a/v0/b/j1/b/d0;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/j1/b/d0;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectAnnotations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/u;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/f0;->a:Ls1/a/a/a/v0/b/j1/b/d0;

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/b/f0;->b:[Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Ls1/a/a/a/v0/b/j1/b/f0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Ls1/a/a/a/v0/b/j1/b/f0;->d:Z

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/f0;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Le/q/f/a/d/a;->E0([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/f0;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->e(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/d/a/f0/v;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/f0;->a:Ls1/a/a/a/v0/b/j1/b/d0;

    return-object v0
.end method

.method public s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/f0/a;
    .locals 1

    const-string v0, "fqName"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/f0;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Le/q/f/a/d/a;->n0([Ljava/lang/annotation/Annotation;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/j1/b/c;

    move-result-object p1

    return-object p1
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ls1/a/a/a/v0/b/j1/b/f0;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Ls1/a/a/a/v0/b/j1/b/f0;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "vararg "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/f0;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ls1/a/a/a/v0/f/e;->e(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/f0;->a:Ls1/a/a/a/v0/b/j1/b/d0;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/j1/b/f0;->d:Z

    return v0
.end method
