.class public final Le/a/t1$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$q;
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
.field public final a:Le/a/t1$q;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$q$a;->a:Le/a/t1$q;

    .line 3
    iput p3, p0, Le/a/t1$q$a;->b:I

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
    iget v0, p0, Le/a/t1$q$a;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Le/a/t1$q$a;->a:Le/a/t1$q;

    .line 3
    iget-object v0, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 4
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 5
    invoke-interface {v0}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "context"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Le/a/p5/i0;

    invoke-static {v0, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-direct {v1, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/t1$q$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 10
    :cond_1
    iget-object v0, p0, Le/a/t1$q$a;->a:Le/a/t1$q;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v12, Le/a/h/s0/e;

    iget-object v2, v0, Le/a/t1$q;->d:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/h/s0/j;

    iget-object v2, v0, Le/a/t1$q;->d:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/h/s0/g;

    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 13
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 14
    invoke-interface {v2}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v5

    .line 15
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 17
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 18
    invoke-interface {v2}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v6

    .line 19
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 21
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 22
    invoke-interface {v2}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v7

    .line 23
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 25
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 26
    invoke-interface {v2}, Le/a/j2;->t6()Le/a/k3/h;

    move-result-object v8

    .line 27
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 29
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 30
    invoke-interface {v2}, Le/a/j2;->v4()Le/a/o5/s1;

    move-result-object v9

    .line 31
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v2, v0, Le/a/t1$q;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/p5/h0;

    iget-object v0, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 33
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 34
    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v11

    .line 35
    invoke-static {v11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v12

    .line 36
    invoke-direct/range {v2 .. v11}, Le/a/h/s0/e;-><init>(Le/a/h/s0/j;Le/a/h/s0/g;Le/a/o5/b0;Le/a/e4/b0;Le/a/l4/c;Le/a/k3/h;Le/a/o5/s1;Le/a/p5/h0;Le/a/p5/c;)V

    return-object v12

    .line 37
    :cond_2
    iget-object v0, p0, Le/a/t1$q$a;->a:Le/a/t1$q;

    .line 38
    new-instance v11, Le/a/h/s0/n;

    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 39
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 40
    invoke-interface {v2}, Le/a/j2;->u4()Le/a/h/b0;

    move-result-object v3

    .line 41
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 43
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 44
    invoke-interface {v2}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v4

    .line 45
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 47
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 48
    invoke-interface {v2}, Le/a/j2;->a3()Le/a/l0/c;

    move-result-object v5

    .line 49
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 51
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 52
    invoke-interface {v2}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v6

    .line 53
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 55
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 56
    invoke-interface {v2}, Le/a/j2;->i7()Le/a/k3/j/j;

    move-result-object v7

    .line 57
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 59
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 60
    invoke-interface {v2}, Le/a/j2;->W7()Le/a/h/d/d;

    move-result-object v8

    .line 61
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v2, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 63
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 64
    invoke-interface {v2}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v9

    .line 65
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v0, v0, Le/a/t1$q;->a:Le/a/t1;

    .line 67
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 68
    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v10

    .line 69
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v11

    .line 70
    invoke-direct/range {v2 .. v10}, Le/a/h/s0/n;-><init>(Le/a/h/b0;Le/a/e4/p;Le/a/l0/c;Le/a/p5/c0;Le/a/k3/j/j;Le/a/h/d/d;Ls1/w/f;Ls1/w/f;)V

    return-object v11
.end method
