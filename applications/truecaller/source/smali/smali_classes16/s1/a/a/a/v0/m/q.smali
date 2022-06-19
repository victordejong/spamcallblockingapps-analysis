.class public final Ls1/a/a/a/v0/m/q;
.super Ls1/a/a/a/v0/m/s;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/p;
.implements Ls1/a/a/a/v0/m/n1/d;


# instance fields
.field public final b:Ls1/a/a/a/v0/m/l0;

.field public final c:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/s;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    iput-boolean p2, p0, Ls1/a/a/a/v0/m/q;->c:Z

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/l0;ZLs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ls1/a/a/a/v0/m/s;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    iput-boolean p2, p0, Ls1/a/a/a/v0/m/q;->c:Z

    return-void
.end method

.method public static final a1(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/q;
    .locals 10

    const-string v0, "type"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p0, Ls1/a/a/a/v0/m/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v2, p0

    check-cast v2, Ls1/a/a/a/v0/m/q;

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/b/w0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 4
    instance-of v1, p0, Ls1/a/a/a/v0/m/l1/g;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :cond_2
    :goto_0
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/b/w0;

    if-eqz v1, :cond_4

    .line 6
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ls1/a/a/a/v0/m/l1/b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Ls1/a/a/a/v0/m/l1/b;-><init>(ZZZLs1/a/a/a/v0/m/l1/e;I)V

    .line 9
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->C2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    sget-object v3, Ls1/a/a/a/v0/m/h$a$b;->a:Ls1/a/a/a/v0/m/h$a$b;

    invoke-static {v0, v1, v3}, Ls1/a/a/a/v0/m/c;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/h$a;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 10
    instance-of v0, p0, Ls1/a/a/a/v0/m/y;

    if-eqz v0, :cond_5

    .line 11
    move-object v0, p0

    check-cast v0, Ls1/a/a/a/v0/m/y;

    .line 12
    iget-object v1, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 13
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    .line 14
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 15
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    :cond_5
    new-instance v0, Ls1/a/a/a/v0/m/q;

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->C2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p0

    invoke-direct {v0, p0, p1, v2}, Ls1/a/a/a/v0/m/q;-><init>(Ls1/a/a/a/v0/m/l0;ZLs1/z/c/f;)V

    move-object v2, v0

    :cond_6
    :goto_2
    return-object v2
.end method


# virtual methods
.method public P0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic U0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/q;->b1(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/q;

    move-result-object p1

    return-object p1
.end method

.method public V0(Z)Ls1/a/a/a/v0/m/l0;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/q;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    iget-boolean v1, p0, Ls1/a/a/a/v0/m/q;->c:Z

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/m/q;-><init>(Ls1/a/a/a/v0/m/l0;Z)V

    return-object v0
.end method

.method public X0()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method

.method public Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;
    .locals 2

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/q;

    iget-boolean v1, p0, Ls1/a/a/a/v0/m/q;->c:Z

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/m/q;-><init>(Ls1/a/a/a/v0/m/l0;Z)V

    return-object v0
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    instance-of v0, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b1(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/q;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/q;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/m/l0;->W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    iget-boolean v1, p0, Ls1/a/a/a/v0/m/q;->c:Z

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/m/q;-><init>(Ls1/a/a/a/v0/m/l0;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/m/q;->b:Ls1/a/a/a/v0/m/l0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    iget-boolean v0, p0, Ls1/a/a/a/v0/m/q;->c:Z

    invoke-static {p1, v0}, Ls1/a/a/a/v0/m/o0;->a(Ls1/a/a/a/v0/m/i1;Z)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    return-object p1
.end method
