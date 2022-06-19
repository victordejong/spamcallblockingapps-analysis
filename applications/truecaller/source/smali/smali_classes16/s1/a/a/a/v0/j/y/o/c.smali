.class public Ls1/a/a/a/v0/j/y/o/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/y/o/d;
.implements Ls1/a/a/a/v0/j/y/o/f;


# instance fields
.field public final a:Ls1/a/a/a/v0/b/e;

.field public final b:Ls1/a/a/a/v0/b/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/j/y/o/c;)V
    .locals 0

    const-string p2, "classDescriptor"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/j/y/o/c;->a:Ls1/a/a/a/v0/b/e;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    instance-of v1, p1, Ls1/a/a/a/v0/j/y/o/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Ls1/a/a/a/v0/j/y/o/c;

    if-eqz p1, :cond_1

    iget-object v2, p1, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    :cond_1
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "classDescriptor.defaultType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final m()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Class{"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/j/y/o/c;->b:Ls1/a/a/a/v0/b/e;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    const-string v2, "classDescriptor.defaultType"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
