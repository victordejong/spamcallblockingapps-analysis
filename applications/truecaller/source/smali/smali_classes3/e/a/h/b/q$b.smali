.class public final Le/a/h/b/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/b/q;
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
.field public final a:Le/a/h/b/q;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/h/b/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 3
    iput p2, p0, Le/a/h/b/q$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/h/b/q$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "callHistory"

    const-string v6, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/h/b/q$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    invoke-static {v1}, Le/a/h/b/q;->e(Le/a/h/b/q;)Le/a/h/b/n;

    move-result-object v1

    return-object v1

    .line 4
    :pswitch_1
    new-instance v1, Le/a/a/m/u;

    invoke-direct {v1}, Le/a/a/m/u;-><init>()V

    return-object v1

    .line 5
    :pswitch_2
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    invoke-static {v1}, Le/a/h/b/q;->d(Le/a/h/b/q;)Le/a/a/m/f3/a;

    move-result-object v1

    return-object v1

    .line 6
    :pswitch_3
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    invoke-static {v1}, Le/a/h/b/q;->c(Le/a/h/b/q;)Le/a/a/m/f3/j;

    move-result-object v1

    return-object v1

    .line 7
    :pswitch_4
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    invoke-static {v1}, Le/a/h/b/q;->b(Le/a/h/b/q;)Le/a/a/m/f3/i;

    move-result-object v1

    return-object v1

    .line 8
    :pswitch_5
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    invoke-static {v1}, Le/a/h/b/q;->a(Le/a/h/b/q;)Le/a/a/m/g3/a;

    move-result-object v1

    return-object v1

    .line 9
    :pswitch_6
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 10
    new-instance v2, Le/a/a/m/b3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/x1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->l()Le/a/n2/b/a;

    move-result-object v5

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 11
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/b3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/x1$a;Le/a/n2/b/a;Le/a/q2/a;)V

    return-object v2

    .line 13
    :pswitch_7
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 14
    new-instance v2, Le/a/a/m/j3/b;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 15
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/t1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->j()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

    move-result-object v11

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 17
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 18
    invoke-direct/range {v7 .. v12}, Le/a/a/m/j3/b;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/t1$a;Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;Le/a/q2/a;)V

    return-object v2

    .line 19
    :pswitch_8
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 20
    new-instance v2, Le/a/a/m/d3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v4

    .line 21
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v5, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v5

    .line 23
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v1, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/m/u1$a;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/d3/a;-><init>(Le/a/a/m/j2;Le/a/b/c;Le/a/q2/a;Le/a/a/m/u1$a;)V

    return-object v2

    .line 25
    :pswitch_9
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 26
    new-instance v2, Le/a/a/m/i3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/r1$a;

    iget-object v5, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->l6()Le/a/z/f;

    move-result-object v5

    .line 27
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 29
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/i3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/r1$a;Le/a/z/f;Le/a/q2/a;)V

    return-object v2

    .line 31
    :pswitch_a
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 32
    new-instance v2, Le/a/a/m/d3/b;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 33
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v5, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v5

    .line 35
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v1, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/m/a2$a;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/d3/b;-><init>(Le/a/a/m/j2;Le/a/q2/a;Le/a/b/c;Le/a/a/m/a2$a;)V

    return-object v2

    .line 37
    :pswitch_b
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 38
    new-instance v2, Le/a/a/m/g3/h;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/m/g2$a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 39
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v11

    .line 41
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v12

    .line 43
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 44
    invoke-direct/range {v7 .. v12}, Le/a/a/m/g3/h;-><init>(Le/a/a/m/j2;Le/a/a/m/g2$a;Le/a/p5/c0;Le/a/z4/d;Le/a/p5/c;)V

    return-object v2

    .line 45
    :pswitch_c
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 46
    new-instance v2, Le/a/a/m/f3/l;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/d2$a;

    invoke-virtual {v1}, Le/a/h/b/q;->o()Le/a/a/m/f3/k;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/l;-><init>(Le/a/a/m/j2;Le/a/a/m/d2$a;Le/a/a/m/f3/k;)V

    return-object v2

    .line 47
    :pswitch_d
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 48
    new-instance v2, Le/a/a/m/f3/n;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/f2$a;

    invoke-virtual {v1}, Le/a/h/b/q;->q()Le/a/a/m/f3/m;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/n;-><init>(Le/a/a/m/j2;Le/a/a/m/f2$a;Le/a/a/m/f3/m;)V

    return-object v2

    .line 49
    :pswitch_e
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 50
    new-instance v2, Le/a/a/m/g3/g;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 51
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v5, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/m/z1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->n()Le/a/a/m/g3/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/g3/g;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/z1$a;Le/a/a/m/g3/f;)V

    return-object v2

    .line 53
    :pswitch_f
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 54
    new-instance v2, Le/a/a/m/f3/h;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/w1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->k()Le/a/a/m/f3/g;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/h;-><init>(Le/a/a/m/j2;Le/a/a/m/w1$a;Le/a/a/m/f3/g;)V

    return-object v2

    .line 55
    :pswitch_10
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 56
    new-instance v2, Le/a/a/m/g3/c;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/j1$a;

    .line 57
    new-instance v5, Le/a/a/m/g3/b;

    iget-object v7, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v7

    .line 58
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Le/a/h/b/q;->m()Le/a/a/m/o2;

    move-result-object v1

    invoke-direct {v5, v7, v1}, Le/a/a/m/g3/b;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 60
    invoke-direct {v2, v3, v4, v5}, Le/a/a/m/g3/c;-><init>(Le/a/a/m/j2;Le/a/a/m/j1$a;Le/a/a/m/g3/b;)V

    return-object v2

    .line 61
    :pswitch_11
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 62
    new-instance v2, Le/a/a/m/f3/f;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/p1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->i()Le/a/a/m/f3/e;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/f3/f;-><init>(Le/a/a/m/j2;Le/a/a/m/p1$a;Le/a/a/m/f3/e;)V

    return-object v2

    .line 63
    :pswitch_12
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 64
    new-instance v2, Le/a/a/m/g3/e;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/o1$a;

    .line 65
    new-instance v5, Le/a/a/m/g3/d;

    iget-object v7, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v7

    .line 66
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v1}, Le/a/h/b/q;->m()Le/a/a/m/o2;

    move-result-object v1

    invoke-direct {v5, v7, v1}, Le/a/a/m/g3/d;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 68
    invoke-direct {v2, v3, v4, v5}, Le/a/a/m/g3/e;-><init>(Le/a/a/m/j2;Le/a/a/m/o1$a;Le/a/a/m/g3/d;)V

    return-object v2

    .line 69
    :pswitch_13
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 70
    new-instance v2, Le/a/a/m/c3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 71
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/e1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->f()Le/a/l/t2/a;

    move-result-object v11

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->c1()Le/a/s2/h/e;

    move-result-object v12

    .line 73
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 74
    invoke-direct/range {v7 .. v12}, Le/a/a/m/c3/a;-><init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/a/m/e1$a;Le/a/l/t2/a;Le/a/s2/h/e;)V

    return-object v2

    .line 75
    :pswitch_14
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 76
    new-instance v2, Le/a/a/m/j3/c;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 77
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 79
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/m/e2$a;

    invoke-virtual {v1}, Le/a/h/b/q;->p()Le/a/l/t2/e;

    move-result-object v12

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Y2()Le/a/q5/i;

    move-result-object v13

    .line 81
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 82
    invoke-direct/range {v7 .. v13}, Le/a/a/m/j3/c;-><init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/p5/c0;Le/a/a/m/e2$a;Le/a/l/t2/e;Le/a/q5/i;)V

    return-object v2

    .line 83
    :pswitch_15
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 84
    new-instance v2, Le/a/a/m/h3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 85
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/k1$a;

    invoke-virtual {v1}, Le/a/h/b/q;->h()Le/a/l/t2/b;

    move-result-object v11

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->w2()Le/a/x/w;

    move-result-object v12

    .line 87
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 88
    invoke-direct/range {v7 .. v12}, Le/a/a/m/h3/a;-><init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/a/m/k1$a;Le/a/l/t2/b;Le/a/x/w;)V

    return-object v2

    .line 89
    :pswitch_16
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 90
    new-instance v2, Le/a/a/m/k3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 91
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/m/l1$a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v11

    .line 93
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v12

    .line 95
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v13

    .line 97
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 98
    invoke-direct/range {v7 .. v13}, Le/a/a/m/k3/a;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/l1$a;Le/a/d/f;Le/a/q2/a;Le/a/r2/f;)V

    return-object v2

    .line 99
    :pswitch_17
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 100
    new-instance v2, Le/a/a/m/f3/b;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/h1$a;

    iget-object v5, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v5

    .line 101
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 103
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/m/f3/b;-><init>(Le/a/a/m/j2;Le/a/a/m/h1$a;Le/a/o/c;Le/a/q2/a;)V

    return-object v2

    .line 105
    :pswitch_18
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 106
    new-instance v2, Le/a/a/m/e3/e;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/f1$a;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v1

    .line 107
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/e3/e;-><init>(Le/a/a/m/j2;Le/a/a/m/f1$a;Le/a/h5/m;)V

    return-object v2

    .line 109
    :pswitch_19
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 110
    new-instance v2, Le/a/a/m/e3/d;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/f1$a;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v1

    .line 111
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/e3/d;-><init>(Le/a/a/m/j2;Le/a/a/m/f1$a;Le/a/h5/m;)V

    return-object v2

    .line 113
    :pswitch_1a
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 114
    new-instance v2, Le/a/a/m/j3/a;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/m/j2;

    iget-object v4, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/m/s1;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v1

    .line 115
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/j3/a;-><init>(Le/a/a/m/j2;Le/a/a/m/s1;Le/a/l/c2;)V

    return-object v2

    .line 117
    :pswitch_1b
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 118
    new-instance v2, Le/a/a/m/f3/d;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/m/j2;

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/m/m1$a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v10

    .line 119
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v11

    .line 121
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v12

    .line 123
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v13

    .line 125
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v14

    .line 127
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 128
    invoke-direct/range {v7 .. v14}, Le/a/a/m/f3/d;-><init>(Le/a/a/m/j2;Le/a/a/m/m1$a;Le/a/f/b;Le/a/h5/m;Le/a/p5/g;Le/a/p5/c0;Le/a/q2/a;)V

    return-object v2

    .line 129
    :pswitch_1c
    new-instance v1, Le/a/w4/t/a/e;

    invoke-direct {v1}, Le/a/w4/t/a/e;-><init>()V

    return-object v1

    .line 130
    :pswitch_1d
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 131
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Le/a/h/b/y0/b/i;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/h/b/y0/b/a;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/h/b/p0;

    iget-object v3, v1, Le/a/h/b/q;->D0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/w4/t/a/e;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v11

    .line 133
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v12

    .line 135
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v13

    .line 137
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 138
    invoke-direct/range {v7 .. v13}, Le/a/h/b/y0/b/i;-><init>(Le/a/h/b/y0/b/a;Le/a/h/b/p0;Le/a/w4/t/a/e;Le/a/k3/l/f;Le/a/p5/c0;Le/a/z2/a;)V

    return-object v2

    .line 139
    :pswitch_1e
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 140
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v2, Le/a/h/b/y0/b/d;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/y0/b/a;

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v4

    .line 142
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v5, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v5

    .line 144
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iget-object v1, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/p0;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/h/b/y0/b/d;-><init>(Le/a/h/b/y0/b/a;Le/a/o5/f0;Le/a/p5/c0;Le/a/h/b/p0;)V

    return-object v2

    .line 146
    :pswitch_1f
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 147
    new-instance v2, Le/a/i/d/z;

    iget-object v1, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/z;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 148
    :pswitch_20
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 149
    new-instance v2, Le/a/i/d/a0;

    iget-object v1, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/a0;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 150
    :pswitch_21
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 151
    new-instance v2, Le/a/i/d/w;

    iget-object v1, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/w;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 152
    :pswitch_22
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 153
    new-instance v2, Le/a/i/d/t;

    iget-object v1, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/t;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 154
    :pswitch_23
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 155
    new-instance v2, Le/a/i/d/y;

    iget-object v1, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/c;

    invoke-direct {v2, v1}, Le/a/i/d/y;-><init>(Le/a/i/f0/c;)V

    return-object v2

    .line 156
    :pswitch_24
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 157
    new-instance v9, Le/a/i/d/v;

    iget-object v2, v1, Le/a/h/b/q;->q0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/i/d/k;

    .line 158
    new-instance v4, Le/a/i/d/u;

    iget-object v2, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/f0/c;

    invoke-direct {v4, v2}, Le/a/i/d/u;-><init>(Le/a/i/f0/c;)V

    .line 159
    iget-object v2, v1, Le/a/h/b/q;->s0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/i/d/h;

    iget-object v2, v1, Le/a/h/b/q;->u0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/i/d/j;

    iget-object v2, v1, Le/a/h/b/q;->w0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/i/d/m;

    iget-object v1, v1, Le/a/h/b/q;->y0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/i/d/l;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/i/d/v;-><init>(Le/a/i/d/k;Le/a/i/d/u;Le/a/i/d/h;Le/a/i/d/j;Le/a/i/d/m;Le/a/i/d/l;)V

    return-object v9

    .line 160
    :pswitch_25
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 161
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v2, Le/a/h/b/d/a/a/e0/g;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/a/a/e0/d;

    iget-object v1, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/d/a/a/m$d;

    invoke-direct {v2, v3, v1}, Le/a/h/b/d/a/a/e0/g;-><init>(Le/a/h/b/d/a/a/e0/d;Le/a/h/b/d/a/a/m$d;)V

    return-object v2

    .line 163
    :pswitch_26
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 164
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v2, Le/a/h/b/d/a/a/b0;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/h/b/d/a/a/y;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/h/b/d/a/a/m$f;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v10

    .line 166
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S4()Le/a/p5/l;

    move-result-object v11

    .line 168
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v12

    .line 170
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 171
    invoke-direct/range {v7 .. v12}, Le/a/h/b/d/a/a/b0;-><init>(Le/a/h/b/d/a/a/y;Le/a/h/b/d/a/a/m$f;Le/a/u3/g;Le/a/p5/l;Le/a/k/h;)V

    return-object v2

    .line 172
    :pswitch_27
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 173
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Le/a/h/b/d/a/a/j;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/a/a/g;

    iget-object v4, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h/b/d/a/a/m$c;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 175
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    invoke-direct {v2, v3, v4, v1}, Le/a/h/b/d/a/a/j;-><init>(Le/a/h/b/d/a/a/g;Le/a/h/b/d/a/a/m$c;Le/a/u3/g;)V

    return-object v2

    .line 177
    :pswitch_28
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 178
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v2, Le/a/h/b/d/a/a/e;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/a/a/b;

    iget-object v1, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/d/a/a/m$b;

    invoke-direct {v2, v3, v1}, Le/a/h/b/d/a/a/e;-><init>(Le/a/h/b/d/a/a/b;Le/a/h/b/d/a/a/m$b;)V

    return-object v2

    .line 180
    :pswitch_29
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 181
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v2, Le/a/h/b/d/a/a/x;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/a/a/u;

    iget-object v1, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/d/a/a/m$e;

    invoke-direct {v2, v3, v1}, Le/a/h/b/d/a/a/x;-><init>(Le/a/h/b/d/a/a/u;Le/a/h/b/d/a/a/m$e;)V

    return-object v2

    .line 183
    :pswitch_2a
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 184
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v2, Le/a/h/b/d/a/a/t;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/h/b/d/a/a/q;

    iget-object v3, v1, Le/a/h/b/q;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/f4/g/j;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 186
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/h/b/d/a/a/m$a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->t6()Le/a/k3/h;

    move-result-object v12

    .line 188
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v13

    .line 190
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->U1()Le/a/b0/q/h0;

    move-result-object v14

    .line 192
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 193
    invoke-direct/range {v7 .. v14}, Le/a/h/b/d/a/a/t;-><init>(Le/a/h/b/d/a/a/q;Le/a/f4/g/j;Le/a/p5/c0;Le/a/h/b/d/a/a/m$a;Le/a/k3/h;Le/a/k3/l/f;Le/a/b0/q/h0;)V

    return-object v2

    .line 194
    :pswitch_2b
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 195
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v1

    .line 196
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    invoke-interface {v1}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object v1

    .line 198
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 199
    :pswitch_2c
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 200
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Le/a/h/b/d/a/b/q;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/h/b/d/a/b/b;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/h/b/p0;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 202
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/h/b/f;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v12

    .line 204
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->v4()Le/a/o5/s1;

    move-result-object v13

    .line 206
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v14

    .line 208
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    iget-object v3, v1, Le/a/h/b/q;->a0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/y/c/i;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    .line 210
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 212
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    .line 213
    invoke-direct/range {v7 .. v17}, Le/a/h/b/d/a/b/q;-><init>(Le/a/h/b/d/a/b/b;Le/a/h/b/p0;Le/a/q2/a;Le/a/h/b/f;Le/a/d/c0/s1;Le/a/o5/s1;Le/a/y/c/b;Le/a/y/c/i;Le/a/o5/b0;Le/a/p5/c0;)V

    return-object v2

    .line 214
    :pswitch_2d
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 215
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v2, Le/a/h/b/m0;

    move-object v7, v2

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object v8, v3

    .line 217
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v3

    move-object v9, v3

    .line 219
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    iget-object v10, v1, Le/a/h/b/q;->b:Lcom/truecaller/calling/dialer/DialerMode;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/h/b/p0;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v3

    move-object v12, v3

    .line 221
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z0()Le/a/o5/q1;

    move-result-object v3

    move-object v13, v3

    .line 223
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object v14, v3

    .line 225
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->C7()Le/a/h/c/t;

    move-result-object v3

    move-object v15, v3

    .line 227
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/h/b/g0$a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    move-object/from16 v17, v3

    .line 229
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v3

    move-object/from16 v18, v3

    .line 231
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->N7()Le/a/h3/b/a;

    move-result-object v3

    move-object/from16 v19, v3

    .line 233
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Le/a/h/b/d/a/b/b;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v3

    move-object/from16 v21, v3

    .line 235
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget-object v3, v1, Le/a/h/b/q;->H:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/h/b/e/b;

    iget-object v1, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Le/a/h/b/y0/b/a;

    invoke-direct/range {v7 .. v23}, Le/a/h/b/m0;-><init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/calling/dialer/DialerMode;Le/a/h/b/p0;Le/a/b0/e/l;Le/a/o5/q1;Le/a/o5/f0;Le/a/h/c/t;Le/a/h/b/g0$a;Le/a/q2/a;Le/a/k3/l/f;Le/a/h3/b/a;Le/a/h/b/d/a/b/b;Le/a/e4/p;Le/a/h/b/e/b;Le/a/h/b/y0/b/a;)V

    return-object v2

    .line 237
    :pswitch_2e
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 238
    new-instance v2, Le/a/n4/c/b;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n1()Le/a/n4/a;

    move-result-object v8

    .line 239
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v9

    .line 241
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 243
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v11

    .line 245
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v12

    .line 247
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v13

    .line 249
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v14

    .line 251
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 252
    invoke-direct/range {v7 .. v14}, Le/a/n4/c/b;-><init>(Le/a/n4/a;Le/a/u3/g;Le/a/q2/a;Le/a/p5/g;Le/a/o5/f0;Le/a/p5/c;Le/a/h5/m;)V

    return-object v2

    .line 253
    :pswitch_2f
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 254
    new-instance v2, Le/a/n4/c/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n1()Le/a/n4/a;

    move-result-object v8

    .line 255
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v9

    .line 257
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v10

    .line 259
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 261
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v12

    .line 263
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v13

    .line 265
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v14

    .line 267
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v15

    .line 269
    invoke-static {v15, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    .line 270
    invoke-direct/range {v7 .. v15}, Le/a/n4/c/c;-><init>(Le/a/n4/a;Le/a/u3/g;Le/a/l/p2/v0;Le/a/q2/a;Le/a/o5/f0;Le/a/p5/c;Le/a/o5/b0;Le/a/l/a2;)V

    return-object v2

    .line 271
    :pswitch_30
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 272
    new-instance v2, Le/a/h/b/d/a/c/c;

    iget-object v5, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/h/b/d/a/c/b$b;

    iget-object v7, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 273
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    iget-object v6, v1, Le/a/h/b/q;->T:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/n4/c/d;

    iget-object v1, v1, Le/a/h/b/q;->V:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/n4/c/d;

    .line 275
    sget v8, Lcom/google/common/collect/ImmutableSet;->a:I

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v1, v9, v4

    .line 276
    invoke-static {v8, v9}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 277
    invoke-direct {v2, v5, v7, v1}, Le/a/h/b/d/a/c/c;-><init>(Le/a/h/b/d/a/c/b$b;Le/a/u3/g;Ljava/util/Set;)V

    return-object v2

    .line 278
    :pswitch_31
    new-instance v1, Le/a/h/b/d/a/a/n;

    invoke-direct {v1}, Le/a/h/b/d/a/a/n;-><init>()V

    return-object v1

    .line 279
    :pswitch_32
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 280
    iget-object v2, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v2

    .line 281
    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    iget-object v1, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/g/j$a;

    .line 283
    new-instance v3, Lcom/truecaller/network/search/BulkSearcherImpl;

    const/16 v4, 0xe

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/truecaller/network/search/BulkSearcherImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V

    return-object v3

    .line 284
    :pswitch_33
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 285
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v2, Le/a/h/b/d/a/b/g;

    move-object v7, v2

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/h/b/d/a/b/b;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/h/b/f;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/h/b/p0;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    move-object v11, v3

    .line 287
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v3

    move-object v12, v3

    .line 289
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v3

    move-object v13, v3

    .line 291
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->v4()Le/a/o5/s1;

    move-result-object v3

    move-object v14, v3

    .line 293
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v3

    move-object v15, v3

    .line 295
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    move-object/from16 v16, v3

    .line 297
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v3

    move-object/from16 v17, v3

    .line 299
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object/from16 v18, v3

    .line 301
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v3

    move-object/from16 v19, v3

    .line 303
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U1()Le/a/b0/q/h0;

    move-result-object v3

    move-object/from16 v20, v3

    .line 305
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    iget-object v3, v1, Le/a/h/b/q;->I:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Le/a/h/b/d/b/a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v3

    move-object/from16 v22, v3

    .line 307
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J1()Le/a/a0/p;

    move-result-object v3

    move-object/from16 v23, v3

    .line 309
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->N1()Le/a/b0/a/b/b;

    move-result-object v3

    move-object/from16 v24, v3

    .line 311
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b0()Le/a/h/b/w;

    move-result-object v3

    move-object/from16 v25, v3

    .line 313
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    iget-object v3, v1, Le/a/h/b/q;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Le/a/f4/g/j;

    invoke-direct/range {v7 .. v26}, Le/a/h/b/d/a/b/g;-><init>(Le/a/h/b/d/a/b/b;Le/a/h/b/f;Le/a/h/b/p0;Le/a/q2/a;Le/a/d/c0/s1;Le/a/e4/p;Le/a/o5/s1;Lcom/truecaller/settings/CallingSettings;Le/a/p5/c0;Le/a/k3/l/f;Le/a/o5/b0;Le/a/e4/b0;Le/a/b0/q/h0;Le/a/h/b/d/b/a;Le/a/z2/a;Le/a/a0/p;Le/a/b0/a/b/b;Le/a/h/b/w;Le/a/f4/g/j;)V

    .line 315
    new-instance v3, Le/a/h/b/d/a/b/j;

    iget-object v4, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    check-cast v28, Le/a/h/b/d/a/b/b;

    iget-object v4, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v4

    check-cast v29, Le/a/h/b/f;

    iget-object v4, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v30, v4

    check-cast v30, Le/a/h/b/p0;

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 316
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    iget-object v5, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v5

    .line 318
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    iget-object v7, v1, Le/a/h/b/q;->M:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v33, v7

    check-cast v33, Le/a/h/b/d/a/b/n;

    iget-object v7, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v7

    .line 320
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v8, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v8

    .line 322
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    iget-object v9, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->b0()Le/a/h/b/w;

    move-result-object v9

    .line 324
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    iget-object v6, v1, Le/a/h/b/q;->O:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v37, v6

    check-cast v37, Le/a/f4/g/j;

    move-object/from16 v27, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    invoke-direct/range {v27 .. v37}, Le/a/h/b/d/a/b/j;-><init>(Le/a/h/b/d/a/b/b;Le/a/h/b/f;Le/a/h/b/p0;Le/a/q2/a;Le/a/d/c0/s1;Le/a/h/b/d/a/b/n;Lcom/truecaller/settings/CallingSettings;Le/a/o5/b0;Le/a/h/b/w;Le/a/f4/g/j;)V

    .line 326
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->n3()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v3

    :cond_0
    return-object v2

    .line 327
    :pswitch_34
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 328
    new-instance v2, Le/a/h/b/a;

    move-object v7, v2

    iget-object v3, v1, Le/a/h/b/q;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/l4/c;

    iget-object v3, v1, Le/a/h/b/q;->P:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/h/b/d/a/b/h;

    iget-object v3, v1, Le/a/h/b/q;->R:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/h/b/d/a/a/l;

    iget-object v3, v1, Le/a/h/b/q;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/h/b/d/a/c/a;

    iget-object v3, v1, Le/a/h/b/q;->Z:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/h/b/h0;

    iget-object v3, v1, Le/a/h/b/q;->c0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/h/b/d/a/b/t;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v3

    move-object v14, v3

    .line 329
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v3

    move-object v15, v3

    .line 331
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v16, v3

    .line 333
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n3()Z

    move-result v17

    iget-object v3, v1, Le/a/h/b/q;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/h/b/d/a/a/r;

    iget-object v3, v1, Le/a/h/b/q;->g0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Le/a/h/b/d/a/a/v;

    iget-object v3, v1, Le/a/h/b/q;->i0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Le/a/h/b/d/a/a/c;

    iget-object v3, v1, Le/a/h/b/q;->k0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Le/a/h/b/d/a/a/h;

    iget-object v3, v1, Le/a/h/b/q;->m0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/h/b/d/a/a/z;

    iget-object v3, v1, Le/a/h/b/q;->o0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Le/a/h/b/d/a/a/e0/e;

    iget-object v3, v1, Le/a/h/b/q;->A0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Le/a/i/d/x;

    iget-object v3, v1, Le/a/h/b/q;->C0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Le/a/h/b/y0/b/b;

    iget-object v3, v1, Le/a/h/b/q;->F0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Le/a/h/b/y0/b/g;

    iget-object v3, v1, Le/a/h/b/q;->b:Lcom/truecaller/calling/dialer/DialerMode;

    move-object/from16 v27, v3

    iget-object v3, v1, Le/a/h/b/q;->H0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Le/a/a/m/g0;

    iget-object v3, v1, Le/a/h/b/q;->J0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Le/a/a/m/o0;

    iget-object v3, v1, Le/a/h/b/q;->L0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Le/a/a/m/z;

    iget-object v3, v1, Le/a/h/b/q;->N0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Le/a/a/m/z;

    iget-object v3, v1, Le/a/h/b/q;->P0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Le/a/a/m/b0;

    iget-object v3, v1, Le/a/h/b/q;->R0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Le/a/a/m/f0;

    iget-object v3, v1, Le/a/h/b/q;->T0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Le/a/a/m/e0;

    iget-object v3, v1, Le/a/h/b/q;->V0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Le/a/a/m/a1;

    iget-object v3, v1, Le/a/h/b/q;->X0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Le/a/a/m/y;

    iget-object v3, v1, Le/a/h/b/q;->Z0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Le/a/a/m/j0;

    iget-object v3, v1, Le/a/h/b/q;->b1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Le/a/a/m/k0;

    iget-object v3, v1, Le/a/h/b/q;->d1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Le/a/a/m/d0;

    iget-object v3, v1, Le/a/h/b/q;->f1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Le/a/a/m/s0;

    iget-object v3, v1, Le/a/h/b/q;->h1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Le/a/a/m/v0;

    iget-object v3, v1, Le/a/h/b/q;->j1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Le/a/a/m/b1;

    iget-object v3, v1, Le/a/h/b/q;->l1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Le/a/a/m/z0;

    iget-object v3, v1, Le/a/h/b/q;->n1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Le/a/a/m/c1;

    iget-object v3, v1, Le/a/h/b/q;->p1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Le/a/a/m/w0;

    iget-object v3, v1, Le/a/h/b/q;->r1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Le/a/a/m/n0;

    iget-object v3, v1, Le/a/h/b/q;->t1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v47, v3

    check-cast v47, Le/a/a/m/q0;

    iget-object v3, v1, Le/a/h/b/q;->v1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Le/a/a/m/p0;

    iget-object v3, v1, Le/a/h/b/q;->x1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v49, v3

    check-cast v49, Le/a/a/m/t0;

    iget-object v3, v1, Le/a/h/b/q;->z1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v50, v3

    check-cast v50, Le/a/a/m/c0;

    iget-object v3, v1, Le/a/h/b/q;->B1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Le/a/a/m/x0;

    iget-object v3, v1, Le/a/h/b/q;->D1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Le/a/a/m/y0;

    iget-object v3, v1, Le/a/h/b/q;->F1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Le/a/a/m/a0;

    iget-object v3, v1, Le/a/h/b/q;->H1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Le/a/a/m/m0;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n5()Le/a/h/b/w0/d;

    move-result-object v3

    move-object/from16 v55, v3

    .line 335
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o5()Z

    move-result v56

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->l2()Le/a/i/d/b;

    move-result-object v1

    move-object/from16 v57, v1

    .line 337
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    invoke-direct/range {v7 .. v57}, Le/a/h/b/a;-><init>(Le/a/l4/c;Le/a/h/b/d/a/b/h;Le/a/h/b/d/a/a/l;Le/a/h/b/d/a/c/a;Le/a/h/b/h0;Le/a/h/b/d/a/b/t;Le/a/l/a2;Le/a/p5/c;Le/a/u3/g;ZLe/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;Le/a/i/d/x;Le/a/h/b/y0/b/b;Le/a/h/b/y0/b/g;Lcom/truecaller/calling/dialer/DialerMode;Le/a/a/m/g0;Le/a/a/m/o0;Le/a/a/m/z;Le/a/a/m/z;Le/a/a/m/b0;Le/a/a/m/f0;Le/a/a/m/e0;Le/a/a/m/a1;Le/a/a/m/y;Le/a/a/m/j0;Le/a/a/m/k0;Le/a/a/m/d0;Le/a/a/m/s0;Le/a/a/m/v0;Le/a/a/m/b1;Le/a/a/m/z0;Le/a/a/m/c1;Le/a/a/m/w0;Le/a/a/m/n0;Le/a/a/m/q0;Le/a/a/m/p0;Le/a/a/m/t0;Le/a/a/m/c0;Le/a/a/m/x0;Le/a/a/m/y0;Le/a/a/m/a0;Le/a/a/m/m0;Le/a/h/b/w0/d;ZLe/a/i/d/b;)V

    return-object v2

    .line 339
    :pswitch_35
    new-instance v1, Le/a/h/b/d/b/a;

    invoke-direct {v1}, Le/a/h/b/d/b/a;-><init>()V

    return-object v1

    .line 340
    :pswitch_36
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 341
    new-instance v2, Le/a/h/b/d/a/b/m;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v8

    .line 342
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->v4()Le/a/o5/s1;

    move-result-object v9

    .line 344
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 346
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v11

    .line 348
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U1()Le/a/b0/q/h0;

    move-result-object v12

    .line 350
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    iget-object v3, v1, Le/a/h/b/q;->I:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/h/b/d/b/a;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J1()Le/a/a0/p;

    move-result-object v14

    .line 352
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->N1()Le/a/b0/a/b/b;

    move-result-object v15

    .line 354
    invoke-static {v15, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v1

    .line 356
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    move-object/from16 v16, v1

    .line 357
    invoke-direct/range {v7 .. v16}, Le/a/h/b/d/a/b/m;-><init>(Le/a/e4/p;Le/a/o5/s1;Le/a/p5/c0;Le/a/e4/b0;Le/a/b0/q/h0;Le/a/h/b/d/b/a;Le/a/a0/p;Le/a/b0/a/b/b;Le/a/z2/a;)V

    return-object v2

    .line 358
    :pswitch_37
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 359
    new-instance v2, Le/a/h/b/d/a/b/o;

    iget-object v3, v1, Le/a/h/b/q;->K:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/a/b/l;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b0()Le/a/h/b/w;

    move-result-object v1

    .line 360
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    invoke-direct {v2, v3, v1}, Le/a/h/b/d/a/b/o;-><init>(Le/a/h/b/d/a/b/l;Le/a/h/b/w;)V

    return-object v2

    .line 362
    :pswitch_38
    new-instance v1, Le/a/h/b/e/c;

    invoke-direct {v1}, Le/a/h/b/e/c;-><init>()V

    return-object v1

    .line 363
    :pswitch_39
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 364
    new-instance v2, Le/a/h/b/d/a/a/e0/c;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 365
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    invoke-direct {v2, v1}, Le/a/h/b/d/a/a/e0/c;-><init>(Le/a/u3/g;)V

    return-object v2

    .line 367
    :pswitch_3a
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 368
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 369
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    iget-object v3, v1, Le/a/u3/g;->v1:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x7d

    aget-object v4, v4, v5

    invoke-virtual {v3, v1, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    const-wide/16 v3, 0x0

    .line 371
    invoke-interface {v1, v3, v4}, Le/a/u3/i;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 372
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 373
    :pswitch_3b
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 374
    new-instance v2, Le/a/a/m/e3/b;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v3

    .line 375
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v4

    .line 377
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k3()Le/a/c0/h;

    move-result-object v1

    .line 379
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    invoke-direct {v2, v3, v4, v1}, Le/a/a/m/e3/b;-><init>(Le/a/p5/g;Le/a/u3/g;Le/a/c0/h;)V

    return-object v2

    .line 381
    :pswitch_3c
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 382
    new-instance v2, Le/a/a/b/e;

    move-object v7, v2

    invoke-virtual {v1}, Le/a/h/b/q;->l()Le/a/n2/b/a;

    move-result-object v8

    invoke-virtual {v1}, Le/a/h/b/q;->f()Le/a/l/t2/a;

    move-result-object v9

    invoke-virtual {v1}, Le/a/h/b/q;->h()Le/a/l/t2/b;

    move-result-object v10

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object v11, v3

    .line 383
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    invoke-virtual {v1}, Le/a/h/b/q;->j()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

    move-result-object v12

    invoke-virtual {v1}, Le/a/h/b/q;->g()Le/a/d0/s0;

    move-result-object v13

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v3

    move-object v14, v3

    .line 385
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v3

    move-object v15, v3

    .line 387
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v3

    move-object/from16 v16, v3

    .line 389
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q2()Le/a/b/c;

    move-result-object v3

    move-object/from16 v17, v3

    .line 391
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l6()Le/a/z/f;

    move-result-object v3

    move-object/from16 v18, v3

    .line 393
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v3

    move-object/from16 v19, v3

    .line 395
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v3

    move-object/from16 v20, v3

    .line 397
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 398
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v3

    move-object/from16 v21, v3

    .line 399
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    new-instance v3, Le/a/a/m/g3/d;

    move-object/from16 v22, v3

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v4

    .line 401
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v1}, Le/a/h/b/q;->m()Le/a/a/m/o2;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/a/m/g3/d;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 403
    invoke-virtual {v1}, Le/a/h/b/q;->i()Le/a/a/m/f3/e;

    move-result-object v23

    .line 404
    new-instance v3, Le/a/a/m/g3/b;

    move-object/from16 v24, v3

    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v4

    .line 405
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    invoke-virtual {v1}, Le/a/h/b/q;->m()Le/a/a/m/o2;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/a/m/g3/b;-><init>(Le/a/p5/a0;Le/a/a/m/o2;)V

    .line 407
    invoke-virtual {v1}, Le/a/h/b/q;->k()Le/a/a/m/f3/g;

    move-result-object v25

    invoke-virtual {v1}, Le/a/h/b/q;->n()Le/a/a/m/g3/f;

    move-result-object v26

    invoke-virtual {v1}, Le/a/h/b/q;->q()Le/a/a/m/f3/m;

    move-result-object v27

    invoke-virtual {v1}, Le/a/h/b/q;->o()Le/a/a/m/f3/k;

    move-result-object v28

    invoke-virtual {v1}, Le/a/h/b/q;->p()Le/a/l/t2/e;

    move-result-object v29

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v3

    move-object/from16 v30, v3

    .line 408
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o5()Z

    move-result v31

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    move-object/from16 v32, v3

    .line 410
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    iget-object v1, v1, Le/a/h/b/q;->w:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Le/a/a/m/e3/a;

    invoke-direct/range {v7 .. v33}, Le/a/a/b/e;-><init>(Le/a/n2/b/a;Le/a/l/t2/a;Le/a/l/t2/b;Le/a/u3/g;Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;Le/a/d0/s0;Le/a/o/c;Le/a/f/b;Le/a/r5/i0;Le/a/b/c;Le/a/z/f;Le/a/l/p2/v0;Le/a/d/f;Le/a/k/h;Le/a/a/m/g3/d;Le/a/a/m/f3/e;Le/a/a/m/g3/b;Le/a/a/m/f3/g;Le/a/a/m/g3/f;Le/a/a/m/f3/m;Le/a/a/m/f3/k;Le/a/l/t2/e;Le/a/l/c2;ZLe/a/a/i0;Le/a/a/m/e3/a;)V

    return-object v2

    .line 412
    :pswitch_3d
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 413
    new-instance v2, Le/a/a/b/g;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v8

    .line 414
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v9

    .line 416
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v10

    .line 418
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v11

    .line 420
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 421
    new-instance v12, Le/a/e/a/s3;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v3

    .line 422
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    invoke-direct {v12, v3}, Le/a/e/a/s3;-><init>(Le/a/p4/b;)V

    .line 424
    iget-object v1, v1, Le/a/h/b/q;->y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Le/a/a/b/d;

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Le/a/a/b/g;-><init>(Le/a/o5/f0;Le/a/a/i0;Le/a/p5/c;Le/a/u3/g;Le/a/e/a/r3;Le/a/a/b/d;)V

    return-object v2

    .line 425
    :pswitch_3e
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 426
    new-instance v2, Le/a/h/b/t0;

    iget-object v3, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/r0;

    iget-object v4, v1, Le/a/h/b/q;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h/b/d/a/c/b$b;

    iget-object v5, v1, Le/a/h/b/q;->A:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/b/f;

    invoke-virtual {v1}, Le/a/h/b/q;->n()Le/a/a/m/g3/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/h/b/t0;-><init>(Le/a/h/b/r0;Le/a/h/b/d/a/c/b$b;Le/a/a/b/f;Le/a/a/m/g3/f;)V

    return-object v2

    .line 427
    :pswitch_3f
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 428
    new-instance v2, Le/a/h/b/v0/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    .line 429
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v4

    .line 431
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v1

    .line 433
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    invoke-direct {v2, v3, v4, v1}, Le/a/h/b/v0/c;-><init>(Le/a/u3/g;Le/a/b0/e/r/a;Le/a/e4/p;)V

    return-object v2

    .line 435
    :pswitch_40
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 436
    new-instance v2, Le/a/h/b/u0/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->a5()Le/a/c/m/b;

    move-result-object v3

    .line 437
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 438
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v1

    .line 439
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    invoke-direct {v2, v3, v1}, Le/a/h/b/u0/c;-><init>(Le/a/c/m/b;Le/a/c/b/j;)V

    return-object v2

    .line 441
    :pswitch_41
    new-instance v1, Le/a/l/a/x;

    invoke-direct {v1}, Le/a/l/a/x;-><init>()V

    return-object v1

    .line 442
    :pswitch_42
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 443
    new-instance v2, Le/a/h/b/x0/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v8

    .line 444
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    iget-object v3, v1, Le/a/h/b/q;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/l/a/x;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v10

    .line 446
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->m4()Le/a/l/a/y;

    move-result-object v11

    .line 448
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v12

    .line 450
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->E()Le/a/b0/q/l0;

    move-result-object v13

    .line 452
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v14

    .line 454
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    new-instance v15, Le/a/l/a/o;

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v1

    .line 456
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    invoke-direct {v15, v1}, Le/a/l/a/o;-><init>(Le/a/l/p2/v0;)V

    move-object v7, v2

    .line 458
    invoke-direct/range {v7 .. v15}, Le/a/h/b/x0/c;-><init>(Le/a/o5/f0;Le/a/l/a/x;Le/a/l/p2/v0;Le/a/l/a/y;Le/a/z4/d;Le/a/b0/q/l0;Le/a/o5/b0;Le/a/l/a/o;)V

    return-object v2

    .line 459
    :pswitch_43
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 460
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    .line 461
    invoke-interface {v1}, Le/a/j2;->B0()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    .line 462
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 463
    :pswitch_44
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 464
    iget-object v2, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v2

    .line 465
    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 466
    iget-object v7, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v7

    .line 467
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 468
    iget-object v8, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v8

    .line 469
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    iget-object v9, v1, Le/a/h/b/q;->l:Ljavax/inject/Provider;

    invoke-static {v9}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 471
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "callLogAdUnitId"

    .line 472
    invoke-interface {v8, v6}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v10, "CALLLOG"

    .line 473
    invoke-static {v6, v8, v10, v1}, Le/a/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;

    move-result-object v6

    .line 474
    iput-object v5, v6, Le/a/i/s$a;->i:Ljava/lang/String;

    .line 475
    iput-boolean v4, v6, Le/a/i/s$a;->k:Z

    .line 476
    iput-boolean v4, v6, Le/a/i/s$a;->l:Z

    new-array v5, v4, [Lcom/truecaller/ads/CustomTemplate;

    .line 477
    sget-object v8, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v8, v5, v3

    .line 478
    invoke-virtual {v6, v5}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 479
    invoke-virtual {v1}, Le/a/u3/g;->A()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Lcom/google/android/gms/ads/AdSize;

    .line 480
    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    invoke-virtual {v6, v1}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    .line 481
    :cond_1
    new-instance v1, Le/a/i/f0/g;

    .line 482
    new-instance v3, Le/a/i/s;

    invoke-direct {v3, v6}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 483
    invoke-direct {v1, v2, v3, v7}, Le/a/i/f0/g;-><init>(Le/a/i/f0/d;Le/a/i/s;Ls1/w/f;)V

    return-object v1

    .line 484
    :pswitch_45
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 485
    new-instance v2, Le/a/h/b/y0/a/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v3

    .line 486
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->v1()Le/a/y4/g/g;

    move-result-object v4

    .line 488
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->P0()Le/a/f4/g/r;

    move-result-object v1

    .line 490
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    invoke-direct {v2, v3, v4, v1}, Le/a/h/b/y0/a/c;-><init>(Ls1/w/f;Le/a/y4/g/g;Le/a/f4/g/r;)V

    return-object v2

    .line 492
    :pswitch_46
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 493
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    .line 494
    invoke-interface {v1}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v1

    .line 495
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 496
    :pswitch_47
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 497
    new-instance v2, Le/a/h/b/d/b/e;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v8

    .line 498
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 499
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v9

    .line 500
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 501
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e2()Le/a/l0/g;

    move-result-object v10

    .line 502
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 503
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Q1()Le/a/l0/t;

    move-result-object v11

    .line 504
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 505
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i2()Le/a/q2/s0;

    move-result-object v12

    .line 506
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 507
    iget-object v3, v1, Le/a/h/b/q;->g:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->D6()Le/a/l0/k;

    move-result-object v14

    .line 508
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->n3()Z

    move-result v15

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Le/a/h/b/d/b/e;-><init>(Ls1/w/f;Ls1/w/f;Le/a/l0/g;Le/a/l0/t;Le/a/q2/s0;Lo3/a;Le/a/l0/k;Z)V

    return-object v2

    .line 510
    :pswitch_48
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 511
    iget-object v1, v1, Le/a/h/b/q;->a:Le/a/j2;

    .line 512
    invoke-interface {v1}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v1

    .line 513
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 514
    :pswitch_49
    iget-object v1, v0, Le/a/h/b/q$b;->a:Le/a/h/b/q;

    .line 515
    new-instance v2, Le/a/h/b/y;

    move-object v7, v2

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object v8, v3

    .line 516
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v3

    move-object v9, v3

    .line 518
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    iget-object v3, v1, Le/a/h/b/q;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/l4/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n3()Z

    move-result v11

    iget-object v12, v1, Le/a/h/b/q;->b:Lcom/truecaller/calling/dialer/DialerMode;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n5()Le/a/h/b/w0/d;

    move-result-object v3

    move-object v13, v3

    .line 520
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 521
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->C5()Le/a/h/t0/b;

    move-result-object v3

    move-object v14, v3

    .line 522
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    move-object v15, v3

    .line 524
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v16, v3

    .line 526
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 527
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v3

    move-object/from16 v17, v3

    .line 528
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 529
    iget-object v3, v1, Le/a/h/b/q;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/h/b/d/b/c;

    iget-object v3, v1, Le/a/h/b/q;->k:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Le/a/h/b/y0/a/b;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v3

    move-object/from16 v20, v3

    .line 530
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v3

    move-object/from16 v21, v3

    .line 532
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 533
    new-instance v3, Le/a/h/b/d/b/l;

    move-object/from16 v22, v3

    invoke-direct {v3}, Le/a/h/b/d/b/l;-><init>()V

    new-instance v3, Le/a/h/b/d/b/l;

    move-object/from16 v23, v3

    invoke-direct {v3}, Le/a/h/b/d/b/l;-><init>()V

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i2()Le/a/q2/s0;

    move-result-object v3

    move-object/from16 v24, v3

    .line 534
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    move-object/from16 v25, v3

    .line 536
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v26, v3

    .line 538
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v3

    move-object/from16 v27, v3

    .line 540
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 541
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v3

    move-object/from16 v28, v3

    .line 542
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->X0()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v29, v3

    .line 544
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    iget-object v3, v1, Le/a/h/b/q;->m:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Le/a/i/f0/c;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u4()Le/a/h/b0;

    move-result-object v3

    move-object/from16 v31, v3

    .line 546
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u5()Le/a/z4/a;

    move-result-object v3

    move-object/from16 v32, v3

    .line 548
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 549
    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A4()Le/a/a/k0;

    move-result-object v3

    move-object/from16 v33, v3

    .line 550
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 551
    iget-object v3, v1, Le/a/h/b/q;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Le/a/h/b/x0/b;

    iget-object v3, v1, Le/a/h/b/q;->r:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Le/a/h/b/u0/b;

    iget-object v3, v1, Le/a/h/b/q;->t:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Le/a/h/b/v0/b;

    .line 552
    new-instance v38, Le/a/h/b/z0/c;

    move-object/from16 v37, v38

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v3

    .line 553
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    iget-object v4, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v4

    .line 555
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 556
    iget-object v5, v1, Le/a/h/b/q;->p:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v41, v5

    check-cast v41, Le/a/h/b/x0/b;

    iget-object v5, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v42

    iget-object v5, v1, Le/a/h/b/q;->D:Ljavax/inject/Provider;

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v43, v5

    invoke-direct/range {v38 .. v43}, Le/a/h/b/z0/c;-><init>(Le/a/k/h;Le/a/p5/c;Le/a/h/b/x0/b;Lo3/a;Ljavax/inject/Provider;)V

    .line 557
    iget-object v3, v1, Le/a/h/b/q;->F:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Le/a/h/b/d/a/a/e0/b;

    iget-object v3, v1, Le/a/h/b/q;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q5()Le/a/l/t2/d;

    move-result-object v3

    move-object/from16 v39, v3

    .line 558
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 559
    iget-object v3, v1, Le/a/h/b/q;->H:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Le/a/h/b/e/b;

    iget-object v3, v1, Le/a/h/b/q;->c:Lcom/truecaller/callhistory/data/FilterType;

    move-object/from16 v41, v3

    iget-object v3, v1, Le/a/h/b/q;->C:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v42

    iget-object v1, v1, Le/a/h/b/q;->M:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Le/a/h/b/d/a/b/n;

    invoke-direct/range {v7 .. v43}, Le/a/h/b/y;-><init>(Ls1/w/f;Ls1/w/f;Le/a/l4/c;ZLcom/truecaller/calling/dialer/DialerMode;Le/a/h/b/w0/d;Le/a/h/t0/b;Le/a/p5/c0;Le/a/o5/f0;Lcom/truecaller/settings/CallingSettings;Le/a/h/b/d/b/c;Le/a/h/b/y0/a/b;Le/a/k3/j/b;Le/a/h0/j;Le/a/h/b/d/b/j;Le/a/h/b/d/b/j;Le/a/q2/s0;Le/a/q2/a;Le/a/r2/f;Le/a/e4/p;Le/a/y/c/b;Le/a/r2/f;Le/a/i/f0/c;Le/a/h/b0;Le/a/z4/a;Le/a/a/k0;Le/a/h/b/x0/b;Le/a/h/b/u0/b;Le/a/h/b/v0/b;Le/a/h/b/z0/b;Le/a/h/b/d/a/a/e0/b;Le/a/l/t2/d;Le/a/h/b/e/b;Lcom/truecaller/callhistory/data/FilterType;Lo3/a;Le/a/h/b/d/a/b/n;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
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
