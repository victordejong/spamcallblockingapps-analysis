.class public final Le/a/a/b/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/b/l;
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
.field public final a:Le/a/a/b/l;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/b/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 3
    iput p2, p0, Le/a/a/b/l$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/b/l$b;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "inboxTab"

    const-string v6, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/b/l$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 4
    new-instance v2, Le/a/a/m/j3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/s1;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v1

    .line 5
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/j3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/s1;Le/a/l/c2;)V

    return-object v2

    .line 7
    :pswitch_1
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 8
    new-instance v2, Le/a/a/i/e;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/i/b;

    iget-object v1, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/i/d$a;

    invoke-direct {v2, v3, v1}, Le/a/a/i/e;-><init>(Le/a/a/i/b;Le/a/a/i/d$a;)V

    return-object v2

    .line 9
    :pswitch_2
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 10
    new-instance v2, Le/a/a/b/n0;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/b/i0;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/b/h;

    invoke-virtual {v1}, Le/a/a/b/l;->d()Le/a/a/i1/c;

    move-result-object v10

    .line 11
    iget-object v3, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v3}, Le/a/c/p/a;->n2(Le/a/a/b/o;)Le/a/p5/h0;

    move-result-object v4

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "resourceProvider"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v11, Le/a/b0/a/b/a;

    invoke-direct {v11, v4}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 14
    iget-object v4, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v4}, Le/a/c/p/a;->n2(Le/a/a/b/o;)Le/a/p5/h0;

    move-result-object v5

    .line 15
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v12, Le/a/b0/a/b/a;

    invoke-direct {v12, v5}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 17
    new-instance v13, Le/a/x2/b;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    .line 18
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-direct {v13, v3}, Le/a/x2/b;-><init>(Le/a/o5/f0;)V

    .line 20
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v14

    .line 21
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 22
    invoke-direct/range {v7 .. v14}, Le/a/a/b/n0;-><init>(Le/a/a/b/i0;Le/a/a/b/h;Le/a/a/i1/b;Le/a/b0/a/b/a;Le/a/b0/a/b/a;Le/a/x2/b;Le/a/a/i0;)V

    return-object v2

    .line 23
    :pswitch_3
    new-instance v1, Le/a/a/m/u;

    invoke-direct {v1}, Le/a/a/m/u;-><init>()V

    return-object v1

    .line 24
    :pswitch_4
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 25
    new-instance v2, Le/a/a/m/f3/l;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/d2$a;

    invoke-virtual {v1}, Le/a/a/b/l;->k()Le/a/a/m/f3/k;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/l;-><init>(Le/a/a/m/j2;Le/a/a/m/d2$a;Le/a/a/m/f3/k;)V

    return-object v2

    .line 26
    :pswitch_5
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 27
    new-instance v2, Le/a/a/m/f3/n;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/f2$a;

    invoke-virtual {v1}, Le/a/a/b/l;->m()Le/a/a/m/f3/m;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/n;-><init>(Le/a/a/m/j2;Le/a/a/m/f2$a;Le/a/a/m/f3/m;)V

    return-object v2

    .line 28
    :pswitch_6
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 29
    new-instance v2, Le/a/a/m/g3/g;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 30
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v5, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/m/z1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->j()Le/a/a/m/g3/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/g3/g;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/z1$a;Le/a/a/m/g3/f;)V

    return-object v2

    .line 32
    :pswitch_7
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 33
    new-instance v2, Le/a/a/m/f3/h;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/w1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->g()Le/a/a/m/f3/g;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/h;-><init>(Le/a/a/m/j2;Le/a/a/m/w1$a;Le/a/a/m/f3/g;)V

    return-object v2

    .line 34
    :pswitch_8
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 35
    new-instance v2, Le/a/a/m/g3/c;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/j1$a;

    .line 36
    new-instance v5, Le/a/a/m/g3/b;

    iget-object v7, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v7

    .line 37
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v1}, Le/a/a/b/l;->i()Le/a/a/m/o2;

    move-result-object v1

    invoke-direct {v5, v7, v1}, Le/a/a/m/g3/b;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 39
    invoke-direct {v2, v3, v4, v5}, Le/a/a/m/g3/c;-><init>(Le/a/a/m/j2;Le/a/a/m/j1$a;Le/a/a/m/g3/b;)V

    return-object v2

    .line 40
    :pswitch_9
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 41
    new-instance v2, Le/a/a/m/f3/f;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/p1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->e()Le/a/a/m/f3/e;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/f;-><init>(Le/a/a/m/j2;Le/a/a/m/p1$a;Le/a/a/m/f3/e;)V

    return-object v2

    .line 42
    :pswitch_a
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 43
    new-instance v2, Le/a/a/m/g3/e;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/o1$a;

    .line 44
    new-instance v5, Le/a/a/m/g3/d;

    iget-object v7, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v7

    .line 45
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v1}, Le/a/a/b/l;->i()Le/a/a/m/o2;

    move-result-object v1

    invoke-direct {v5, v7, v1}, Le/a/a/m/g3/d;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 47
    invoke-direct {v2, v3, v4, v5}, Le/a/a/m/g3/e;-><init>(Le/a/a/m/j2;Le/a/a/m/o1$a;Le/a/a/m/g3/d;)V

    return-object v2

    .line 48
    :pswitch_b
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 49
    new-instance v2, Le/a/a/m/b3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/x1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->h()Le/a/n2/b/a;

    move-result-object v5

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 50
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/b3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/x1$a;Le/a/n2/b/a;Le/a/q2/a;)V

    return-object v2

    .line 52
    :pswitch_c
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 53
    new-instance v2, Le/a/a/m/d3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v4

    .line 54
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object v5, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v5

    .line 56
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v1, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/m/u1$a;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/d3/a;-><init>(Le/a/a/m/j2;Le/a/b/c;Le/a/q2/a;Le/a/a/m/u1$a;)V

    return-object v2

    .line 58
    :pswitch_d
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 59
    new-instance v2, Le/a/a/m/i3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/r1$a;

    iget-object v5, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->l6()Le/a/z/f;

    move-result-object v5

    .line 60
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 62
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/i3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/r1$a;Le/a/z/f;Le/a/q2/a;)V

    return-object v2

    .line 64
    :pswitch_e
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 65
    new-instance v2, Le/a/a/m/d3/b;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 66
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iget-object v5, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v5

    .line 68
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iget-object v1, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/m/a2$a;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/d3/b;-><init>(Le/a/a/m/j2;Le/a/q2/a;Le/a/b/c;Le/a/a/m/a2$a;)V

    return-object v2

    .line 70
    :pswitch_f
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 71
    new-instance v2, Le/a/a/m/s;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v4

    .line 72
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v5, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/m/q1$a;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 74
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/s;-><init>(Le/a/a/m/j2;Le/a/a/i0;Le/a/a/m/q1$a;Le/a/q2/a;)V

    return-object v2

    .line 76
    :pswitch_10
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 77
    new-instance v2, Le/a/a/m/f3/j;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 78
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v10

    .line 80
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/m/c2$a;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 82
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 83
    invoke-direct/range {v7 .. v12}, Le/a/a/m/f3/j;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/k/h;Le/a/a/m/c2$a;Le/a/q2/a;)V

    return-object v2

    .line 84
    :pswitch_11
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 85
    new-instance v2, Le/a/a/m/f3/i;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 86
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v10

    .line 88
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/m/b2$a;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 90
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 91
    invoke-direct/range {v7 .. v12}, Le/a/a/m/f3/i;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/k/h;Le/a/a/m/b2$a;Le/a/q2/a;)V

    return-object v2

    .line 92
    :pswitch_12
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 93
    new-instance v2, Le/a/a/m/k3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 94
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/l1$a;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v11

    .line 96
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 98
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v13

    .line 100
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 101
    invoke-direct/range {v7 .. v13}, Le/a/a/m/k3/a;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/l1$a;Le/a/d/f;Le/a/q2/a;Le/a/r2/f;)V

    return-object v2

    .line 102
    :pswitch_13
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 103
    new-instance v2, Le/a/a/m/c3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 104
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/e1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->a()Le/a/l/t2/a;

    move-result-object v11

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->c1()Le/a/s2/h/e;

    move-result-object v12

    .line 106
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 107
    invoke-direct/range {v7 .. v12}, Le/a/a/m/c3/a;-><init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/a/m/e1$a;Le/a/l/t2/a;Le/a/s2/h/e;)V

    return-object v2

    .line 108
    :pswitch_14
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 109
    new-instance v2, Le/a/a/m/j3/c;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 110
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 112
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/m/e2$a;

    invoke-virtual {v1}, Le/a/a/b/l;->l()Le/a/l/t2/e;

    move-result-object v12

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Y2()Le/a/q5/i;

    move-result-object v13

    .line 114
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 115
    invoke-direct/range {v7 .. v13}, Le/a/a/m/j3/c;-><init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/p5/c0;Le/a/a/m/e2$a;Le/a/l/t2/e;Le/a/q5/i;)V

    return-object v2

    .line 116
    :pswitch_15
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 117
    new-instance v2, Le/a/a/m/h3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 118
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/k1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->c()Le/a/l/t2/b;

    move-result-object v11

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->w2()Le/a/x/w;

    move-result-object v12

    .line 120
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 121
    invoke-direct/range {v7 .. v12}, Le/a/a/m/h3/a;-><init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/a/m/k1$a;Le/a/l/t2/b;Le/a/x/w;)V

    return-object v2

    .line 122
    :pswitch_16
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 123
    new-instance v2, Le/a/a/m/j3/b;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 124
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/t1$a;

    invoke-virtual {v1}, Le/a/a/b/l;->f()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

    move-result-object v11

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 126
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 127
    invoke-direct/range {v7 .. v12}, Le/a/a/m/j3/b;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/t1$a;Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;Le/a/q2/a;)V

    return-object v2

    .line 128
    :pswitch_17
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 129
    new-instance v2, Le/a/a/m/g3/h;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/m/g2$a;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 130
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v11

    .line 132
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v12

    .line 134
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 135
    invoke-direct/range {v7 .. v12}, Le/a/a/m/g3/h;-><init>(Le/a/a/m/j2;Le/a/a/m/g2$a;Le/a/p5/c0;Le/a/z4/d;Le/a/p5/c;)V

    return-object v2

    .line 136
    :pswitch_18
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 137
    new-instance v2, Le/a/a/m/g3/a;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/i1$a;

    iget-object v5, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v5

    .line 138
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v1}, Le/a/a/b/l;->b()Le/a/d0/s0;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/g3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/i1$a;Le/a/q2/a;Le/a/d0/s0;)V

    return-object v2

    .line 140
    :pswitch_19
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 141
    new-instance v2, Le/a/a/m/f3/b;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/h1$a;

    iget-object v5, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v5

    .line 142
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 144
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/f3/b;-><init>(Le/a/a/m/j2;Le/a/a/m/h1$a;Le/a/o/c;Le/a/q2/a;)V

    return-object v2

    .line 146
    :pswitch_1a
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 147
    new-instance v2, Le/a/a/m/f3/d;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/m/m1$a;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v10

    .line 148
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v11

    .line 150
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v12

    .line 152
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v13

    .line 154
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v14

    .line 156
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 157
    invoke-direct/range {v7 .. v14}, Le/a/a/m/f3/d;-><init>(Le/a/a/m/j2;Le/a/a/m/m1$a;Le/a/f/b;Le/a/h5/m;Le/a/p5/g;Le/a/p5/c0;Le/a/q2/a;)V

    return-object v2

    .line 158
    :pswitch_1b
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 159
    new-instance v2, Le/a/a/m/r2;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/y1$a;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v1

    .line 160
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/r2;-><init>(Le/a/a/m/j2;Le/a/a/m/y1$a;Le/a/a/k/a/i1;)V

    return-object v2

    .line 162
    :pswitch_1c
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 163
    new-instance v2, Le/a/a/m/k2;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v1, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/m/v1;

    invoke-direct {v2, v3, v1}, Le/a/a/m/k2;-><init>(Le/a/a/m/j2;Le/a/a/m/v1;)V

    return-object v2

    .line 164
    :pswitch_1d
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 165
    new-instance v2, Le/a/a/m/p;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/m/n1$a;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 166
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v11

    .line 168
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v12

    .line 170
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v13

    .line 172
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 173
    invoke-direct/range {v7 .. v13}, Le/a/a/m/p;-><init>(Le/a/a/m/j2;Le/a/a/m/n1$a;Le/a/p5/c0;Le/a/a/e/m;Ls1/w/f;Ls1/w/f;)V

    return-object v2

    .line 174
    :pswitch_1e
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 175
    new-instance v2, Le/a/a/m/n;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/m/n1$a;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 176
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v11

    .line 178
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v12

    .line 180
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v13

    .line 182
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 183
    invoke-direct/range {v7 .. v13}, Le/a/a/m/n;-><init>(Le/a/a/m/j2;Le/a/a/m/n1$a;Le/a/p5/c0;Le/a/a/e/m;Ls1/w/f;Ls1/w/f;)V

    return-object v2

    .line 184
    :pswitch_1f
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 185
    new-instance v2, Le/a/i/d/z;

    iget-object v1, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/z;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 186
    :pswitch_20
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 187
    new-instance v2, Le/a/i/d/a0;

    iget-object v1, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/a0;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 188
    :pswitch_21
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 189
    new-instance v2, Le/a/i/d/w;

    iget-object v1, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/w;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 190
    :pswitch_22
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 191
    new-instance v2, Le/a/i/d/t;

    iget-object v1, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/t;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 192
    :pswitch_23
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 193
    new-instance v2, Le/a/i/d/y;

    iget-object v1, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/y;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 194
    :pswitch_24
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 195
    new-instance v9, Le/a/i/d/v;

    iget-object v2, v1, Le/a/a/b/l;->F:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/i/d/k;

    .line 196
    new-instance v4, Le/a/i/d/u;

    iget-object v2, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/f0/c;

    invoke-direct {v4, v2}, Le/a/i/d/u;-><init>(Le/a/i/f0/c;)V

    .line 197
    iget-object v2, v1, Le/a/a/b/l;->H:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/i/d/h;

    iget-object v2, v1, Le/a/a/b/l;->J:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/i/d/j;

    iget-object v2, v1, Le/a/a/b/l;->L:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/i/d/m;

    iget-object v1, v1, Le/a/a/b/l;->N:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/i/d/l;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/i/d/v;-><init>(Le/a/i/d/k;Le/a/i/d/u;Le/a/i/d/h;Le/a/i/d/j;Le/a/i/d/m;Le/a/i/d/l;)V

    return-object v9

    .line 198
    :pswitch_25
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 199
    new-instance v2, Le/a/a/v;

    iget-object v3, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v3}, Le/a/c/p/a;->n2(Le/a/a/b/o;)Le/a/p5/h0;

    move-result-object v3

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->m6()Le/a/l4/c;

    move-result-object v4

    .line 200
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v1

    .line 202
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    invoke-direct {v2, v3, v4, v1}, Le/a/a/v;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    return-object v2

    .line 204
    :pswitch_26
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 205
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    .line 206
    invoke-interface {v1}, Le/a/j2;->s2()Le/a/a/g/g0;

    move-result-object v1

    .line 207
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 208
    :pswitch_27
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 209
    new-instance v2, Le/a/a/b/b;

    move-object v7, v2

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/b/i;

    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/b/n;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object v10, v3

    .line 210
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v1}, Le/a/a/b/l;->d()Le/a/a/i1/c;

    move-result-object v11

    iget-object v3, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v3}, Le/a/c/p/a;->n2(Le/a/a/b/o;)Le/a/p5/h0;

    move-result-object v12

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W5()Le/a/f4/g/j;

    move-result-object v3

    move-object v13, v3

    .line 212
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    iget-object v3, v1, Le/a/a/b/l;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Le/a/a/b/h;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object v15, v3

    .line 214
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v3

    move-object/from16 v16, v3

    .line 216
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v3

    move-object/from16 v17, v3

    .line 218
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f3()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    move-result-object v3

    move-object/from16 v18, v3

    .line 220
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v3

    move-object/from16 v19, v3

    .line 222
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v3

    move-object/from16 v20, v3

    .line 224
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    iget-object v3, v1, Le/a/a/b/l;->z:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v21

    .line 226
    new-instance v3, Le/a/x2/b;

    move-object/from16 v22, v3

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v4

    .line 227
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    invoke-direct {v3, v4}, Le/a/x2/b;-><init>(Le/a/o5/f0;)V

    .line 229
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object/from16 v23, v3

    .line 230
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    iget-object v3, v1, Le/a/a/b/l;->B:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Le/a/a/u;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->o5()Z

    move-result v25

    invoke-direct/range {v7 .. v25}, Le/a/a/b/b;-><init>(Le/a/a/b/i;Le/a/a/b/n;Le/a/o5/f0;Le/a/a/i1/b;Le/a/p5/h0;Le/a/f4/g/j;Le/a/a/b/h;Le/a/u3/g;Le/a/w4/d;Le/a/d/c0/s1;Lcom/truecaller/calling/initiate_call/InitiateCallHelper;Le/a/p5/c;Le/a/z2/a;Lo3/a;Le/a/x2/b;Le/a/a/k/t;Le/a/a/u;Z)V

    return-object v2

    .line 232
    :pswitch_28
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 233
    iget-object v2, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 234
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v1

    .line 236
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "context"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cpuContext"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v2, Le/a/b0/a/a0/a;

    .line 239
    sget v4, Lcom/truecaller/common/ui/R$dimen;->notification_tcx_call_avatar_size:I

    invoke-direct {v2, v3, v1, v4}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;I)V

    return-object v2

    .line 240
    :pswitch_29
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 241
    new-instance v2, Le/a/a/k/a/v0;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v8

    .line 242
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    iget-object v3, v1, Le/a/a/b/l;->d:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v10

    .line 244
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->E()Le/a/b0/q/l0;

    move-result-object v11

    .line 246
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v12

    .line 248
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v13

    .line 250
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->P2()Le/a/i4/q;

    move-result-object v14

    .line 252
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v15

    .line 254
    invoke-static {v15, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    .line 256
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 258
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    iget-object v1, v1, Le/a/a/b/l;->u:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    move-object v7, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v7 .. v18}, Le/a/a/k/a/v0;-><init>(Le/a/u3/g;Lo3/a;Le/a/o5/b0;Le/a/b0/q/l0;Landroid/content/Context;Le/a/i4/e;Le/a/i4/q;Le/a/o5/f0;Le/a/a/i0;Le/a/q2/a;Lo3/a;)V

    return-object v2

    .line 260
    :pswitch_2a
    new-instance v1, Le/a/a/b/a0;

    invoke-direct {v1}, Le/a/a/b/a0;-><init>()V

    return-object v1

    .line 261
    :pswitch_2b
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 262
    new-instance v2, Le/a/a/b/g0;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    .line 263
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v4

    .line 265
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v1

    .line 267
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    invoke-direct {v2, v3, v4, v1}, Le/a/a/b/g0;-><init>(Le/a/o5/f0;Le/a/a/e/m;Ls1/w/f;)V

    return-object v2

    .line 269
    :pswitch_2c
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 270
    new-instance v2, Le/a/a/b/r0;

    iget-object v3, v1, Le/a/a/b/l;->k:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/b/d;

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v4

    .line 271
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v5, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v5

    .line 273
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v1

    .line 275
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/b/r0;-><init>(Le/a/a/b/d;Le/a/o5/f0;Le/a/a/e/m;Ls1/w/f;)V

    return-object v2

    .line 277
    :pswitch_2d
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 278
    new-instance v2, Le/a/a/m/e3/b;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v3

    .line 279
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v4

    .line 281
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k3()Le/a/c0/h;

    move-result-object v1

    .line 283
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/e3/b;-><init>(Le/a/p5/g;Le/a/u3/g;Le/a/c0/h;)V

    return-object v2

    .line 285
    :pswitch_2e
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 286
    new-instance v2, Le/a/a/b/e;

    move-object v7, v2

    invoke-virtual {v1}, Le/a/a/b/l;->h()Le/a/n2/b/a;

    move-result-object v8

    invoke-virtual {v1}, Le/a/a/b/l;->a()Le/a/l/t2/a;

    move-result-object v9

    invoke-virtual {v1}, Le/a/a/b/l;->c()Le/a/l/t2/b;

    move-result-object v10

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object v11, v3

    .line 287
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    invoke-virtual {v1}, Le/a/a/b/l;->f()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

    move-result-object v12

    invoke-virtual {v1}, Le/a/a/b/l;->b()Le/a/d0/s0;

    move-result-object v13

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v3

    move-object v14, v3

    .line 289
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v3

    move-object v15, v3

    .line 291
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v3

    move-object/from16 v16, v3

    .line 293
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v3

    move-object/from16 v17, v3

    .line 295
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l6()Le/a/z/f;

    move-result-object v3

    move-object/from16 v18, v3

    .line 297
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v3

    move-object/from16 v19, v3

    .line 299
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v3

    move-object/from16 v20, v3

    .line 301
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v3

    move-object/from16 v21, v3

    .line 303
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    new-instance v3, Le/a/a/m/g3/d;

    move-object/from16 v22, v3

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v4

    .line 305
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    invoke-virtual {v1}, Le/a/a/b/l;->i()Le/a/a/m/o2;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/a/m/g3/d;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 307
    invoke-virtual {v1}, Le/a/a/b/l;->e()Le/a/a/m/f3/e;

    move-result-object v23

    .line 308
    new-instance v3, Le/a/a/m/g3/b;

    move-object/from16 v24, v3

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v4

    .line 309
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v1}, Le/a/a/b/l;->i()Le/a/a/m/o2;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/a/m/g3/b;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 311
    invoke-virtual {v1}, Le/a/a/b/l;->g()Le/a/a/m/f3/g;

    move-result-object v25

    invoke-virtual {v1}, Le/a/a/b/l;->j()Le/a/a/m/g3/f;

    move-result-object v26

    invoke-virtual {v1}, Le/a/a/b/l;->m()Le/a/a/m/f3/m;

    move-result-object v27

    invoke-virtual {v1}, Le/a/a/b/l;->k()Le/a/a/m/f3/k;

    move-result-object v28

    invoke-virtual {v1}, Le/a/a/b/l;->l()Le/a/l/t2/e;

    move-result-object v29

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v3

    move-object/from16 v30, v3

    .line 312
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o5()Z

    move-result v31

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    move-object/from16 v32, v3

    .line 314
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iget-object v1, v1, Le/a/a/b/l;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Le/a/a/m/e3/a;

    invoke-direct/range {v7 .. v33}, Le/a/a/b/e;-><init>(Le/a/n2/b/a;Le/a/l/t2/a;Le/a/l/t2/b;Le/a/u3/g;Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;Le/a/d0/s0;Le/a/o/c;Le/a/f/b;Le/a/r5/i0;Le/a/b/c;Le/a/z/f;Le/a/l/p2/v0;Le/a/d/f;Le/a/k/h;Le/a/a/m/g3/d;Le/a/a/m/f3/e;Le/a/a/m/g3/b;Le/a/a/m/f3/g;Le/a/a/m/g3/f;Le/a/a/m/f3/m;Le/a/a/m/f3/k;Le/a/l/t2/e;Le/a/l/c2;ZLe/a/a/i0;Le/a/a/m/e3/a;)V

    return-object v2

    .line 316
    :pswitch_2f
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 317
    new-instance v2, Le/a/a/b/c0;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v8

    .line 318
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v9

    .line 320
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v10

    .line 322
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v11

    .line 324
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v12

    .line 326
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v13

    .line 328
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v14

    .line 330
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    new-instance v15, Le/a/e/a/s3;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v3

    .line 332
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    invoke-direct {v15, v3}, Le/a/e/a/s3;-><init>(Le/a/p4/b;)V

    .line 334
    iget-object v3, v1, Le/a/a/b/l;->k:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/a/b/d;

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->o5()Z

    move-result v17

    move-object v7, v2

    invoke-direct/range {v7 .. v17}, Le/a/a/b/c0;-><init>(Ls1/w/f;Le/a/o5/f0;Le/a/a/i0;Le/a/p5/a0;Le/a/p5/c;Le/a/u3/g;Le/a/a/k/a/i1;Le/a/e/a/r3;Le/a/a/b/d;Z)V

    return-object v2

    .line 335
    :pswitch_30
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 336
    iget-object v6, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v6}, Le/a/c/p/a;->f2(Le/a/a/b/o;)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v7

    iget-object v8, v1, Le/a/a/b/l;->m:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/b/b0;

    iget-object v9, v1, Le/a/a/b/l;->o:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/b/q0;

    iget-object v10, v1, Le/a/a/b/l;->q:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/a/b/f0;

    iget-object v1, v1, Le/a/a/b/l;->s:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/b/z;

    .line 337
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "personalTabPromoStateManager"

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "spamTabPromoStateManager"

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "promotionalTabPromoStateManager"

    invoke-static {v10, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "noPromoStateManager"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v2, :cond_2

    const/4 v2, 0x2

    if-eq v5, v2, :cond_2

    if-eq v5, v4, :cond_1

    if-ne v5, v3, :cond_0

    move-object v8, v10

    goto :goto_0

    .line 339
    :cond_0
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_1
    move-object v8, v9

    goto :goto_0

    :cond_2
    move-object v8, v1

    :cond_3
    :goto_0
    return-object v8

    .line 340
    :pswitch_31
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 341
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    .line 342
    invoke-interface {v1}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v1

    .line 343
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 344
    :pswitch_32
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 345
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    .line 346
    invoke-interface {v1}, Le/a/j2;->B0()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    .line 347
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 348
    :pswitch_33
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 349
    iget-object v2, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    iget-object v7, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v7

    .line 350
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    iget-object v8, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v8}, Le/a/c/p/a;->f2(Le/a/a/b/o;)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v8

    iget-object v9, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v10

    .line 352
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    iget-object v9, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v9

    .line 354
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    iget-object v11, v1, Le/a/a/b/l;->e:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 356
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 357
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "provider"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adUnitIdManager"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "corutineContext"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adaptiveBannerSize"

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "featuresRegistry"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "inboxFallbackAdUnitId"

    .line 358
    invoke-interface {v10, v5}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-string v8, "CampaignConfig.Builder(campaign).build()"

    const-string v14, "campaign"

    const/4 v13, 0x0

    const-string v12, "placement"

    const-string v16, "adUnitId"

    if-eq v6, v4, :cond_7

    if-eq v6, v3, :cond_5

    const-string v11, "inboxAdUnitId"

    const-string v3, "INBOX"

    move-object v4, v12

    move-object/from16 v12, v16

    move-object v6, v13

    move-object v13, v3

    move-object/from16 v34, v14

    move-object v14, v4

    move-object/from16 v17, v15

    move-object v15, v1

    move-object/from16 v16, v2

    .line 360
    invoke-static/range {v10 .. v16}, Le/d/c/a/a;->Y1(Le/a/i/f0/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    .line 361
    invoke-static {v6, v10, v2, v5}, Le/d/c/a/a;->l1(Le/a/i/s;ILjava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    move-result-object v2

    .line 362
    invoke-virtual {v1}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 363
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget-object v4, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 365
    new-instance v4, Le/a/i/b0/d/a$a;

    invoke-direct {v4}, Le/a/i/b0/d/a$a;-><init>()V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {v4, v3}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {v4}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v3

    iput-object v3, v2, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v15, v34

    .line 367
    invoke-static {v3, v15, v3, v8}, Le/d/c/a/a;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/i/o;

    move-result-object v3

    .line 368
    iput-object v3, v2, Le/a/i/s$a;->b:Le/a/i/o;

    goto/16 :goto_1

    :cond_5
    move-object v4, v12

    move-object v6, v13

    move-object/from16 v17, v15

    move-object v15, v14

    const-string v11, "promotionMsgAdUnitId"

    const-string v3, "PROMOTION_INBOX"

    move-object/from16 v12, v16

    move-object v13, v3

    move-object v14, v4

    move-object/from16 v35, v15

    move-object v15, v1

    move-object/from16 v16, v2

    .line 369
    invoke-static/range {v10 .. v16}, Le/d/c/a/a;->Y1(Le/a/i/f0/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    .line 370
    invoke-static {v6, v10, v2, v5}, Le/d/c/a/a;->l1(Le/a/i/s;ILjava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    move-result-object v2

    .line 371
    invoke-virtual {v1}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 372
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    sget-object v4, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 374
    new-instance v4, Le/a/i/b0/d/a$a;

    invoke-direct {v4}, Le/a/i/b0/d/a$a;-><init>()V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v4, v3}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {v4}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v3

    iput-object v3, v2, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    goto :goto_1

    :cond_6
    move-object/from16 v15, v35

    .line 376
    invoke-static {v3, v15, v3, v8}, Le/d/c/a/a;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/i/o;

    move-result-object v3

    .line 377
    iput-object v3, v2, Le/a/i/s$a;->b:Le/a/i/o;

    goto :goto_1

    :cond_7
    move-object v4, v12

    move-object v6, v13

    move-object/from16 v17, v15

    move-object v15, v14

    const-string v11, "spamMsgAdUnitId"

    const-string v3, "SPAM_INBOX"

    move-object/from16 v12, v16

    move-object v13, v3

    move-object v14, v4

    move-object/from16 v36, v15

    move-object v15, v1

    move-object/from16 v16, v2

    .line 378
    invoke-static/range {v10 .. v16}, Le/d/c/a/a;->Y1(Le/a/i/f0/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    .line 379
    invoke-static {v6, v10, v2, v5}, Le/d/c/a/a;->l1(Le/a/i/s;ILjava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    move-result-object v2

    .line 380
    invoke-virtual {v1}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 381
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget-object v4, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 383
    new-instance v4, Le/a/i/b0/d/a$a;

    invoke-direct {v4}, Le/a/i/b0/d/a$a;-><init>()V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v4, v3}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {v4}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v3

    iput-object v3, v2, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    goto :goto_1

    :cond_8
    move-object/from16 v4, v36

    .line 385
    invoke-static {v3, v4, v3, v8}, Le/d/c/a/a;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/i/o;

    move-result-object v3

    .line 386
    iput-object v3, v2, Le/a/i/s$a;->b:Le/a/i/o;

    :goto_1
    const-string v3, "inbox"

    .line 387
    iput-object v3, v2, Le/a/i/s$a;->i:Ljava/lang/String;

    const/4 v3, 0x1

    .line 388
    iput-boolean v3, v2, Le/a/i/s$a;->k:Z

    .line 389
    iput-boolean v3, v2, Le/a/i/s$a;->l:Z

    new-array v4, v3, [Lcom/truecaller/ads/CustomTemplate;

    .line 390
    sget-object v5, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 391
    invoke-virtual {v1}, Le/a/u3/g;->A()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [Lcom/google/android/gms/ads/AdSize;

    invoke-interface/range {v17 .. v17}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "adaptiveBannerSize.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/gms/ads/AdSize;

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    .line 392
    :cond_9
    new-instance v1, Le/a/i/f0/g;

    .line 393
    new-instance v3, Le/a/i/s;

    invoke-direct {v3, v2}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 394
    invoke-direct {v1, v7, v3, v9}, Le/a/i/f0/g;-><init>(Le/a/i/f0/d;Le/a/i/s;Ls1/w/f;)V

    return-object v1

    .line 395
    :pswitch_34
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 396
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    .line 397
    invoke-interface {v1}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v1

    .line 398
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 399
    :pswitch_35
    iget-object v1, v0, Le/a/a/b/l$b;->a:Le/a/a/b/l;

    .line 400
    new-instance v2, Le/a/a/b/s;

    move-object v7, v2

    iget-object v3, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v3}, Le/a/c/p/a;->f2(Le/a/a/b/o;)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v8

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object v9, v3

    .line 401
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object v10, v3

    .line 403
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    move-object v11, v3

    .line 405
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W5()Le/a/f4/g/j;

    move-result-object v3

    move-object v12, v3

    .line 407
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    iget-object v3, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    iget-object v4, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v4

    .line 409
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "actorsThreads"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-interface {v4}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v3

    move-object v13, v3

    const-string v4, "actorsThreads.ui()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v3, v1, Le/a/a/b/l;->d:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    iget-object v3, v1, Le/a/a/b/l;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/i/f0/c;

    iget-object v3, v1, Le/a/a/b/l;->g:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    iget-object v3, v1, Le/a/a/b/l;->a:Le/a/a/b/o;

    invoke-static {v3}, Le/a/c/p/a;->n2(Le/a/a/b/o;)Le/a/p5/h0;

    move-result-object v17

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->I5()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v18, v3

    .line 413
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    move-object/from16 v19, v3

    .line 415
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->t1()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v20, v3

    .line 417
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 418
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->X0()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v21, v3

    .line 419
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v3

    move-object/from16 v22, v3

    .line 421
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->w5()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v23, v3

    .line 423
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v3

    move-object/from16 v24, v3

    .line 425
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u5()Le/a/z4/a;

    move-result-object v3

    move-object/from16 v25, v3

    .line 427
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    iget-object v3, v1, Le/a/a/b/l;->t:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Le/a/a/b/d0;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v27, v3

    .line 429
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    invoke-virtual {v1}, Le/a/a/b/l;->d()Le/a/a/i1/c;

    move-result-object v28

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v3

    move-object/from16 v29, v3

    .line 431
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v30, v3

    .line 433
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->s2()Le/a/a/g/g0;

    move-result-object v3

    move-object/from16 v31, v3

    .line 435
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->t5()Le/a/a/k/a/p0;

    move-result-object v3

    move-object/from16 v32, v3

    .line 437
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 438
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q5()Le/a/l/t2/d;

    move-result-object v3

    move-object/from16 v33, v3

    .line 439
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object v3

    move-object/from16 v34, v3

    .line 441
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->h2()Le/a/a/o0/a;

    move-result-object v3

    move-object/from16 v35, v3

    .line 443
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    iget-object v3, v1, Le/a/a/b/l;->w:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Le/a/a/k/a/r0;

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v3

    move-object/from16 v37, v3

    .line 445
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v1}, Le/a/a/b/l;->j()Le/a/a/m/g3/f;

    move-result-object v38

    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->h1()Le/a/a/i1/d;

    move-result-object v3

    move-object/from16 v39, v3

    .line 447
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k5()Le/a/a/w;

    move-result-object v3

    move-object/from16 v40, v3

    .line 449
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A0()Le/a/c/a/c/f/d;

    move-result-object v3

    move-object/from16 v41, v3

    .line 451
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u()Le/a/b0/m/c/a;

    move-result-object v3

    move-object/from16 v42, v3

    .line 453
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    iget-object v3, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v3

    move-object/from16 v43, v3

    .line 455
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    iget-object v1, v1, Le/a/a/b/l;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->o5()Z

    move-result v44

    invoke-direct/range {v7 .. v44}, Le/a/a/b/s;-><init>(Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/f;Le/a/o5/f0;Le/a/a/i0;Le/a/f4/g/j;Le/a/r2/j;Lo3/a;Le/a/i/f0/c;Lo3/a;Le/a/p5/h0;Le/a/r2/f;Le/a/q2/a;Le/a/r2/f;Le/a/r2/f;Le/a/p5/a0;Le/a/r2/f;Le/a/b0/e/l;Le/a/z4/a;Le/a/a/b/d0;Le/a/r2/f;Le/a/a/i1/b;Le/a/q2/i0;Le/a/u3/g;Le/a/a/g/g0;Le/a/a/k/a/p0;Le/a/l/t2/d;Le/a/d4/a;Le/a/a/o0/a;Le/a/a/k/a/r0;Le/a/p5/g;Le/a/a/m/g3/f;Le/a/a/i1/d;Le/a/a/w;Le/a/c/a/c/f/d;Le/a/b0/m/c/a;Le/a/c/e/c;Z)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
