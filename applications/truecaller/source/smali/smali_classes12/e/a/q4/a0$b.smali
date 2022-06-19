.class public final Le/a/q4/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q4/a0;
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
.field public final a:Le/a/q4/a0;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/q4/a0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 3
    iput p2, p0, Le/a/q4/a0$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/q4/a0$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    const-string v3, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/q4/a0$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 4
    iget-object v4, v1, Le/a/q4/a0;->c:Le/a/q4/n0;

    iget-object v1, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "referral"

    .line 7
    invoke-interface {v1, v3}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 8
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 9
    :pswitch_1
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 10
    iget-object v1, v1, Le/a/q4/a0;->c:Le/a/q4/n0;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/a/w/b/d/a;->a:Le/a/w/b/d/a;

    return-object v1

    .line 12
    :pswitch_2
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 13
    iget-object v4, v1, Le/a/q4/a0;->c:Le/a/q4/n0;

    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->q6()Le/a/w/c/a;

    move-result-object v5

    .line 14
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->n5()Le/a/h/b/w0/d;

    move-result-object v6

    .line 16
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v7

    .line 18
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->Z1()Le/a/w/b/b;

    move-result-object v8

    .line 20
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v9

    .line 22
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v10

    .line 24
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v2, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v11

    .line 26
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v1, v1, Le/a/q4/a0;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Le/a/w/b/d/a;

    invoke-static/range {v4 .. v12}, Le/a/l4/k;->e0(Le/a/q4/n0;Le/a/w/c/a;Le/a/h/b/w0/d;Le/a/k3/j/b;Le/a/w/b/b;Le/a/b0/q/z;Le/a/h0/j;Le/a/h0/m;Le/a/w/b/d/a;)Le/a/q4/u;

    move-result-object v1

    return-object v1

    .line 28
    :pswitch_3
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 29
    iget-object v2, v1, Le/a/q4/a0;->c:Le/a/q4/n0;

    iget-object v4, v1, Le/a/q4/a0;->h:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v1, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 30
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    check-cast v4, Le/a/q4/u;

    .line 32
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Le/a/q4/i0;

    invoke-direct {v2, v4, v1}, Le/a/q4/i0;-><init>(Le/a/q4/u;Landroid/content/Context;)V

    return-object v2

    .line 34
    :pswitch_4
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 35
    iget-object v3, v1, Le/a/q4/a0;->c:Le/a/q4/n0;

    iget-object v4, v1, Le/a/q4/a0;->i:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q4/h0;

    iget-object v1, v1, Le/a/q4/a0;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 36
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-class v3, Le/a/q4/h0;

    invoke-interface {v1, v3, v4}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 38
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 39
    :pswitch_5
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 40
    iget-object v1, v1, Le/a/q4/a0;->a:Le/a/q4/w;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 43
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 44
    :pswitch_6
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 45
    iget-object v2, v1, Le/a/q4/a0;->a:Le/a/q4/w;

    iget-object v1, v1, Le/a/q4/a0;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SmsManager;

    .line 46
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Le/a/q4/y;

    invoke-direct {v2, v1}, Le/a/q4/y;-><init>(Landroid/telephony/SmsManager;)V

    return-object v2

    .line 48
    :pswitch_7
    iget-object v1, v0, Le/a/q4/a0$b;->a:Le/a/q4/a0;

    .line 49
    iget-object v2, v1, Le/a/q4/a0;->a:Le/a/q4/w;

    iget-object v4, v1, Le/a/q4/a0;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->Z1()Le/a/w/b/b;

    move-result-object v9

    .line 50
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v5, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v10

    .line 52
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v5, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v12

    .line 54
    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object v5, v1, Le/a/q4/a0;->k:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Le/a/r2/f;

    iget-object v5, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v5

    .line 56
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v6, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v15

    .line 58
    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iget-object v6, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->K0()Le/a/s4/a;

    move-result-object v14

    .line 60
    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v1, v1, Le/a/q4/a0;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->p4()Le/a/q4/j0;

    move-result-object v1

    .line 62
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-object v8, v4

    check-cast v8, Le/a/q4/y;

    .line 64
    iget-object v3, v2, Le/a/q4/w;->a:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 65
    new-instance v3, Le/a/q4/x;

    iget-object v7, v2, Le/a/q4/w;->a:Ljava/lang/String;

    iget-object v11, v2, Le/a/q4/w;->b:Lcom/truecaller/data/entity/Contact;

    .line 66
    invoke-interface {v5}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v2

    move-object v6, v3

    move-object v4, v14

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    invoke-direct/range {v6 .. v17}, Le/a/q4/x;-><init>(Ljava/lang/String;Le/a/q4/y;Le/a/w/b/b;Le/a/o5/f0;Lcom/truecaller/data/entity/Contact;Le/a/p5/c0;Le/a/r2/f;Le/a/r2/j;Le/a/p5/a0;Le/a/s4/a;Le/a/q4/j0;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
