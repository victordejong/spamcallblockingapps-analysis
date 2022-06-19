.class public final Le/a/a/d/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/d/a/b;
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
.field public final a:Le/a/a/d/a/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/d/a/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/d/a/b$b;->a:Le/a/a/d/a/b;

    .line 3
    iput p2, p0, Le/a/a/d/a/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/d/a/b$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/d/a/b$b;->a:Le/a/a/d/a/b;

    .line 3
    new-instance v2, Le/a/a/d/a/i;

    iget-object v3, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    .line 4
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v4, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v4

    .line 6
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v5, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v5

    .line 8
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v6, Le/a/p5/i0;

    iget-object v0, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {v6, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {v2, v3, v4, v5, v6}, Le/a/a/d/a/i;-><init>(Le/a/o5/f0;Le/a/a/i0;Le/a/b0/o/a;Le/a/p5/h0;)V

    return-object v2

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/d/a/b$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 14
    :cond_1
    iget-object v0, p0, Le/a/a/d/a/b$b;->a:Le/a/a/d/a/b;

    .line 15
    new-instance v14, Le/a/a/d/a/m;

    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v3

    .line 16
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 18
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v2, v0, Le/a/a/d/a/b;->b:Le/a/a/d/a/c;

    iget-object v5, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v5

    .line 20
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "actorsThreads"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v5}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v5

    const-string v2, "actorsThreads.ui()"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v6

    .line 24
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v7

    .line 26
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g1()Le/a/a/k/a/z0;

    move-result-object v8

    .line 28
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v9

    .line 30
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->J5()Le/a/p5/a;

    move-result-object v10

    .line 32
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iget-object v2, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v11

    .line 34
    invoke-static {v11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v2, v0, Le/a/a/d/a/b;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/a/d/a/e;

    iget-object v0, v0, Le/a/a/d/a/b;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v13

    .line 36
    invoke-static {v13, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v14

    .line 37
    invoke-direct/range {v2 .. v13}, Le/a/a/d/a/m;-><init>(Ls1/w/f;Ls1/w/f;Le/a/r2/j;Le/a/r2/f;Le/a/p5/a0;Le/a/a/k/a/z0;Le/a/o5/m;Le/a/p5/a;Le/a/p5/u;Le/a/a/d/a/e;Le/a/q2/a;)V

    return-object v14
.end method
