.class public final Le/a/t1$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public final a:Le/a/t1$l;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$l$a;->a:Le/a/t1$l;

    .line 3
    iput p3, p0, Le/a/t1$l$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/t1$l$a;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/t1$l$a;->a:Le/a/t1$l;

    .line 3
    new-instance v2, Le/a/e/b/b/k;

    iget-object v3, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 4
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 5
    invoke-interface {v3}, Le/a/j2;->B6()Le/a/a/g1/b;

    move-result-object v3

    .line 6
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v4, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 8
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 9
    invoke-interface {v4}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v4

    .line 10
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v1, v0, Le/a/t1$l;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/e/b/b/g;

    iget-object v0, v0, Le/a/t1$l;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/b/b/h;

    invoke-direct {v2, v3, v4, v1, v0}, Le/a/e/b/b/k;-><init>(Le/a/a/g1/b;Le/a/a/o/p;Le/a/e/b/b/g;Le/a/e/b/b/h;)V

    return-object v2

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t1$l$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 13
    :cond_1
    iget-object v0, p0, Le/a/t1$l$a;->a:Le/a/t1$l;

    .line 14
    new-instance v9, Le/a/e/b/b/f;

    iget-object v2, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 15
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 16
    invoke-interface {v2}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    .line 17
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v2, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 19
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 20
    invoke-interface {v2}, Le/a/j2;->B6()Le/a/a/g1/b;

    move-result-object v4

    .line 21
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v2, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 23
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    .line 25
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v2, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 27
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v2}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v6

    .line 29
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v2, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 31
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 32
    invoke-interface {v2}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v7

    .line 33
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v0, v0, Le/a/t1$l;->a:Le/a/t1;

    .line 35
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 36
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v8

    .line 37
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v9

    .line 38
    invoke-direct/range {v2 .. v8}, Le/a/e/b/b/f;-><init>(Le/a/a/i0;Le/a/a/g1/b;Ls1/w/f;Ls1/w/f;Le/a/p5/u;Le/a/u3/g;)V

    return-object v9
.end method
