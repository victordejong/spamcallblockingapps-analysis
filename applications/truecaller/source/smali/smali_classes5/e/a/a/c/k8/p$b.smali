.class public final Le/a/a/c/k8/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/k8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/k8/p;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/k8/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/k8/p$b;->a:Le/a/a/c/k8/p;

    .line 3
    iput p2, p0, Le/a/a/c/k8/p$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/c/k8/p$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/k8/p$b;->a:Le/a/a/c/k8/p;

    .line 3
    new-instance v2, Le/a/a/v;

    iget-object v3, v0, Le/a/a/c/k8/p;->a:Le/a/a/c/k8/o;

    .line 4
    new-instance v4, Le/a/p5/i0;

    iget-object v3, v3, Le/a/a/c/k8/o;->a:Landroid/content/Context;

    invoke-direct {v4, v3}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v3, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->m6()Le/a/l4/c;

    move-result-object v3

    .line 6
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-direct {v2, v4, v3, v0}, Le/a/a/v;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    return-object v2

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/c/k8/p$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/a/c/k8/p$b;->a:Le/a/a/c/k8/p;

    .line 12
    new-instance v10, Le/a/a/i1/c;

    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    .line 13
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v4

    .line 15
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v5

    .line 17
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v6

    .line 19
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v7

    .line 21
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v8

    .line 23
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v0, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v9

    .line 25
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v10

    .line 26
    invoke-direct/range {v2 .. v9}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    return-object v10

    .line 27
    :cond_2
    iget-object v0, p0, Le/a/a/c/k8/p$b;->a:Le/a/a/c/k8/p;

    .line 28
    new-instance v12, Le/a/a/c/k8/a;

    iget-object v2, v0, Le/a/a/c/k8/p;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/a/c/k8/i;

    iget-object v2, v0, Le/a/a/c/k8/p;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/c/k8/h;

    iget-object v2, v0, Le/a/a/c/k8/p;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/c/k8/l;

    iget-object v2, v0, Le/a/a/c/k8/p;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/i1/b;

    iget-object v2, v0, Le/a/a/c/k8/p;->a:Le/a/a/c/k8/o;

    .line 29
    new-instance v7, Le/a/p5/i0;

    iget-object v2, v2, Le/a/a/c/k8/o;->a:Landroid/content/Context;

    invoke-direct {v7, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 30
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v8

    .line 31
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v9

    .line 33
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v1, v0, Le/a/a/c/k8/p;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/a/u;

    iget-object v0, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Le/a/a/c/k8/a;-><init>(Le/a/a/c/k8/i;Le/a/a/c/k8/h;Le/a/a/c/k8/l;Le/a/a/i1/b;Le/a/p5/h0;Le/a/u3/g;Le/a/a/k/t;Le/a/a/u;Z)V

    return-object v12

    .line 35
    :cond_3
    iget-object v0, p0, Le/a/a/c/k8/p$b;->a:Le/a/a/c/k8/p;

    .line 36
    iget-object v0, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    .line 37
    invoke-interface {v0}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v0

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 39
    :cond_4
    iget-object v0, p0, Le/a/a/c/k8/p$b;->a:Le/a/a/c/k8/p;

    .line 40
    new-instance v8, Le/a/a/c/k8/e;

    .line 41
    iget-object v2, v0, Le/a/a/c/k8/p;->a:Le/a/a/c/k8/o;

    iget-object v3, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v3

    .line 42
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "actorsThreads"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {v3}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v3

    const-string v2, "actorsThreads.ui()"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 46
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v2, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v5

    .line 48
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v2, v0, Le/a/a/c/k8/p;->d:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v0, v0, Le/a/a/c/k8/p;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v7

    .line 50
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v8

    .line 51
    invoke-direct/range {v2 .. v7}, Le/a/a/c/k8/e;-><init>(Le/a/r2/j;Ls1/w/f;Le/a/r2/f;Lo3/a;Le/a/q2/i0;)V

    return-object v8
.end method
