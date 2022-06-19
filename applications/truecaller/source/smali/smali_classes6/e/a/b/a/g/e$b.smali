.class public final Le/a/b/a/g/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/g/e;
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
.field public final a:Le/a/b/a/g/e;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/b/a/g/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 3
    iput p2, p0, Le/a/b/a/g/e$b;->b:I

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
    iget v0, p0, Le/a/b/a/g/e$b;->b:I

    const-string v1, "context"

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/b/a/g/e$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 4
    new-instance v1, Le/a/b/a/d/b/c;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v3

    .line 5
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/e/b;

    invoke-direct {v1, v3, v0}, Le/a/b/a/d/b/c;-><init>(Le/a/p5/c0;Le/a/b/a/e/b;)V

    return-object v1

    .line 7
    :pswitch_1
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 8
    new-instance v1, Le/a/b/a/c/a/e0/g;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 9
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v5

    .line 11
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v7

    .line 13
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/b/a/e/b;

    iget-object v0, v0, Le/a/b/a/g/e;->e:Le/a/m4/b;

    invoke-interface {v0}, Le/a/m4/b;->X()Le/a/m4/c/i/a/b;

    move-result-object v9

    .line 15
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 16
    invoke-direct/range {v3 .. v9}, Le/a/b/a/c/a/e0/g;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/m4/c/i/a/b;)V

    return-object v1

    .line 17
    :pswitch_2
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 18
    new-instance v1, Le/a/b/a/c/a/e0/e;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 19
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v5

    .line 21
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v7

    .line 23
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v3, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/b/a/e/b;

    iget-object v3, v0, Le/a/b/a/g/e;->e:Le/a/m4/b;

    invoke-interface {v3}, Le/a/m4/b;->X()Le/a/m4/c/i/a/b;

    move-result-object v9

    .line 25
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v10

    .line 27
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 28
    invoke-direct/range {v3 .. v10}, Le/a/b/a/c/a/e0/e;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/m4/c/i/a/b;Le/a/u3/g;)V

    return-object v1

    .line 29
    :pswitch_3
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 30
    new-instance v1, Le/a/b/a/c/a/e0/l;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 31
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v5

    .line 33
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v7

    .line 35
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->H()Le/a/b0/p/d;

    move-result-object v8

    .line 37
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v3, v0, Le/a/b/a/g/e;->g:Le/a/g5/a0;

    invoke-interface {v3}, Le/a/g5/a0;->O()Le/a/g5/p;

    move-result-object v9

    .line 39
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v0, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/b/a/e/b;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Le/a/b/a/c/a/e0/l;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b0/p/d;Le/a/g5/p;Le/a/b/a/e/b;)V

    return-object v1

    .line 41
    :pswitch_4
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 42
    new-instance v1, Le/a/b/a/c/a/e0/b;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v4

    .line 43
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 45
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v7

    .line 47
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v3, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/b/a/e/b;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->H()Le/a/b0/p/d;

    move-result-object v9

    .line 49
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 50
    invoke-direct/range {v3 .. v9}, Le/a/b/a/c/a/e0/b;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/b0/p/d;)V

    return-object v1

    .line 51
    :pswitch_5
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 52
    new-instance v1, Le/a/b/a/c/a/e0/f;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v4

    .line 53
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 55
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->f:Le/a/k4/e;

    invoke-interface {v3}, Le/a/k4/e;->R7()Le/a/k4/o/g;

    move-result-object v7

    .line 57
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v3, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/b/a/e/b;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v9

    .line 59
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v3, v0, Le/a/b/a/g/e;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/b/a/f/f;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v11

    .line 61
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 62
    invoke-direct/range {v3 .. v11}, Le/a/b/a/c/a/e0/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/k4/o/g;Le/a/b/a/e/b;Le/a/p5/c0;Le/a/b/a/f/f;Le/a/u3/g;)V

    return-object v1

    .line 63
    :pswitch_6
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 64
    new-instance v1, Le/a/b/a/c/a/e0/d;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 65
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v5

    .line 67
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v7

    .line 69
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v2, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/b/a/e/b;

    iget-object v0, v0, Le/a/b/a/g/e;->E:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/b/a/c/a/d0/a;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Le/a/b/a/c/a/e0/d;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/b/a/c/a/d0/a;)V

    return-object v1

    .line 71
    :pswitch_7
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 72
    new-instance v1, Le/a/b/a/c/a/e0/m;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v3

    .line 73
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v4, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 75
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v5, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->H()Le/a/b0/p/d;

    move-result-object v5

    .line 77
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, v0, Le/a/b/a/g/e;->g:Le/a/g5/a0;

    invoke-interface {v0}, Le/a/g5/a0;->O()Le/a/g5/p;

    move-result-object v0

    .line 79
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-direct {v1, v3, v4, v5, v0}, Le/a/b/a/c/a/e0/m;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b0/p/d;Le/a/g5/p;)V

    return-object v1

    .line 81
    :pswitch_8
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 82
    new-instance v1, Le/a/b/a/f/j/b;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object v0

    .line 83
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-direct {v1, v0}, Le/a/b/a/f/j/b;-><init>(Le/a/b0/e/l;)V

    return-object v1

    .line 85
    :pswitch_9
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 86
    iget-object v0, v0, Le/a/b/a/g/e;->a:Le/a/b/a/g/d;

    .line 87
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    return-object v0

    .line 89
    :pswitch_a
    new-instance v0, Le/a/b/a/f/e;

    invoke-direct {v0}, Le/a/b/a/f/e;-><init>()V

    return-object v0

    .line 90
    :pswitch_b
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 91
    new-instance v1, Le/a/b/a/f/c;

    iget-object v3, v0, Le/a/b/a/g/e;->Q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/b/a/f/d;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object v5

    .line 92
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v3, v0, Le/a/b/a/g/e;->R:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/m/e/k;

    iget-object v3, v0, Le/a/b/a/g/e;->T:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/b/a/f/j/a;

    iget-object v3, v0, Le/a/b/a/g/e;->e:Le/a/m4/b;

    invoke-interface {v3}, Le/a/m4/b;->X()Le/a/m4/c/i/a/b;

    move-result-object v8

    .line 94
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, v0, Le/a/b/a/g/e;->e:Le/a/m4/b;

    invoke-interface {v0}, Le/a/m4/b;->c6()Le/a/m4/c/i/a/e;

    move-result-object v9

    .line 96
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 97
    invoke-direct/range {v3 .. v9}, Le/a/b/a/f/c;-><init>(Le/a/b/a/f/d;Le/a/b0/o/a;Le/m/e/k;Le/a/b/a/f/j/a;Le/a/m4/c/i/a/b;Le/a/m4/c/i/a/e;)V

    return-object v1

    .line 98
    :pswitch_c
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 99
    new-instance v1, Le/a/b/a/e/c;

    iget-object v3, v0, Le/a/b/a/g/e;->h:Le/a/q2/e;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    .line 100
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v4, v0, Le/a/b/a/g/e;->h:Le/a/q2/e;

    invoke-interface {v4}, Le/a/q2/e;->L1()Le/a/q2/d1/d;

    move-result-object v4

    .line 102
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iget-object v0, v0, Le/a/b/a/g/e;->h:Le/a/q2/e;

    invoke-interface {v0}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v0

    .line 104
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    invoke-direct {v1, v3, v4, v0}, Le/a/b/a/e/c;-><init>(Le/a/q2/a;Le/a/q2/d1/d;Le/a/r2/f;)V

    return-object v1

    .line 106
    :pswitch_d
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 107
    new-instance v1, Le/a/b/a/c/a/e0/i;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->V()Le/a/b0/e/f;

    move-result-object v4

    .line 108
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iget-object v3, v0, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/b/a/e/b;

    iget-object v3, v0, Le/a/b/a/g/e;->V:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/b/a/f/b;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v7

    .line 110
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v8

    .line 112
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v9

    .line 114
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object v10

    .line 116
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 117
    invoke-direct/range {v3 .. v10}, Le/a/b/a/c/a/e0/i;-><init>(Le/a/b0/e/f;Le/a/b/a/e/b;Le/a/b/a/f/b;Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/b0/o/a;)V

    return-object v1

    .line 118
    :pswitch_e
    new-instance v0, Le/a/b/a/c/a/e0/j;

    invoke-direct {v0}, Le/a/b/a/c/a/e0/j;-><init>()V

    return-object v0

    .line 119
    :pswitch_f
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 120
    new-instance v1, Le/a/g5/c0/b;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->H()Le/a/b0/p/d;

    move-result-object v3

    .line 121
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v4, v0, Le/a/b/a/g/e;->g:Le/a/g5/a0;

    invoke-interface {v4}, Le/a/g5/a0;->O()Le/a/g5/p;

    move-result-object v4

    .line 123
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 125
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-direct {v1, v3, v4, v0}, Le/a/g5/c0/b;-><init>(Le/a/b0/p/d;Le/a/g5/p;Ls1/w/f;)V

    return-object v1

    .line 127
    :pswitch_10
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 128
    new-instance v1, Le/a/b/a/a/d/d/b;

    iget-object v0, v0, Le/a/b/a/g/e;->I:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/c0/a;

    invoke-direct {v1, v0}, Le/a/b/a/a/d/d/b;-><init>(Le/a/g5/c0/a;)V

    return-object v1

    .line 129
    :pswitch_11
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 130
    iget-object v3, v0, Le/a/b/a/g/e;->a:Le/a/b/a/g/d;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->j()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(context)"

    .line 134
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 135
    :pswitch_12
    new-instance v0, Le/a/b/a/c/a/d0/b;

    invoke-direct {v0}, Le/a/b/a/c/a/d0/b;-><init>()V

    return-object v0

    .line 136
    :pswitch_13
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 137
    iget-object v3, v0, Le/a/b/a/g/e;->a:Le/a/b/a/g/d;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->j()Landroid/content/Context;

    move-result-object v0

    .line 138
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v1, Le/a/p5/i0;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-direct {v1, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 141
    :pswitch_14
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 142
    new-instance v1, Le/a/b/a/a/d/b;

    iget-object v3, v0, Le/a/b/a/g/e;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/b/a/a/b/a;

    iget-object v3, v0, Le/a/b/a/g/e;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/p5/h0;

    .line 143
    new-instance v6, Le/a/b/a/a/c/e/a;

    iget-object v3, v0, Le/a/b/a/g/e;->E:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/a/c/a/d0/a;

    invoke-direct {v6, v3}, Le/a/b/a/a/c/e/a;-><init>(Le/a/b/a/c/a/d0/a;)V

    .line 144
    iget-object v3, v0, Le/a/b/a/g/e;->g:Le/a/g5/a0;

    invoke-interface {v3}, Le/a/g5/a0;->O()Le/a/g5/p;

    move-result-object v7

    .line 145
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v0, v0, Le/a/b/a/g/e;->F:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ln3/m0/y;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/b/a/a/d/b;-><init>(Le/a/b/a/a/b/a;Le/a/p5/h0;Le/a/b/a/a/c/e/a;Le/a/g5/p;Ln3/m0/y;)V

    return-object v1

    .line 147
    :pswitch_15
    new-instance v0, Le/a/b/a/h/a/f;

    invoke-direct {v0}, Le/a/b/a/h/a/f;-><init>()V

    return-object v0

    .line 148
    :pswitch_16
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 149
    iget-object v0, v0, Le/a/b/a/g/e;->a:Le/a/b/a/g/d;

    .line 150
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Le/a/f4/b/a;

    sget-object v1, Le/a/b/a/g/c;->b:Le/a/b/a/g/c;

    invoke-direct {v0, v1}, Le/a/f4/b/a;-><init>(Ls1/z/b/a;)V

    return-object v0

    .line 152
    :pswitch_17
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 153
    new-instance v1, Le/a/b/a/f/i;

    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->j()Landroid/content/Context;

    move-result-object v4

    .line 154
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object v5

    .line 156
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->x7()Le/a/b0/e/h;

    move-result-object v6

    .line 158
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->W()Le/a/p5/g;

    move-result-object v7

    .line 160
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->E1()Le/a/f4/b/g/b;

    move-result-object v8

    .line 162
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->j6()Le/a/f4/b/b;

    move-result-object v9

    .line 164
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->H6()Ljava/lang/String;

    move-result-object v10

    .line 166
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->l7()Le/a/f4/b/h/c;

    move-result-object v11

    .line 168
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    iget-object v3, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->w7()Le/a/f4/b/f/b;

    move-result-object v12

    .line 170
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    iget-object v3, v0, Le/a/b/a/g/e;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/f4/b/a;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->e0()Le/a/x3/c;

    move-result-object v14

    .line 172
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    .line 173
    invoke-direct/range {v3 .. v14}, Le/a/b/a/f/i;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V

    return-object v1

    .line 174
    :pswitch_18
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 175
    new-instance v1, Le/a/b/a/f/g;

    iget-object v0, v0, Le/a/b/a/g/e;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/f/h;

    invoke-direct {v1, v0}, Le/a/b/a/f/g;-><init>(Le/a/b/a/f/h;)V

    return-object v1

    .line 176
    :pswitch_19
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 177
    new-instance v1, Le/a/b/a/h/b/b;

    iget-object v3, v0, Le/a/b/a/g/e;->f:Le/a/k4/e;

    invoke-interface {v3}, Le/a/k4/e;->R7()Le/a/k4/o/g;

    move-result-object v3

    .line 178
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iget-object v4, v0, Le/a/b/a/g/e;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/a/f/f;

    iget-object v5, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v5}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v5

    .line 180
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    iget-object v0, v0, Le/a/b/a/g/e;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/g/g;

    invoke-direct {v1, v3, v4, v5, v0}, Le/a/b/a/h/b/b;-><init>(Le/a/k4/o/g;Le/a/b/a/f/f;Le/a/p5/c0;Le/a/b/a/g/g;)V

    return-object v1

    .line 182
    :pswitch_1a
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 183
    new-instance v1, Le/a/b/a/h/a/d;

    iget-object v0, v0, Le/a/b/a/g/e;->w:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/h/b/a;

    invoke-direct {v1, v0}, Le/a/b/a/h/a/d;-><init>(Le/a/b/a/h/b/a;)V

    return-object v1

    .line 184
    :pswitch_1b
    new-instance v0, Le/a/b/a/g/f;

    invoke-direct {v0}, Le/a/b/a/g/f;-><init>()V

    return-object v0

    .line 185
    :pswitch_1c
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 186
    iget-object v1, v0, Le/a/b/a/g/e;->a:Le/a/b/a/g/d;

    .line 187
    new-instance v3, Le/a/b/a/a/b/c/a;

    iget-object v4, v0, Le/a/b/a/g/e;->e:Le/a/m4/b;

    invoke-interface {v4}, Le/a/m4/b;->X()Le/a/m4/c/i/a/b;

    move-result-object v4

    .line 188
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    iget-object v0, v0, Le/a/b/a/g/e;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/g/g;

    invoke-direct {v3, v4, v0}, Le/a/b/a/a/b/c/a;-><init>(Le/a/m4/c/i/a/b;Le/a/b/a/g/g;)V

    .line 190
    new-instance v0, Le/a/b/a/a/b/d/b;

    invoke-direct {v0}, Le/a/b/a/a/b/d/b;-><init>()V

    .line 191
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localDS"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "remoteDS"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v1, Le/a/b/a/a/b/b;

    new-instance v2, Le/a/b/a/g/f;

    invoke-direct {v2}, Le/a/b/a/g/f;-><init>()V

    invoke-direct {v1, v3, v0, v2}, Le/a/b/a/a/b/b;-><init>(Le/a/b/a/a/b/c/a;Le/a/b/a/a/b/d/b;Le/a/b/a/g/g;)V

    return-object v1

    .line 193
    :pswitch_1d
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 194
    new-instance v1, Le/a/b/a/h/a/b;

    iget-object v0, v0, Le/a/b/a/g/e;->n:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/a/b/a;

    invoke-direct {v1, v0}, Le/a/b/a/h/a/b;-><init>(Le/a/b/a/a/b/a;)V

    return-object v1

    .line 195
    :pswitch_1e
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 196
    new-instance v1, Le/a/b/a/h/c/l;

    iget-object v3, v0, Le/a/b/a/g/e;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/a/h/a/a;

    iget-object v4, v0, Le/a/b/a/g/e;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/a/h/a/c;

    iget-object v5, v0, Le/a/b/a/g/e;->A:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/a/h/a/e;

    iget-object v0, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v0}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v0

    .line 197
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    invoke-direct {v1, v3, v4, v5, v0}, Le/a/b/a/h/c/l;-><init>(Le/a/b/a/h/a/a;Le/a/b/a/h/a/c;Le/a/b/a/h/a/e;Le/a/p5/c0;)V

    return-object v1

    .line 199
    :pswitch_1f
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 200
    new-instance v1, Le/a/b/a/a/a/b/d;

    iget-object v3, v0, Le/a/b/a/g/e;->c:Le/a/p5/o0;

    invoke-interface {v3}, Le/a/p5/o0;->c()Le/a/p5/a0;

    move-result-object v3

    .line 201
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iget-object v0, v0, Le/a/b/a/g/e;->d:Le/a/h5/s;

    invoke-interface {v0}, Le/a/h5/s;->K()Le/a/h5/y;

    move-result-object v0

    .line 203
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-direct {v1, v3, v0}, Le/a/b/a/a/a/b/d;-><init>(Le/a/p5/a0;Le/a/h5/y;)V

    return-object v1

    .line 205
    :pswitch_20
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 206
    new-instance v1, Le/a/b/a/g/a;

    .line 207
    const-class v2, Le/a/b/a/a/a/b/d;

    iget-object v3, v0, Le/a/b/a/g/e;->k:Ljavax/inject/Provider;

    const-class v4, Le/a/b/a/h/c/l;

    iget-object v5, v0, Le/a/b/a/g/e;->B:Ljavax/inject/Provider;

    const-class v6, Le/a/b/a/a/d/b;

    iget-object v7, v0, Le/a/b/a/g/e;->G:Ljavax/inject/Provider;

    const-class v8, Le/a/b/a/a/d/d/b;

    iget-object v9, v0, Le/a/b/a/g/e;->J:Ljavax/inject/Provider;

    invoke-static/range {v2 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 208
    invoke-direct {v1, v0}, Le/a/b/a/g/a;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 209
    :pswitch_21
    iget-object v0, p0, Le/a/b/a/g/e$b;->a:Le/a/b/a/g/e;

    .line 210
    iget-object v3, v0, Le/a/b/a/g/e;->a:Le/a/b/a/g/d;

    iget-object v0, v0, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->j()Landroid/content/Context;

    move-result-object v0

    .line 211
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v1, Le/a/b/p/d;

    invoke-direct {v1, v0}, Le/a/b/p/d;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
