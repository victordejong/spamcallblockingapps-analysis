.class public final Le/a/r1$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$b;
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
.field public final a:Le/a/r1$b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 3
    iput p4, p0, Le/a/r1$b$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$b$a;->b:I

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$b$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 4
    new-instance v11, Le/a/r/c/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 5
    iget-object v2, v2, Le/a/r1;->Jb:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/p2/c0;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 7
    iget-object v2, v2, Le/a/r1;->sb:Ljavax/inject/Provider;

    .line 8
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l/p2/r0;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 9
    iget-object v2, v2, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 11
    iget-object v2, v2, Le/a/r1;->h0:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/q2/d1/d;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 13
    iget-object v2, v2, Le/a/r1;->Ma:Ljavax/inject/Provider;

    .line 14
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c0/h;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 15
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 16
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v9

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 17
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 18
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/r/c/a;-><init>(Le/a/l/p2/c0;Le/a/l/p2/r0;Le/a/b0/o/a;Le/a/s4/a;Le/a/q2/d1/d;Le/a/c0/h;Ls1/w/f;Ls1/w/f;)V

    return-object v11

    .line 19
    :pswitch_1
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 20
    new-instance v2, Le/a/r/c/a0/c;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 21
    iget-object v3, v3, Le/a/r1;->X:Ljavax/inject/Provider;

    .line 22
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1$b;->K0()Le/a/r/c/a0/b;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/r/c/a0/c;-><init>(Le/a/b0/e/l;Le/a/r/c/a0/a;)V

    return-object v2

    .line 23
    :pswitch_2
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 24
    invoke-virtual {v1}, Le/a/r1$b;->K0()Le/a/r/c/a0/b;

    move-result-object v1

    return-object v1

    .line 25
    :pswitch_3
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 26
    new-instance v2, Le/a/r/z/d;

    iget-object v1, v1, Le/a/r1$b;->R:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r/h;

    invoke-direct {v2, v1}, Le/a/r/z/d;-><init>(Le/a/r/h;)V

    return-object v2

    .line 27
    :pswitch_4
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 28
    new-instance v10, Le/a/r/z/b;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 29
    iget-object v2, v2, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 31
    iget-object v2, v2, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 32
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 33
    iget-object v2, v2, Le/a/r1;->n1:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/f;

    iget-object v2, v1, Le/a/r1$b;->R:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/r/h;

    .line 35
    new-instance v7, Le/a/r/c/t;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 36
    iget-object v2, v2, Le/a/r1;->e:Lo3/b/a/c/d/a;

    .line 37
    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Le/a/r/c/t;-><init>(Landroid/content/Context;)V

    .line 38
    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 39
    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v8

    .line 40
    new-instance v9, Le/a/p5/d;

    invoke-direct {v9}, Le/a/p5/d;-><init>()V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/r/z/b;-><init>(Le/a/b0/o/a;Lo3/a;Le/a/b0/e/f;Le/a/r/h;Le/a/r/c/t;Le/a/p5/a0;Le/a/p5/c;)V

    return-object v10

    .line 41
    :pswitch_5
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 42
    new-instance v2, Le/a/r/q/d;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 43
    iget-object v3, v3, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1$b;->P0()Le/a/r/q/j;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/r/q/d;-><init>(Le/a/q2/a;Le/a/r/q/j;)V

    return-object v2

    .line 45
    :pswitch_6
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 46
    invoke-virtual {v1}, Le/a/r1$b;->Q0()Lcom/truecaller/wizard/WizardVerificationMode;

    move-result-object v1

    return-object v1

    .line 47
    :pswitch_7
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 48
    new-instance v2, Le/a/r/c/q;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v3}, Le/a/r1;->y5()Le/a/r/e/b;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1$b;->L0()Le/a/r/c/m;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/r/c/q;-><init>(Le/a/r/e/b;Le/a/r/c/z;)V

    return-object v2

    .line 49
    :pswitch_8
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 50
    invoke-virtual {v1}, Le/a/r1$b;->L0()Le/a/r/c/m;

    move-result-object v1

    return-object v1

    .line 51
    :pswitch_9
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 52
    new-instance v10, Lcom/truecaller/wizard/AccountHelperImpl;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 53
    iget-object v2, v2, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 55
    iget-object v2, v2, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/b0/e/r/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->y5()Le/a/r/e/b;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1$b;->O0()Le/a/r/c/z;

    move-result-object v6

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 57
    iget-object v2, v2, Le/a/r1;->X:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 59
    invoke-virtual {v2}, Le/a/r1;->hd()Le/a/r/o;

    move-result-object v8

    .line 60
    iget-object v1, v1, Le/a/r1$b;->N:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/a/r/q/h;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/truecaller/wizard/AccountHelperImpl;-><init>(Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/r/e/b;Le/a/r/c/z;Le/a/b0/e/l;Le/a/r/v/a;Le/a/r/q/h;)V

    return-object v10

    .line 61
    :pswitch_a
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 62
    new-instance v2, Le/a/r/c/v;

    invoke-virtual {v1}, Le/a/r1$b;->J0()Le/a/r/c/l;

    move-result-object v3

    iget-object v1, v1, Le/a/r1$b;->R:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/r/c/v;-><init>(Le/a/r/c/l;Lo3/a;)V

    return-object v2

    .line 63
    :pswitch_b
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 64
    invoke-virtual {v1}, Le/a/r1$b;->P0()Le/a/r/q/j;

    move-result-object v1

    return-object v1

    .line 65
    :pswitch_c
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    invoke-static {v1}, Le/a/r1$b;->z0(Le/a/r1$b;)Le/a/l/a/n;

    move-result-object v1

    return-object v1

    .line 66
    :pswitch_d
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 67
    new-instance v11, Le/a/d5/h/o;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 68
    iget-object v2, v2, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/p2/v0;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 70
    invoke-virtual {v2}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v4

    .line 71
    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 72
    iget-object v2, v2, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 73
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 74
    iget-object v2, v2, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 75
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/z4/d;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->Z1()Le/a/w/b/b;

    move-result-object v7

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 76
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 77
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v9

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 78
    invoke-virtual {v1}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v10

    move-object v2, v11

    .line 79
    invoke-direct/range {v2 .. v10}, Le/a/d5/h/o;-><init>(Le/a/l/p2/v0;Le/a/o5/f0;Le/a/u3/g;Le/a/z4/d;Le/a/w/b/b;Ls1/w/f;Le/a/b0/q/l0;Le/a/o5/b0;)V

    return-object v11

    .line 80
    :pswitch_e
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 81
    new-instance v2, Le/a/d5/h/h;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 82
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 83
    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 84
    iget-object v4, v4, Le/a/r1;->rf:Ljavax/inject/Provider;

    .line 85
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h3/b/a;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 86
    iget-object v1, v1, Le/a/r1;->r3:Ljavax/inject/Provider;

    .line 87
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Le/a/d5/h/h;-><init>(Ls1/w/f;Le/a/h3/b/a;Z)V

    return-object v2

    .line 88
    :pswitch_f
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 89
    new-instance v2, Le/a/d5/h/e;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 90
    iget-object v3, v3, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 91
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 92
    iget-object v4, v4, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 93
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 94
    iget-object v1, v1, Le/a/r1;->s2:Ljavax/inject/Provider;

    .line 95
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/b;

    invoke-direct {v2, v3, v4, v1}, Le/a/d5/h/e;-><init>(Le/a/u3/g;Le/a/b0/o/a;Le/a/f/b;)V

    return-object v2

    .line 96
    :pswitch_10
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 97
    new-instance v9, Le/a/d5/h/b;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 98
    iget-object v2, v2, Le/a/r1;->X:Ljavax/inject/Provider;

    .line 99
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 100
    invoke-virtual {v2}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    .line 101
    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v5

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 102
    iget-object v2, v2, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 103
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/z4/d;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 104
    invoke-virtual {v2}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v7

    .line 105
    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 106
    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 107
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/u3/g;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/d5/h/b;-><init>(Le/a/b0/e/l;Le/a/p5/g;Le/a/b0/q/l0;Le/a/z4/d;Le/a/o5/b0;Le/a/u3/g;)V

    return-object v9

    .line 108
    :pswitch_11
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 109
    new-instance v9, Le/a/d5/h/j;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 110
    iget-object v2, v2, Le/a/r1;->Jb:Ljavax/inject/Provider;

    .line 111
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/p2/c0;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 112
    iget-object v2, v2, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 113
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/z4/d;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v5

    new-instance v6, Le/a/l/b2;

    invoke-direct {v6}, Le/a/l/b2;-><init>()V

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 114
    iget-object v2, v2, Le/a/r1;->hb:Ljavax/inject/Provider;

    .line 115
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/l/a/y;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 116
    iget-object v1, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 117
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/b0/o/a;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/d5/h/j;-><init>(Le/a/l/p2/c0;Le/a/z4/d;Le/a/b0/q/l0;Le/a/l/a2;Le/a/l/a/y;Le/a/b0/o/a;)V

    return-object v9

    .line 118
    :pswitch_12
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 119
    new-instance v2, Le/a/d5/h/k;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 120
    iget-object v3, v3, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 121
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/z4/d;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 122
    invoke-virtual {v4}, Le/a/r1;->x9()Le/a/c3/b;

    move-result-object v4

    .line 123
    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 124
    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v1

    .line 125
    invoke-direct {v2, v3, v4, v1}, Le/a/d5/h/k;-><init>(Le/a/z4/d;Le/a/c3/a;Le/a/p5/g;)V

    return-object v2

    .line 126
    :pswitch_13
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 127
    new-instance v8, Le/a/d5/h/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 128
    iget-object v2, v2, Le/a/r1;->X:Ljavax/inject/Provider;

    .line 129
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 130
    iget-object v2, v2, Le/a/r1;->V9:Ljavax/inject/Provider;

    .line 131
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/n/e;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 132
    iget-object v2, v2, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 133
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 134
    iget-object v2, v2, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 135
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/z4/d;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 136
    invoke-virtual {v1}, Le/a/r1;->r9()Le/a/n/j0;

    move-result-object v7

    move-object v2, v8

    .line 137
    invoke-direct/range {v2 .. v7}, Le/a/d5/h/a;-><init>(Le/a/b0/e/l;Le/a/n/e;Le/a/b0/o/a;Le/a/z4/d;Le/a/n/i0;)V

    return-object v8

    .line 138
    :pswitch_14
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 139
    new-instance v2, Le/a/d5/h/i;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 140
    iget-object v3, v3, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 141
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/z4/d;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 142
    iget-object v1, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 143
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/o/a;

    invoke-direct {v2, v3, v1}, Le/a/d5/h/i;-><init>(Le/a/z4/d;Le/a/b0/o/a;)V

    return-object v2

    .line 144
    :pswitch_15
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 145
    new-instance v13, Le/a/d5/h/m;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 146
    iget-object v2, v2, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 147
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/z4/d;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 148
    iget-object v2, v2, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 149
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v5

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 150
    invoke-virtual {v2}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v6

    .line 151
    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 152
    iget-object v2, v2, Le/a/r1;->Hb:Ljavax/inject/Provider;

    .line 153
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/l/p2/a1;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 154
    iget-object v2, v2, Le/a/r1;->hb:Ljavax/inject/Provider;

    .line 155
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/l/a/y;

    new-instance v9, Le/a/l/b2;

    invoke-direct {v9}, Le/a/l/b2;-><init>()V

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 156
    iget-object v2, v2, Le/a/r1;->Jb:Ljavax/inject/Provider;

    .line 157
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/l/p2/c0;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 158
    iget-object v2, v2, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 159
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/l/p2/v0;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 160
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 161
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/d5/h/m;-><init>(Le/a/z4/d;Le/a/u3/g;Le/a/b0/q/l0;Le/a/o5/b0;Le/a/l/p2/a1;Le/a/l/a/y;Le/a/l/a2;Le/a/l/p2/c0;Le/a/l/p2/v0;Ls1/w/f;)V

    return-object v13

    .line 162
    :pswitch_16
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 163
    new-instance v2, Le/a/d5/h/d;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 164
    sget v4, Le/a/r1;->Ni:I

    .line 165
    invoke-virtual {v3}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v3

    .line 166
    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 167
    iget-object v4, v4, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 168
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    iget-object v5, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 169
    iget-object v5, v5, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 170
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/z4/d;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d5/h/d;-><init>(Le/a/o5/f0;Le/a/b0/o/a;Le/a/z4/d;Le/a/b0/q/l0;)V

    return-object v2

    .line 171
    :pswitch_17
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 172
    new-instance v2, Le/a/d5/h/g;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 173
    sget v4, Le/a/r1;->Ni:I

    .line 174
    invoke-virtual {v3}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v3

    .line 175
    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 176
    iget-object v4, v4, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 177
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/z4/d;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/d5/h/g;-><init>(Le/a/p5/g;Le/a/z4/d;Le/a/b0/q/l0;)V

    return-object v2

    .line 178
    :pswitch_18
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 179
    new-instance v2, Le/a/d5/h/s;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 180
    iget-object v3, v3, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 181
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/z4/d;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 182
    iget-object v4, v4, Le/a/r1;->fg:Ljavax/inject/Provider;

    .line 183
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/j4/b/a/f;

    iget-object v5, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v5}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v5

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 184
    iget-object v1, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    .line 185
    invoke-static {v1}, Le/a/n/g0;->j(Le/a/b0/g/a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d5/h/s;-><init>(Le/a/z4/d;Le/a/j4/b/a/f;Le/a/b0/q/l0;Ljava/lang/String;)V

    return-object v2

    .line 186
    :pswitch_19
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 187
    new-instance v2, Le/a/d5/h/u;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 188
    iget-object v3, v3, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 189
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/z4/d;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v4}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v4

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 190
    iget-object v1, v1, Le/a/r1;->q5:Ljavax/inject/Provider;

    .line 191
    invoke-direct {v2, v3, v4, v1}, Le/a/d5/h/u;-><init>(Le/a/z4/d;Le/a/b0/q/l0;Ljavax/inject/Provider;)V

    return-object v2

    .line 192
    :pswitch_1a
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 193
    new-instance v2, Le/a/d5/h/f;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 194
    iget-object v3, v3, Le/a/r1;->X:Ljavax/inject/Provider;

    .line 195
    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 196
    iget-object v4, v4, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 197
    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 198
    iget-object v5, v5, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 199
    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 200
    iget-object v1, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    .line 201
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d5/h/f;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 202
    :pswitch_1b
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 203
    new-instance v19, Le/a/d5/d;

    move-object/from16 v2, v19

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 204
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 205
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1$b;->v:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1$b;->w:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v1, Le/a/r1$b;->x:Ljavax/inject/Provider;

    invoke-static {v6}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v7, v1, Le/a/r1$b;->y:Ljavax/inject/Provider;

    invoke-static {v7}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v8, v1, Le/a/r1$b;->z:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v9, v1, Le/a/r1$b;->A:Ljavax/inject/Provider;

    invoke-static {v9}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v10, v1, Le/a/r1$b;->B:Ljavax/inject/Provider;

    invoke-static {v10}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v11, v1, Le/a/r1$b;->C:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v12, v1, Le/a/r1$b;->D:Ljavax/inject/Provider;

    invoke-static {v12}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v13, v1, Le/a/r1$b;->E:Ljavax/inject/Provider;

    invoke-static {v13}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    iget-object v14, v1, Le/a/r1$b;->F:Ljavax/inject/Provider;

    invoke-static {v14}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    iget-object v15, v1, Le/a/r1$b;->G:Ljavax/inject/Provider;

    invoke-static {v15}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v0, v1, Le/a/r1$b;->H:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    iget-object v0, v1, Le/a/r1$b;->I:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v17

    iget-object v0, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->Q6()Le/a/o5/x1;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Le/a/d5/d;-><init>(Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/x1;)V

    return-object v19

    .line 206
    :pswitch_1c
    sget v0, Le/a/v4/s0/k/a;->a:I

    .line 207
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->SDK_OAUTH_ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/v4/s0/l/a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/s0/l/a;

    .line 208
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 209
    :pswitch_1d
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 210
    new-instance v13, Le/a/v4/s0/m/a/e;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 211
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 212
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-static {v2}, Le/a/r1;->s8(Le/a/r1;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Le/a/l4/k;->f0()Le/a/v4/v;

    move-result-object v5

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 213
    iget-object v2, v2, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 214
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 215
    iget-object v2, v2, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 216
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/b0/e/r/a;

    invoke-virtual {v1}, Le/a/r1$b;->N0()Le/a/v4/a0;

    move-result-object v8

    invoke-virtual {v1}, Le/a/r1$b;->E0()Le/a/v4/a;

    move-result-object v9

    invoke-virtual {v1}, Le/a/r1$b;->M0()Le/a/p5/h0;

    move-result-object v10

    .line 217
    iget-object v2, v1, Le/a/r1$b;->s:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/v4/s0/l/a;

    .line 218
    sget v11, Le/a/v4/s0/k/a;->a:I

    const-string v11, "oAuthApiService"

    .line 219
    invoke-static {v2, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v11, Le/a/v4/s0/l/c;

    invoke-direct {v11, v2}, Le/a/v4/s0/l/c;-><init>(Le/a/v4/s0/l/a;)V

    .line 221
    invoke-virtual {v1}, Le/a/r1$b;->G0()Le/a/v4/m;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/v4/s0/m/a/e;-><init>(Ls1/w/f;Landroid/content/pm/PackageManager;Le/a/v4/v;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/a0;Le/a/v4/a;Le/a/p5/h0;Le/a/v4/s0/l/b;Le/a/v4/l;)V

    return-object v13

    .line 222
    :pswitch_1e
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 223
    iget-object v2, v1, Le/a/r1$b;->f:Le/a/v4/i;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 224
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 225
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    iget-object v3, v1, Le/a/r1$b;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/l;

    iget-object v4, v1, Le/a/r1$b;->p:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Le/a/r2/f;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 226
    iget-object v4, v4, Le/a/r1;->c0:Ljavax/inject/Provider;

    .line 227
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-static {v4}, Le/a/r1;->s8(Le/a/r1;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1}, Le/a/r1$b;->I0()Landroid/app/NotificationManager;

    move-result-object v10

    invoke-virtual {v1}, Le/a/r1$b;->G0()Le/a/v4/m;

    move-result-object v11

    iget-object v4, v1, Le/a/r1$b;->f:Le/a/v4/i;

    .line 228
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v12, Le/a/v4/b0;

    invoke-direct {v12}, Le/a/v4/b0;-><init>()V

    .line 230
    invoke-static {}, Le/a/l4/k;->f0()Le/a/v4/v;

    move-result-object v13

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 231
    iget-object v4, v4, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 232
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Le/a/b0/o/a;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 233
    iget-object v4, v4, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 234
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Le/a/b0/e/r/a;

    invoke-virtual {v1}, Le/a/r1$b;->N0()Le/a/v4/a0;

    move-result-object v16

    invoke-virtual {v1}, Le/a/r1$b;->E0()Le/a/v4/a;

    move-result-object v17

    invoke-virtual {v1}, Le/a/r1$b;->M0()Le/a/p5/h0;

    move-result-object v18

    .line 235
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Le/a/v4/o;

    .line 237
    invoke-interface {v3}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v6

    move-object v4, v1

    invoke-direct/range {v4 .. v18}, Le/a/v4/o;-><init>(Ls1/w/f;Le/a/r2/j;Le/a/r2/f;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;Le/a/v4/l;Le/a/v4/b0;Le/a/v4/v;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/a0;Le/a/v4/a;Le/a/p5/h0;)V

    return-object v1

    .line 238
    :pswitch_1f
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 239
    iget-object v3, v1, Le/a/r1$b;->f:Le/a/v4/i;

    iget-object v4, v1, Le/a/r1$b;->n:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/l;

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 240
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-class v3, Lcom/truecaller/sdk/ConfirmProfileService;

    const/16 v5, 0xa

    invoke-interface {v4, v1, v3, v5}, Le/a/r2/l;->a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;

    move-result-object v1

    .line 242
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 243
    :pswitch_20
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 244
    iget-object v3, v1, Le/a/r1$b;->f:Le/a/v4/i;

    .line 245
    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 246
    iget-object v4, v4, Le/a/r1;->e:Lo3/b/a/c/d/a;

    .line 247
    invoke-static {v4}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v4

    .line 248
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v3, Le/a/v4/z;

    invoke-direct {v3, v4}, Le/a/v4/z;-><init>(Landroid/content/Context;)V

    .line 250
    iget-object v1, v1, Le/a/r1$b;->o:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 251
    const-class v4, Le/a/v4/y;

    invoke-interface {v1, v4, v3}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 252
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 253
    :pswitch_21
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 254
    iget-object v1, v1, Le/a/r1$b;->f:Le/a/v4/i;

    .line 255
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v1, Le/a/r2/n;

    invoke-direct {v1}, Le/a/r2/n;-><init>()V

    .line 257
    new-instance v2, Le/a/v4/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/v4/d;-><init>(Le/a/v4/b;)V

    .line 258
    new-instance v3, Le/a/v4/c;

    invoke-direct {v3, v2, v1}, Le/a/v4/c;-><init>(Le/a/r2/b0;Le/a/r2/n;)V

    return-object v3

    .line 259
    :pswitch_22
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 260
    iget-object v2, v1, Le/a/r1$b;->f:Le/a/v4/i;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 261
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 262
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    iget-object v3, v1, Le/a/r1$b;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/l;

    iget-object v4, v1, Le/a/r1$b;->p:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Le/a/r2/f;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 263
    iget-object v4, v4, Le/a/r1;->c0:Ljavax/inject/Provider;

    .line 264
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    invoke-static {v4}, Le/a/r1;->s8(Le/a/r1;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1}, Le/a/r1$b;->I0()Landroid/app/NotificationManager;

    move-result-object v10

    invoke-virtual {v1}, Le/a/r1$b;->G0()Le/a/v4/m;

    move-result-object v11

    iget-object v4, v1, Le/a/r1$b;->f:Le/a/v4/i;

    .line 265
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v12, Le/a/v4/b0;

    invoke-direct {v12}, Le/a/v4/b0;-><init>()V

    .line 267
    invoke-static {}, Le/a/l4/k;->f0()Le/a/v4/v;

    move-result-object v13

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 268
    iget-object v4, v4, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 269
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Le/a/b0/o/a;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 270
    iget-object v4, v4, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 271
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Le/a/b0/e/r/a;

    invoke-virtual {v1}, Le/a/r1$b;->N0()Le/a/v4/a0;

    move-result-object v16

    invoke-virtual {v1}, Le/a/r1$b;->E0()Le/a/v4/a;

    move-result-object v17

    invoke-virtual {v1}, Le/a/r1$b;->M0()Le/a/p5/h0;

    move-result-object v18

    .line 272
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Le/a/v4/h;

    .line 274
    invoke-interface {v3}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v6

    move-object v4, v1

    invoke-direct/range {v4 .. v18}, Le/a/v4/h;-><init>(Ls1/w/f;Le/a/r2/j;Le/a/r2/f;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;Le/a/v4/l;Le/a/v4/b0;Le/a/v4/v;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/a0;Le/a/v4/a;Le/a/p5/h0;)V

    return-object v1

    .line 275
    :pswitch_23
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 276
    new-instance v2, Le/a/r3/k/g;

    iget-object v3, v1, Le/a/r1$b;->d:Landroid/app/Activity;

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 277
    iget-object v4, v4, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 278
    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 279
    iget-object v1, v1, Le/a/r1;->vi:Ljavax/inject/Provider;

    .line 280
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r3/g;

    invoke-direct {v2, v3, v4, v1}, Le/a/r3/k/g;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/r3/g;)V

    return-object v2

    .line 281
    :pswitch_24
    iget-object v1, v0, Le/a/r1$b$a;->a:Le/a/r1$b;

    .line 282
    new-instance v2, Le/a/o/a/b/g;

    iget-object v3, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 283
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 284
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 285
    invoke-virtual {v4}, Le/a/r1;->va()Le/a/o/p/b/e;

    move-result-object v4

    .line 286
    iget-object v5, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 287
    iget-object v5, v5, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 288
    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1$b;->g:Le/a/r1;

    .line 289
    invoke-virtual {v1}, Le/a/r1;->W9()Le/a/o/h;

    move-result-object v1

    .line 290
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/o/a/b/g;-><init>(Ls1/w/f;Le/a/o/p/b/d;Lo3/a;Le/a/o/f;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
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
