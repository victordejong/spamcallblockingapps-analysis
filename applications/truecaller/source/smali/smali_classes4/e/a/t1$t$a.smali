.class public final Le/a/t1$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$t;
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
.field public final a:Le/a/t1$t;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$t$a;->a:Le/a/t1$t;

    .line 3
    iput p3, p0, Le/a/t1$t$a;->b:I

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
    iget v0, p0, Le/a/t1$t$a;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/t1$t$a;->a:Le/a/t1$t;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Le/a/h/c/m;

    iget-object v3, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 5
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 6
    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    .line 7
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v4, v0, Le/a/t1$t;->d:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h/c/c;

    iget-object v5, v0, Le/a/t1$t;->d:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/h/c/j;

    iget-object v0, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 9
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 10
    invoke-interface {v0}, Le/a/j2;->t6()Le/a/k3/h;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/h/c/m;-><init>(Le/a/p5/c0;Le/a/h/c/c;Le/a/h/c/j;Le/a/k3/h;)V

    return-object v2

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t1$t$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 14
    :cond_1
    iget-object v0, p0, Le/a/t1$t$a;->a:Le/a/t1$t;

    .line 15
    new-instance v8, Le/a/h/c/s;

    iget-object v2, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 16
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 17
    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 18
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v2, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 20
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 21
    invoke-interface {v2}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v4

    .line 22
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v2, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 24
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 25
    invoke-interface {v2}, Le/a/j2;->C7()Le/a/h/c/t;

    move-result-object v5

    .line 26
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v2, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 28
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 29
    invoke-interface {v2}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v6

    .line 30
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v0, v0, Le/a/t1$t;->a:Le/a/t1;

    .line 32
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 33
    invoke-interface {v0}, Le/a/j2;->B7()Le/a/k3/j/g;

    move-result-object v7

    .line 34
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v8

    .line 35
    invoke-direct/range {v2 .. v7}, Le/a/h/c/s;-><init>(Ls1/w/f;Ls1/w/f;Le/a/h/c/t;Le/a/k3/l/f;Le/a/k3/j/g;)V

    return-object v8
.end method
