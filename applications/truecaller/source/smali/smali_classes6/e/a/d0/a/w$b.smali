.class public final Le/a/d0/a/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/a/w;
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
.field public final a:Le/a/d0/a/w;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/d0/a/w;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d0/a/w$b;->a:Le/a/d0/a/w;

    .line 3
    iput p2, p0, Le/a/d0/a/w$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/d0/a/w$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d0/a/w$b;->a:Le/a/d0/a/w;

    .line 3
    new-instance v2, Le/a/o/a/j/b;

    iget-object v3, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 4
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v4, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v4

    .line 6
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v5, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->L2()Le/a/o/a/j/c;

    move-result-object v5

    .line 8
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/o/a/j/b;-><init>(Ls1/w/f;Le/a/o/c;Le/a/o/a/j/c;Le/a/p5/c0;)V

    return-object v2

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/d0/a/w$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 13
    :cond_1
    iget-object v0, p0, Le/a/d0/a/w$b;->a:Le/a/d0/a/w;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v8, Le/a/b/j/b;

    iget-object v2, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 16
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v2, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->p3()Le/a/x4/g;

    move-result-object v4

    .line 18
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v2, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->t0()Le/a/x4/a;

    move-result-object v5

    .line 20
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v2, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->H5()Le/a/b/j/c;

    move-result-object v6

    .line 22
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v0, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 24
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v8

    .line 25
    invoke-direct/range {v2 .. v7}, Le/a/b/j/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/a;Le/a/b/j/c;Le/a/u3/g;)V

    return-object v8

    .line 26
    :cond_2
    iget-object v0, p0, Le/a/d0/a/w$b;->a:Le/a/d0/a/w;

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v2, Le/a/x4/l/b;

    iget-object v3, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 29
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v4, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->p3()Le/a/x4/g;

    move-result-object v4

    .line 31
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v5, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->L7()Le/a/x4/e;

    move-result-object v5

    .line 33
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v0, v0, Le/a/d0/a/w;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k0()Le/a/x4/l/c;

    move-result-object v0

    .line 35
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/x4/l/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/e;Le/a/x4/l/c;)V

    return-object v2
.end method
