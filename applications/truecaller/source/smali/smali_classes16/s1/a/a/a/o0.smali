.class public final Ls1/a/a/a/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/i/c;

.field public static final b:Ls1/a/a/a/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/i/c;->a:Ls1/a/a/a/v0/i/c;

    sput-object v0, Ls1/a/a/a/o0;->a:Ls1/a/a/a/v0/i/c;

    return-void
.end method

.method public static final a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/n0;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/o0;->e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ls1/a/a/a/s0;->d(Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object p1

    .line 3
    invoke-static {p0, v0}, Ls1/a/a/a/o0;->a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/n0;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "("

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-static {p0, p1}, Ls1/a/a/a/o0;->a(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/n0;)V

    if-eqz v0, :cond_2

    const-string p1, ")"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public static final c(Ls1/a/a/a/v0/b/v;)Ljava/lang/String;
    .locals 10

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fun "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0, p0}, Ls1/a/a/a/o0;->b(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/a;)V

    .line 4
    sget-object v1, Ls1/a/a/a/o0;->a:Ls1/a/a/a/v0/i/c;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ls1/a/a/a/v0/i/c;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "descriptor.valueParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ls1/a/a/a/o0$a;->b:Ls1/a/a/a/o0$a;

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    const-string v1, ": "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-static {p0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v1, "descriptor.returnType!!"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/o0;->e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Ls1/a/a/a/v0/b/k0;)Ljava/lang/String;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "var "

    goto :goto_0

    :cond_0
    const-string v1, "val "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0, p0}, Ls1/a/a/a/o0;->b(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/a;)V

    .line 4
    sget-object v1, Ls1/a/a/a/o0;->a:Ls1/a/a/a/v0/i/c;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ls1/a/a/a/v0/i/c;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    const-string v1, "descriptor.type"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls1/a/a/a/o0;->e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/o0;->a:Ls1/a/a/a/v0/i/c;

    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
