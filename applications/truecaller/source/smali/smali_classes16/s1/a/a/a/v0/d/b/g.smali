.class public final Ls1/a/a/a/v0/d/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g0/f;


# instance fields
.field public final b:Ls1/a/a/a/v0/j/w/b;

.field public final c:Ls1/a/a/a/v0/j/w/b;

.field public final d:Ls1/a/a/a/v0/d/b/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/l;Ls1/a/a/a/v0/e/l;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/k/b/r;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/b/l;",
            "Ls1/a/a/a/v0/e/l;",
            "Ls1/a/a/a/v0/e/z/c;",
            "Ls1/a/a/a/v0/k/b/r<",
            "Ls1/a/a/a/v0/e/a0/b/f;",
            ">;ZZ)V"
        }
    .end annotation

    const-string p4, "kotlinClass"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "packageProto"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "nameResolver"

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object p6

    invoke-static {p6}, Ls1/a/a/a/v0/j/w/b;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/j/w/b;

    move-result-object p6

    const-string v0, "JvmClassName.byClassId(kotlinClass.classId)"

    invoke-static {p6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/d/b/w/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Ls1/a/a/a/v0/j/w/b;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/b;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "className"

    .line 4
    invoke-static {p6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Ls1/a/a/a/v0/d/b/g;->b:Ls1/a/a/a/v0/j/w/b;

    iput-object v0, p0, Ls1/a/a/a/v0/d/b/g;->c:Ls1/a/a/a/v0/j/w/b;

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/g;->d:Ls1/a/a/a/v0/d/b/l;

    .line 6
    sget-object p1, Ls1/a/a/a/v0/e/a0/a;->m:Ls1/a/a/a/v0/h/h$f;

    const-string p4, "JvmProtoBuf.packageModuleName"

    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Le/q/f/a/d/a;->K0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p3, Ls1/a/a/a/v0/e/a0/b/g;

    invoke-virtual {p3, p1}, Ls1/a/a/a/v0/e/a0/b/g;->getString(I)Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "Class \'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/b/g;->d()Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/b/s0;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/s0;->a:Ls1/a/a/a/v0/b/s0;

    const-string v1, "SourceFile.NO_SOURCE_FILE"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Ls1/a/a/a/v0/f/a;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/a;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/g;->b:Ls1/a/a/a/v0/j/w/b;

    .line 2
    iget-object v2, v1, Ls1/a/a/a/v0/j/w/b;->a:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3
    sget-object v1, Ls1/a/a/a/v0/f/b;->c:Ls1/a/a/a/v0/f/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Ls1/a/a/a/v0/j/w/b;->a(I)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    new-instance v3, Ls1/a/a/a/v0/f/b;

    iget-object v1, v1, Ls1/a/a/a/v0/j/w/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 5
    :goto_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/b/g;->e()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    return-object v0
.end method

.method public final e()Ls1/a/a/a/v0/f/e;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/g;->b:Ls1/a/a/a/v0/j/w/b;

    invoke-virtual {v0}, Ls1/a/a/a/v0/j/w/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "className.internalName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Ls1/f0/v;->c0(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(classNam\u2026.substringAfterLast(\'/\'))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ls1/a/a/a/v0/d/b/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/g;->b:Ls1/a/a/a/v0/j/w/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
