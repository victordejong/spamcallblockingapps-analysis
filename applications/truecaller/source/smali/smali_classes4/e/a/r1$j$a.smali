.class public final Le/a/r1$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$j;
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
.field public final a:Le/a/r1$j;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Le/a/r1$j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 3
    iput p5, p0, Le/a/r1$j$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Le/a/r1$j$a;->b:I

    const-string v2, "TruecallerContract.Profi\u2026tsWithRawContactDataUri()"

    const-string v3, "contentResolver"

    const-string v4, "Cannot return null from a non-@Nullable @Provides method"

    const/4 v5, 0x0

    const-string v6, "fragment"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v2, v1, Le/a/r1$j$a;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    sget v0, Le/a/r/a0/y;->a:I

    .line 4
    sget-object v0, Le/a/r/a0/m;->b:Le/a/r/a0/m$a;

    return-object v0

    .line 5
    :pswitch_1
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 6
    new-instance v12, Le/a/r/a0/j;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 7
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 8
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->Y0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ln3/r/a/l;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 9
    iget-object v5, v2, Le/a/r1;->Z0:Ljavax/inject/Provider;

    .line 10
    iget-object v6, v2, Le/a/r1;->b1:Ljavax/inject/Provider;

    .line 11
    iget-object v2, v0, Le/a/r1$j;->h:Le/a/r1$b;

    invoke-static {v2}, Le/a/r1$b;->B0(Le/a/r1$b;)Le/a/r/c/a0/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 12
    new-instance v8, Le/a/r/c/t;

    iget-object v2, v2, Le/a/r1$b;->g:Le/a/r1;

    .line 13
    iget-object v2, v2, Le/a/r1;->e:Lo3/b/a/c/d/a;

    .line 14
    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Le/a/r/c/t;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object v9, v0, Le/a/r1$j;->b1:Ljavax/inject/Provider;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 16
    iget-object v2, v2, Le/a/r1;->l1:Ljavax/inject/Provider;

    .line 17
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/h5/w;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 18
    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v11

    move-object v2, v12

    .line 19
    invoke-direct/range {v2 .. v11}, Le/a/r/a0/j;-><init>(Ls1/w/f;Ln3/r/a/l;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/r/c/a0/a;Le/a/r/c/t;Ljavax/inject/Provider;Le/a/h5/w;Le/a/p5/a0;)V

    return-object v12

    .line 20
    :pswitch_2
    sget v0, Le/a/r/a0/y;->a:I

    .line 21
    sget-object v0, Le/a/r/a0/e;->e:Le/a/r/a0/e$a;

    return-object v0

    .line 22
    :pswitch_3
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 23
    iget-object v0, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 24
    iget-object v2, v0, Le/a/r1$b;->d:Landroid/app/Activity;

    .line 25
    :try_start_0
    check-cast v2, Ln3/r/a/l;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected activity to be a FragmentActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :pswitch_4
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 29
    new-instance v9, Le/a/r/a0/c;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 30
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 31
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->Y0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ln3/r/a/l;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 32
    invoke-virtual {v2}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v5

    .line 33
    iget-object v6, v0, Le/a/r1$j;->Z0:Ljavax/inject/Provider;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 34
    iget-object v7, v2, Le/a/r1;->b1:Ljavax/inject/Provider;

    .line 35
    iget-object v0, v0, Le/a/r1$j;->h:Le/a/r1$b;

    invoke-static {v0}, Le/a/r1$b;->B0(Le/a/r1$b;)Le/a/r/c/a0/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/r/a0/c;-><init>(Ls1/w/f;Ln3/r/a/l;Le/a/d4/c;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/r/c/a0/a;)V

    return-object v9

    .line 36
    :pswitch_5
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 37
    new-instance v2, Le/a/r/z/e;

    .line 38
    new-instance v3, Le/a/r/z/a0;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 39
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v3, v0}, Le/a/r/z/a0;-><init>(Le/a/u3/g;)V

    .line 41
    invoke-direct {v2, v3}, Le/a/r/z/e;-><init>(Le/a/r/z/a0;)V

    return-object v2

    .line 42
    :pswitch_6
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 43
    new-instance v2, Le/a/r/z/c;

    .line 44
    new-instance v3, Le/a/r/z/a0;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 45
    iget-object v4, v4, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/u3/g;

    invoke-direct {v3, v4}, Le/a/r/z/a0;-><init>(Le/a/u3/g;)V

    .line 47
    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 48
    iget-object v4, v4, Le/a/r1;->n1:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/e/f;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 50
    invoke-virtual {v0}, Le/a/r1;->cb()Le/a/b0/b/f/a;

    move-result-object v0

    .line 51
    invoke-direct {v2, v3, v4, v0}, Le/a/r/z/c;-><init>(Le/a/r/z/a0;Le/a/b0/e/f;Le/a/b0/b/f/a;)V

    return-object v2

    .line 52
    :pswitch_7
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 53
    new-instance v2, Le/a/r/y/f;

    iget-object v0, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 54
    iget-object v0, v0, Le/a/r1$b;->R:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/h;

    invoke-direct {v2, v0}, Le/a/r/y/f;-><init>(Le/a/r/h;)V

    return-object v2

    .line 56
    :pswitch_8
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 57
    new-instance v2, Le/a/r/y/e;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 58
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 59
    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 60
    iget-object v4, v4, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 61
    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v0, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 62
    iget-object v0, v0, Le/a/r1$b;->R:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/h;

    invoke-direct {v2, v3, v4, v0}, Le/a/r/y/e;-><init>(Ls1/w/f;Ls1/w/f;Le/a/r/h;)V

    return-object v2

    .line 64
    :pswitch_9
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget v2, Le/a/r/x/x;->a:I

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->o8(Le/a/r1;)Le/a/b0/g/a;

    move-result-object v0

    const-string v2, "applicationBase"

    .line 67
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Le/a/b0/g/a;->X()Z

    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_a
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 71
    new-instance v2, Le/a/r/w/n;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 72
    iget-object v3, v3, Le/a/r1;->n1:Ljavax/inject/Provider;

    .line 73
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/f;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 74
    iget-object v4, v4, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 75
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/e/r/a;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 76
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v2, v3, v4, v0}, Le/a/r/w/n;-><init>(Le/a/b0/e/f;Le/a/b0/e/r/a;Le/a/u3/g;)V

    return-object v2

    .line 78
    :pswitch_b
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 79
    new-instance v2, Le/a/r/w/l;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 80
    iget-object v3, v3, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/r/a;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 82
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 83
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v2, v3, v0}, Le/a/r/w/l;-><init>(Le/a/b0/e/r/a;Le/a/u3/g;)V

    return-object v2

    .line 84
    :pswitch_c
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 85
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v2, Le/a/r5/a0;

    iget-object v0, v0, Le/a/r1$j;->O0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r5/i;

    invoke-direct {v2, v0}, Le/a/r5/a0;-><init>(Le/a/r5/i;)V

    return-object v2

    .line 87
    :pswitch_d
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 88
    new-instance v4, Le/a/r5/h0;

    iget-object v6, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 89
    iget-object v6, v6, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 90
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/l/p2/v0;

    iget-object v6, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 91
    invoke-virtual {v6}, Le/a/r1;->ed()Le/a/r5/j0;

    move-result-object v8

    .line 92
    iget-object v6, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v6}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v6

    .line 93
    sget v9, Le/a/r5/o0;->a:I

    .line 94
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v9, Le/a/h/b/p;

    invoke-static {}, Le/a/m0/a1$k;->W()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v6, v3, v5}, Le/a/h/b/p;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    .line 96
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 97
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v10

    .line 98
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 99
    iget-object v2, v2, Le/a/r1;->ib:Ljavax/inject/Provider;

    .line 100
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/r5/p0;

    invoke-virtual {v0}, Le/a/r1$j;->I1()Le/a/l/c/a/r;

    move-result-object v12

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 101
    iget-object v2, v2, Le/a/r1;->Ma:Ljavax/inject/Provider;

    .line 102
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/c0/h;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 103
    invoke-virtual {v2}, Le/a/r1;->gd()Le/a/r5/n0;

    move-result-object v14

    .line 104
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 105
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 106
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v15

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Le/a/r5/h0;-><init>(Le/a/l/p2/v0;Le/a/r5/i0;Le/a/h/b/r;Le/a/p5/c0;Le/a/r5/p0;Le/a/l/c/a/r;Le/a/c0/h;Le/a/r5/n0;Ls1/w/f;)V

    return-object v4

    .line 107
    :pswitch_e
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 108
    new-instance v2, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 109
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 110
    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    iget-object v3, v0, Le/a/r1$j;->K0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lq3/a/i0;

    .line 111
    iget-object v3, v0, Le/a/r1$j;->d:Landroidx/fragment/app/Fragment;

    .line 112
    sget v4, Le/a/k/o/d;->a:I

    .line 113
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    check-cast v3, Le/a/k/a/g/f;

    .line 115
    invoke-virtual {v3}, Le/a/k/a/g/f;->QA()Le/a/k/m/k;

    move-result-object v3

    iget-object v10, v3, Le/a/k/m/k;->j:Landroidx/camera/view/PreviewView;

    const-string v3, "binding.previewView"

    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v11, v0, Le/a/r1$j;->d:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 117
    invoke-virtual {v0}, Le/a/r1;->Mc()Le/a/k/c/a;

    move-result-object v12

    move-object v7, v2

    .line 118
    invoke-direct/range {v7 .. v12}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;-><init>(Ls1/w/f;Lq3/a/i0;Landroidx/camera/view/PreviewView;Landroidx/fragment/app/Fragment;Le/a/k/c/s1;)V

    return-object v2

    .line 119
    :pswitch_f
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 120
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 121
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 122
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 123
    sget v2, Le/a/k/o/d;->a:I

    const-string v2, "uiContext"

    .line 124
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 125
    invoke-static {v5, v2, v5}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    invoke-interface {v0, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_10
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 127
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget v2, Le/a/v4/s0/k/c;->a:I

    iget-object v0, v0, Le/a/r1$j;->d:Landroidx/fragment/app/Fragment;

    .line 129
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "key_partner_info"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;

    :cond_0
    return-object v5

    .line 131
    :pswitch_11
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 132
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Le/a/l/c/a/r2;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v0}, Le/a/l/c/a/r2;-><init>(Le/a/l/c/a/l1;)V

    return-object v2

    .line 134
    :pswitch_12
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 135
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Le/a/l/c/a/e0;

    iget-object v3, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/a/l1;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/j2;

    invoke-direct {v2, v3, v0}, Le/a/l/c/a/e0;-><init>(Le/a/l/c/a/l1;Le/a/l/c/a/j2;)V

    return-object v2

    .line 137
    :pswitch_13
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 138
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v2, Le/a/l/c/a/k2;

    iget-object v3, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/a/n1;

    iget-object v4, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l/c/a/j2;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 140
    iget-object v0, v0, Le/a/r1;->g3:Ljavax/inject/Provider;

    .line 141
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/clevertap/CleverTapManager;

    invoke-direct {v2, v3, v4, v0}, Le/a/l/c/a/k2;-><init>(Le/a/l/c/a/n1;Le/a/l/c/a/j2;Lcom/truecaller/clevertap/CleverTapManager;)V

    return-object v2

    .line 142
    :pswitch_14
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 143
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v8, Le/a/l/c/a/h0;

    iget-object v2, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/c/a/e1;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 145
    iget-object v2, v2, Le/a/r1;->Ab:Ljavax/inject/Provider;

    .line 146
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/x/w;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v2}, Le/a/r1;->g8(Le/a/r1;)Le/a/x/h0/a;

    move-result-object v5

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 147
    iget-object v2, v2, Le/a/r1;->Cb:Ljavax/inject/Provider;

    .line 148
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/x/l;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 149
    invoke-virtual {v0}, Le/a/r1;->Jb()Le/a/l/c/n/e;

    move-result-object v7

    move-object v2, v8

    .line 150
    invoke-direct/range {v2 .. v7}, Le/a/l/c/a/h0;-><init>(Le/a/l/c/a/e1;Le/a/x/w;Le/a/x/h0/a;Le/a/x/l;Le/a/l/c/n/d;)V

    return-object v8

    .line 151
    :pswitch_15
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 152
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v2, Le/a/l/c/a/k0;

    iget-object v3, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/a/j2;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v3, v0}, Le/a/l/c/a/k0;-><init>(Le/a/l/c/a/j2;Le/a/l/c/a/l1;)V

    return-object v2

    .line 154
    :pswitch_16
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 155
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v2, Le/a/l/c/a/z2;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v0}, Le/a/l/c/a/z2;-><init>(Le/a/l/c/a/l1;)V

    return-object v2

    .line 157
    :pswitch_17
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 158
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v10, Le/a/l/c/a/u2;

    iget-object v2, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/c/a/s1;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 160
    iget-object v2, v2, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 161
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l/p2/v0;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 162
    iget-object v2, v2, Le/a/r1;->w1:Ljavax/inject/Provider;

    .line 163
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/h0/m;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 164
    iget-object v2, v2, Le/a/r1;->a5:Ljavax/inject/Provider;

    .line 165
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 166
    iget-object v2, v2, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 167
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 168
    iget-object v2, v2, Le/a/r1;->v1:Ljavax/inject/Provider;

    .line 169
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/l/c/a/j2;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/l/c/a/u2;-><init>(Le/a/l/c/a/s1;Le/a/l/p2/v0;Le/a/h0/m;Lo3/a;Lo3/a;Lo3/a;Le/a/l/c/a/j2;)V

    return-object v10

    .line 170
    :pswitch_18
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 171
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v2, Le/a/l/c/a/b3;

    iget-object v3, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/a/a2;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 173
    sget v5, Le/a/r1;->Ni:I

    .line 174
    invoke-virtual {v4}, Le/a/r1;->cd()Le/a/q5/f;

    move-result-object v4

    .line 175
    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 176
    invoke-virtual {v5}, Le/a/r1;->bd()Le/a/q5/k/b;

    move-result-object v5

    .line 177
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 178
    invoke-virtual {v0}, Le/a/r1;->Jb()Le/a/l/c/n/e;

    move-result-object v0

    .line 179
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/l/c/a/b3;-><init>(Le/a/l/c/a/a2;Le/a/q5/d;Le/a/q5/k/a;Le/a/l/c/n/d;)V

    return-object v2

    .line 180
    :pswitch_19
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 181
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v8, Le/a/l/c/a/d;

    iget-object v2, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/c/a/z0;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 183
    iget-object v2, v2, Le/a/r1;->Gb:Ljavax/inject/Provider;

    .line 184
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 185
    iget-object v2, v2, Le/a/r1;->Li:Ljavax/inject/Provider;

    .line 186
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 187
    invoke-virtual {v2}, Le/a/r1;->Jb()Le/a/l/c/n/e;

    move-result-object v6

    .line 188
    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/l/c/a/j2;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/l/c/a/d;-><init>(Le/a/l/c/a/z0;Lo3/a;Lo3/a;Le/a/l/c/n/d;Le/a/l/c/a/j2;)V

    return-object v8

    .line 189
    :pswitch_1a
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 190
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v2, Le/a/l/c/a/g3;

    iget-object v3, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/a/d2;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 192
    iget-object v4, v4, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 193
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l/p2/v0;

    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 194
    iget-object v5, v5, Le/a/r1;->Ci:Ljavax/inject/Provider;

    .line 195
    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/j2;

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/l/c/a/g3;-><init>(Le/a/l/c/a/d2;Le/a/l/p2/v0;Lo3/a;Le/a/l/c/a/j2;)V

    return-object v2

    .line 196
    :pswitch_1b
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 197
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v2, Le/a/l/c/a/x0;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v0}, Le/a/l/c/a/x0;-><init>(Le/a/l/c/a/l1;)V

    return-object v2

    .line 199
    :pswitch_1c
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 200
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Le/a/l/c/a/i0;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v0}, Le/a/l/c/a/i0;-><init>(Le/a/l/c/a/l1;)V

    return-object v2

    .line 202
    :pswitch_1d
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 203
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v2, Le/a/l/c/a/r0;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v0}, Le/a/l/c/a/r0;-><init>(Le/a/l/c/a/l1;)V

    return-object v2

    .line 205
    :pswitch_1e
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 206
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v2, Le/a/l/c/a/s0;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/l1;

    invoke-direct {v2, v0}, Le/a/l/c/a/s0;-><init>(Le/a/l/c/a/l1;)V

    return-object v2

    .line 208
    :pswitch_1f
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v2, Le/a/l/c/a/o0;

    iget-object v0, v0, Le/a/r1$j;->e0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/g2;

    invoke-direct {v2, v0}, Le/a/l/c/a/o0;-><init>(Le/a/l/c/a/g2;)V

    return-object v2

    .line 211
    :pswitch_20
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 212
    new-instance v2, Le/a/l/c/a/w2;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 213
    sget v4, Le/a/r1;->Ni:I

    .line 214
    invoke-virtual {v3}, Le/a/r1;->vc()Le/a/l/a/j0;

    move-result-object v3

    .line 215
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/l/c/a/w2;-><init>(Le/a/l/a/j0;Le/a/p5/h0;)V

    return-object v2

    .line 216
    :pswitch_21
    new-instance v0, Le/a/l/c/m;

    invoke-direct {v0}, Le/a/l/c/m;-><init>()V

    return-object v0

    .line 217
    :pswitch_22
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 218
    new-instance v8, Le/a/l/c/a/n2;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v2}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 219
    iget-object v2, v2, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 220
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l/p2/v0;

    invoke-virtual {v0}, Le/a/r1$j;->H1()Le/a/l/c/a/m;

    move-result-object v5

    iget-object v2, v0, Le/a/r1$j;->a0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/l/c/m;

    iget-object v0, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 221
    invoke-virtual {v0}, Le/a/r1$b;->H0()Le/a/q4/d0;

    move-result-object v7

    move-object v2, v8

    .line 222
    invoke-direct/range {v2 .. v7}, Le/a/l/c/a/n2;-><init>(Le/a/p5/h0;Le/a/l/p2/v0;Le/a/l/c/a/m;Le/a/l/c/m;Le/a/q4/d0;)V

    return-object v8

    .line 223
    :pswitch_23
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 224
    new-instance v2, Le/a/l/c/a/w0;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 225
    iget-object v3, v3, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 226
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 227
    iget-object v4, v4, Le/a/r1;->Ma:Ljavax/inject/Provider;

    .line 228
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c0/h;

    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 229
    iget-object v5, v5, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 230
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/p2/v0;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 231
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 232
    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/l/c/a/w0;-><init>(Le/a/u3/g;Le/a/c0/h;Le/a/l/p2/v0;Ls1/w/f;)V

    return-object v2

    .line 233
    :pswitch_24
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 234
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v2, Le/a/l/c/a/i3/c;

    .line 236
    new-instance v3, Le/a/l/c/a/i3/f;

    new-instance v4, Le/a/l/c/a/i3/d;

    invoke-direct {v4}, Le/a/l/c/a/i3/d;-><init>()V

    invoke-direct {v3, v4}, Le/a/l/c/a/i3/f;-><init>(Le/a/l/c/a/i3/d;)V

    .line 237
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 238
    iget-object v0, v0, Le/a/r1;->Ma:Ljavax/inject/Provider;

    .line 239
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c0/h;

    invoke-direct {v2, v3, v0}, Le/a/l/c/a/i3/c;-><init>(Le/a/l/c/a/i3/f;Le/a/c0/h;)V

    return-object v2

    .line 240
    :pswitch_25
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 241
    invoke-virtual {v0}, Le/a/r1$j;->J1()Le/a/l/c/a/g0;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_26
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 243
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    sget v4, Le/a/l/c/g;->a:I

    .line 245
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v3, Le/a/h/b/p;

    invoke-static {}, Le/a/m0/a1$k;->W()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0, v4, v5}, Le/a/h/b/p;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v3

    .line 247
    :pswitch_27
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 248
    new-instance v2, Le/a/l/c/a/d3;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 249
    sget v3, Le/a/r1;->Ni:I

    .line 250
    invoke-virtual {v0}, Le/a/r1;->cd()Le/a/q5/f;

    move-result-object v0

    .line 251
    invoke-direct {v2, v0}, Le/a/l/c/a/d3;-><init>(Le/a/q5/d;)V

    return-object v2

    .line 252
    :pswitch_28
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 253
    new-instance v2, Le/a/l/c/a/e;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 254
    iget-object v0, v0, Le/a/r1;->Gb:Ljavax/inject/Provider;

    .line 255
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/c;

    invoke-direct {v2, v0}, Le/a/l/c/a/e;-><init>(Le/a/s2/c;)V

    return-object v2

    .line 256
    :pswitch_29
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 257
    new-instance v2, Le/a/l/c/a/f3;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 258
    sget v4, Le/a/r1;->Ni:I

    .line 259
    invoke-virtual {v3}, Le/a/r1;->ed()Le/a/r5/j0;

    move-result-object v3

    .line 260
    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 261
    iget-object v4, v4, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 262
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l/p2/v0;

    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 263
    invoke-virtual {v5}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v5

    .line 264
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 265
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 266
    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/l/c/a/f3;-><init>(Le/a/r5/i0;Le/a/l/p2/v0;Le/a/p5/c0;Ls1/w/f;)V

    return-object v2

    .line 267
    :pswitch_2a
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 268
    new-instance v47, Le/a/l/c/j;

    move-object/from16 v2, v47

    iget-object v3, v0, Le/a/r1$j;->F:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/PremiumLaunchContext;

    iget-object v4, v0, Le/a/r1$j;->G:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 269
    iget-object v5, v5, Le/a/r1;->sb:Ljavax/inject/Provider;

    .line 270
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/p2/r0;

    iget-object v6, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 271
    iget-object v6, v6, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 272
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/p2/v0;

    iget-object v7, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 273
    iget-object v7, v7, Le/a/r1;->Hb:Ljavax/inject/Provider;

    .line 274
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l/p2/a1;

    iget-object v8, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 275
    iget-object v8, v8, Le/a/r1;->Na:Ljavax/inject/Provider;

    .line 276
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l/c2;

    .line 277
    new-instance v10, Le/a/x/k;

    move-object v9, v10

    iget-object v11, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v11}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Le/a/x/k;-><init>(Landroid/content/Context;)V

    .line 278
    iget-object v10, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 279
    iget-object v10, v10, Le/a/r1;->Cb:Ljavax/inject/Provider;

    .line 280
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/x/l;

    iget-object v11, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v11}, Le/a/r1;->g8(Le/a/r1;)Le/a/x/h0/a;

    move-result-object v11

    iget-object v12, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 281
    iget-object v12, v12, Le/a/r1;->Ab:Ljavax/inject/Provider;

    .line 282
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/x/w;

    iget-object v13, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 283
    iget-object v13, v13, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 284
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/z4/d;

    iget-object v14, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 285
    iget-object v14, v14, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 286
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/b0/o/a;

    iget-object v15, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 287
    iget-object v15, v15, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 288
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/q2/a;

    iget-object v1, v0, Le/a/r1$j;->R:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Le/a/l/p2/d1;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v17

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 289
    invoke-virtual {v1}, Le/a/r1;->Fb()Le/a/l/o0;

    move-result-object v18

    .line 290
    iget-object v1, v0, Le/a/r1$j;->I:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Le/a/l/o2/e;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 291
    invoke-virtual {v1}, Le/a/r1;->N9()Le/a/l/o2/c;

    move-result-object v20

    .line 292
    iget-object v1, v0, Le/a/r1$j;->J:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Le/a/l/p2/q0;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 293
    iget-object v1, v1, Le/a/r1;->zf:Ljavax/inject/Provider;

    .line 294
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Le/a/l/a/c0;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->x1()Le/a/l/a/p;

    move-result-object v23

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 295
    invoke-virtual {v1}, Le/a/r1;->Gb()Le/a/l/p2/e0;

    move-result-object v24

    .line 296
    iget-object v1, v0, Le/a/r1$j;->S:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v25

    iget-object v1, v0, Le/a/r1$j;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v26

    iget-object v1, v0, Le/a/r1$j;->U:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v27

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 297
    invoke-virtual {v1}, Le/a/r1;->cd()Le/a/q5/f;

    move-result-object v28

    .line 298
    iget-object v1, v0, Le/a/r1$j;->V:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Le/a/h/b/r;

    invoke-virtual {v0}, Le/a/r1$j;->P1()Le/a/l/c/a/t2;

    move-result-object v30

    iget-object v1, v0, Le/a/r1$j;->W:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v31

    iget-object v1, v0, Le/a/r1$j;->N:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Le/a/l/v2/i/a/c;

    iget-object v1, v0, Le/a/r1$j;->O:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Le/a/l/v2/i/a/f;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 299
    invoke-virtual {v1}, Le/a/r1;->ra()Le/a/l/g/t;

    move-result-object v34

    .line 300
    new-instance v48, Le/a/l/c/a/s;

    move-object/from16 v35, v48

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 301
    iget-object v1, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 302
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Le/a/l/p2/v0;

    iget-object v1, v0, Le/a/r1$j;->Y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Le/a/l/c/a/i3/b;

    invoke-virtual {v0}, Le/a/r1$j;->I1()Le/a/l/c/a/r;

    move-result-object v51

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 303
    invoke-virtual {v1}, Le/a/r1;->qa()Le/a/l/p2/o;

    move-result-object v52

    .line 304
    iget-object v1, v0, Le/a/r1$j;->S:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v53

    iget-object v1, v0, Le/a/r1$j;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v54

    iget-object v1, v0, Le/a/r1$j;->U:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v55

    iget-object v1, v0, Le/a/r1$j;->Z:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v56

    invoke-virtual {v0}, Le/a/r1$j;->P1()Le/a/l/c/a/t2;

    move-result-object v57

    invoke-virtual {v0}, Le/a/r1$j;->J1()Le/a/l/c/a/g0;

    move-result-object v58

    .line 305
    new-instance v36, Le/a/l/c/a/y2;

    move-object/from16 v59, v36

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 306
    iget-object v1, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 307
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Le/a/b0/o/a;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 308
    iget-object v1, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 309
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Le/a/b0/e/r/a;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 310
    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v39

    .line 311
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 312
    iget-object v1, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 313
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Le/a/l/p2/v0;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 314
    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v41

    .line 315
    invoke-direct/range {v36 .. v41}, Le/a/l/c/a/y2;-><init>(Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/o5/f0;Le/a/l/p2/v0;Le/a/p5/c0;)V

    .line 316
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 317
    invoke-virtual {v1}, Le/a/r1;->ra()Le/a/l/g/t;

    move-result-object v60

    .line 318
    new-instance v36, Le/a/l/c/a/m2;

    move-object/from16 v61, v36

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 319
    sget v37, Le/a/r1;->Ni:I

    .line 320
    invoke-virtual {v1}, Le/a/r1;->ra()Le/a/l/g/t;

    move-result-object v37

    .line 321
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 322
    iget-object v1, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 323
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Le/a/l/p2/v0;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->i8(Le/a/r1;)Le/a/l/a/l0;

    move-result-object v39

    invoke-virtual {v0}, Le/a/r1$j;->I1()Le/a/l/c/a/r;

    move-result-object v40

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->j8(Le/a/r1;)Le/a/l/a/d;

    move-result-object v41

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v42

    invoke-direct/range {v36 .. v42}, Le/a/l/c/a/m2;-><init>(Le/a/l/g/t;Le/a/l/p2/v0;Le/a/l/a/l0;Le/a/l/c/a/r;Le/a/l/a/c;Le/a/p5/h0;)V

    .line 324
    new-instance v1, Le/a/l/c/a/m0;

    move-object/from16 v62, v1

    move-object/from16 v69, v2

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 325
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    move-object/from16 v70, v3

    .line 326
    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v3}, Le/a/r1;->j8(Le/a/r1;)Le/a/l/a/d;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/m0;-><init>(Le/a/p5/c0;Le/a/l/a/c;)V

    .line 327
    new-instance v36, Le/a/l/c/a/d0;

    move-object/from16 v63, v36

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 328
    new-instance v2, Le/a/l/a/f;

    iget-object v1, v1, Le/a/r1;->H0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p4/b;

    invoke-direct {v2, v1}, Le/a/l/a/f;-><init>(Le/a/p4/b;)V

    .line 329
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 330
    invoke-virtual {v1}, Le/a/r1;->Qb()Le/a/l/p2/i1;

    move-result-object v38

    .line 331
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 332
    iget-object v1, v1, Le/a/r1;->H0:Ljavax/inject/Provider;

    .line 333
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Le/a/p4/b;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v40

    invoke-virtual {v0}, Le/a/r1$j;->I1()Le/a/l/c/a/r;

    move-result-object v41

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->j8(Le/a/r1;)Le/a/l/a/d;

    move-result-object v42

    move-object/from16 v37, v2

    invoke-direct/range {v36 .. v42}, Le/a/l/c/a/d0;-><init>(Le/a/l/a/f;Le/a/l/p2/i1;Le/a/p4/b;Le/a/p5/h0;Le/a/l/c/a/r;Le/a/l/a/c;)V

    .line 334
    new-instance v1, Le/a/l/c/a/c0;

    move-object/from16 v64, v1

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v2}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v2

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 335
    iget-object v3, v3, Le/a/r1;->H0:Ljavax/inject/Provider;

    .line 336
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p4/b;

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/c0;-><init>(Le/a/p5/h0;Le/a/p4/b;)V

    .line 337
    new-instance v1, Le/a/l/c/a/q2;

    move-object/from16 v65, v1

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 338
    invoke-virtual {v3}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    move-object/from16 v71, v4

    .line 339
    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 340
    iget-object v4, v4, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 341
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l/p2/v0;

    move-object/from16 v72, v5

    iget-object v5, v0, Le/a/r1$j;->Y:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/c/a/i3/b;

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/l/c/a/q2;-><init>(Landroid/content/Context;Le/a/p5/c0;Le/a/l/p2/v0;Le/a/l/c/a/i3/b;)V

    .line 342
    iget-object v1, v0, Le/a/r1$j;->b0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v66, v1

    check-cast v66, Le/a/l/c/a/n2;

    iget-object v1, v0, Le/a/r1$j;->c0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v67, v1

    check-cast v67, Le/a/l/c/a/w2;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 343
    invoke-virtual {v1}, Le/a/r1;->Jb()Le/a/l/c/n/e;

    move-result-object v68

    .line 344
    invoke-direct/range {v48 .. v68}, Le/a/l/c/a/s;-><init>(Le/a/l/p2/v0;Le/a/l/c/a/i3/b;Le/a/l/c/a/r;Le/a/l/p2/o;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/l/c/a/t2;Le/a/l/c/a/g0;Le/a/l/c/a/y2;Le/a/l/g/t;Le/a/l/c/a/m2;Le/a/l/c/a/m0;Le/a/l/c/a/d0;Le/a/l/c/a/c0;Le/a/l/c/a/q2;Le/a/l/c/a/n2;Le/a/l/c/a/w2;Le/a/l/c/n/d;)V

    .line 345
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->i8(Le/a/r1;)Le/a/l/a/l0;

    move-result-object v36

    invoke-virtual {v0}, Le/a/r1$j;->Q1()Le/a/l/a/k0;

    move-result-object v37

    invoke-virtual {v0}, Le/a/r1$j;->M1()Le/a/l/o1;

    move-result-object v38

    invoke-virtual {v0}, Le/a/r1$j;->H1()Le/a/l/c/a/m;

    move-result-object v39

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 346
    invoke-virtual {v1}, Le/a/r1;->Jb()Le/a/l/c/n/e;

    move-result-object v40

    .line 347
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 348
    iget-object v1, v1, Le/a/r1;->Ma:Ljavax/inject/Provider;

    .line 349
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v41, v1

    check-cast v41, Le/a/c0/h;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 350
    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 351
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/r1$j;->L1()Le/a/l/p2/y;

    move-result-object v43

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 352
    invoke-virtual {v1}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v44

    .line 353
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 354
    invoke-virtual {v1}, Le/a/r1;->ad()Le/a/l/p2/t1;

    move-result-object v45

    .line 355
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 356
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 357
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v46

    move-object/from16 v2, v69

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v5, v72

    invoke-direct/range {v2 .. v46}, Le/a/l/c/j;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/p2/r0;Le/a/l/p2/v0;Le/a/l/p2/a1;Le/a/l/c2;Le/a/x/k;Le/a/x/l;Le/a/x/h0/a;Le/a/x/w;Le/a/z4/d;Le/a/b0/o/a;Le/a/q2/a;Le/a/l/p2/d1;Le/a/p5/h0;Le/a/l/n0;Le/a/l/o2/e;Le/a/l/o2/c;Le/a/l/p2/q0;Le/a/l/a/c0;Le/a/l/a/p;Le/a/l/p2/e0;Lo3/a;Lo3/a;Lo3/a;Le/a/q5/d;Le/a/h/b/r;Le/a/l/c/a/t2;Lo3/a;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/g/t;Le/a/l/c/a/s;Le/a/l/a/l0;Le/a/l/a/k0;Le/a/l/o1;Le/a/l/c/a/m;Le/a/l/c/n/d;Le/a/c0/h;Le/a/u3/g;Le/a/l/p2/y;Le/a/l/u2/a;Le/a/l/p2/t1;Ls1/w/f;)V

    return-object v47

    .line 358
    :pswitch_2b
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 359
    new-instance v2, Le/a/l/v2/i/a/f;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 360
    sget v4, Le/a/r1;->Ni:I

    .line 361
    invoke-virtual {v3}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    .line 362
    invoke-static {}, Le/a/c/p/a;->i2()Le/a/l/a/e0;

    move-result-object v4

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 363
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 364
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v2, v3, v4, v0}, Le/a/l/v2/i/a/f;-><init>(Le/a/p5/c0;Le/a/l/a/e0;Le/a/u3/g;)V

    return-object v2

    .line 365
    :pswitch_2c
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 366
    new-instance v2, Le/a/l/v2/i/a/c;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 367
    sget v4, Le/a/r1;->Ni:I

    .line 368
    invoke-virtual {v3}, Le/a/r1;->la()Le/a/l/s2/b;

    move-result-object v3

    .line 369
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v0

    invoke-static {}, Le/a/c/p/a;->i2()Le/a/l/a/e0;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Le/a/l/v2/i/a/c;-><init>(Le/a/l/s2/a;Le/a/p5/h0;Le/a/l/a/e0;)V

    return-object v2

    .line 370
    :pswitch_2d
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 371
    new-instance v2, Le/a/l/m1;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 372
    iget-object v3, v3, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 373
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/q2/a;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 374
    iget-object v4, v4, Le/a/r1;->w1:Ljavax/inject/Provider;

    .line 375
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h0/m;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->D()Ln3/m0/y;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/l/m1;-><init>(Le/a/q2/a;Le/a/h0/m;Ln3/m0/y;)V

    return-object v2

    .line 376
    :pswitch_2e
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 377
    new-instance v2, Le/a/l/m2/c;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v3}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v3

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 378
    iget-object v0, v0, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 379
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/v0;

    invoke-direct {v2, v3, v0}, Le/a/l/m2/c;-><init>(Le/a/p5/h0;Le/a/l/p2/v0;)V

    return-object v2

    .line 380
    :pswitch_2f
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 381
    new-instance v12, Le/a/l/p2/q0;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 382
    sget v3, Le/a/r1;->Ni:I

    .line 383
    invoke-virtual {v2}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v3

    .line 384
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 385
    invoke-virtual {v2}, Le/a/r1;->Zc()Le/a/l/n2/h;

    move-result-object v4

    .line 386
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 387
    iget-object v2, v2, Le/a/r1;->ub:Ljavax/inject/Provider;

    .line 388
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/l/n2/e;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 389
    iget-object v2, v2, Le/a/r1;->yb:Ljavax/inject/Provider;

    .line 390
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/l/p2/a;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 391
    iget-object v2, v2, Le/a/r1;->wb:Ljavax/inject/Provider;

    .line 392
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    .line 393
    iget-object v2, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 394
    iget-object v2, v2, Le/a/r1$b;->d:Landroid/app/Activity;

    .line 395
    sget v8, Le/a/l/r;->a:I

    const-string v8, "activity"

    .line 396
    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    new-instance v8, Le/a/l/q;

    invoke-direct {v8, v2}, Le/a/l/q;-><init>(Landroid/app/Activity;)V

    .line 398
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 399
    iget-object v2, v2, Le/a/r1;->zb:Ljavax/inject/Provider;

    .line 400
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/l/p2/s;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 401
    invoke-virtual {v2}, Le/a/r1;->ra()Le/a/l/g/t;

    move-result-object v10

    .line 402
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 403
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 404
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Le/a/l/p2/q0;-><init>(Le/a/l/u2/a;Le/a/l/n2/g;Le/a/l/n2/e;Le/a/l/p2/a;Lo3/a;Le/a/l/p2/q0$a;Le/a/l/p2/s;Le/a/l/g/t;Ls1/w/f;)V

    return-object v12

    .line 405
    :pswitch_30
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 406
    new-instance v2, Le/a/l/o2/e;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v3}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v3

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 407
    iget-object v4, v4, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 408
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l/p2/v0;

    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 409
    iget-object v5, v5, Le/a/r1;->Na:Ljavax/inject/Provider;

    .line 410
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/c2;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 411
    invoke-virtual {v0}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v0

    .line 412
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/l/o2/e;-><init>(Le/a/p5/h0;Le/a/l/p2/v0;Le/a/l/c2;Le/a/l/u2/a;)V

    return-object v2

    .line 413
    :pswitch_31
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 414
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget v2, Le/a/l/p;->a:I

    iget-object v0, v0, Le/a/r1$j;->d:Landroidx/fragment/app/Fragment;

    .line 416
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    check-cast v0, Le/a/l/q2/b;

    invoke-interface {v0}, Le/a/l/q2/b;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    :pswitch_32
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 419
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget v2, Le/a/l/p;->a:I

    iget-object v0, v0, Le/a/r1$j;->d:Landroidx/fragment/app/Fragment;

    .line 421
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    instance-of v2, v0, Le/a/l/q2/c;

    if-nez v2, :cond_1

    move-object v0, v5

    :cond_1
    check-cast v0, Le/a/l/q2/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/l/q2/c;->rw()Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    move-result-object v5

    :cond_2
    return-object v5

    .line 423
    :pswitch_33
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 424
    iget-object v0, v0, Le/a/r1$j;->d:Landroidx/fragment/app/Fragment;

    .line 425
    sget v2, Le/a/l/p;->a:I

    .line 426
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    check-cast v0, Le/a/l/q2/a;

    invoke-interface {v0}, Le/a/l/q2/a;->k7()Lcom/truecaller/premium/PremiumLaunchContext;

    move-result-object v0

    .line 428
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 429
    :pswitch_34
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 430
    new-instance v35, Le/a/l/e;

    move-object/from16 v2, v35

    iget-object v3, v0, Le/a/r1$j;->F:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/PremiumLaunchContext;

    iget-object v4, v0, Le/a/r1$j;->G:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    iget-object v5, v0, Le/a/r1$j;->H:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 431
    iget-object v6, v6, Le/a/r1;->sb:Ljavax/inject/Provider;

    .line 432
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/p2/r0;

    iget-object v7, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 433
    iget-object v7, v7, Le/a/r1;->x1:Ljavax/inject/Provider;

    .line 434
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l/p2/v0;

    iget-object v8, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 435
    iget-object v8, v8, Le/a/r1;->Hb:Ljavax/inject/Provider;

    .line 436
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l/p2/a1;

    iget-object v9, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 437
    iget-object v9, v9, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 438
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/z4/d;

    iget-object v10, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 439
    iget-object v10, v10, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 440
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/b0/o/a;

    iget-object v11, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 441
    iget-object v11, v11, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 442
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/q2/a;

    iget-object v12, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 443
    iget-object v12, v12, Le/a/r1;->Jb:Ljavax/inject/Provider;

    .line 444
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/l/p2/d1;

    iget-object v13, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v13}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v13

    iget-object v14, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 445
    invoke-virtual {v14}, Le/a/r1;->Fb()Le/a/l/o0;

    move-result-object v14

    .line 446
    iget-object v15, v0, Le/a/r1$j;->I:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/l/o2/e;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 447
    invoke-virtual {v1}, Le/a/r1;->N9()Le/a/l/o2/c;

    move-result-object v16

    .line 448
    iget-object v1, v0, Le/a/r1$j;->J:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Le/a/l/p2/q0;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 449
    iget-object v1, v1, Le/a/r1;->zf:Ljavax/inject/Provider;

    .line 450
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Le/a/l/a/c0;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->x1()Le/a/l/a/p;

    move-result-object v19

    iget-object v1, v0, Le/a/r1$j;->K:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Le/a/l/m2/c;

    iget-object v1, v0, Le/a/r1$j;->M:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Le/a/l/l1;

    iget-object v1, v0, Le/a/r1$j;->N:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Le/a/l/v2/i/a/c;

    iget-object v1, v0, Le/a/r1$j;->O:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Le/a/l/v2/i/a/f;

    invoke-virtual {v0}, Le/a/r1$j;->Q1()Le/a/l/a/k0;

    move-result-object v24

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->i8(Le/a/r1;)Le/a/l/a/l0;

    move-result-object v25

    invoke-virtual {v0}, Le/a/r1$j;->L1()Le/a/l/p2/y;

    move-result-object v26

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 451
    invoke-virtual {v1}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v27

    .line 452
    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 453
    invoke-virtual {v1}, Le/a/r1;->ad()Le/a/l/p2/t1;

    move-result-object v28

    .line 454
    invoke-virtual {v0}, Le/a/r1$j;->M1()Le/a/l/o1;

    move-result-object v29

    iget-object v1, v0, Le/a/r1$j;->h:Le/a/r1$b;

    invoke-static {v1}, Le/a/r1$b;->z0(Le/a/r1$b;)Le/a/l/a/n;

    move-result-object v30

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 455
    iget-object v1, v1, Le/a/r1;->Na:Ljavax/inject/Provider;

    .line 456
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Le/a/l/c2;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 457
    iget-object v1, v1, Le/a/r1;->Ma:Ljavax/inject/Provider;

    .line 458
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Le/a/c0/h;

    iget-object v1, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 459
    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 460
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Le/a/u3/g;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 461
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 462
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v34

    invoke-direct/range {v2 .. v34}, Le/a/l/e;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Ljava/lang/String;Le/a/l/p2/r0;Le/a/l/p2/v0;Le/a/l/p2/a1;Le/a/z4/d;Le/a/b0/o/a;Le/a/q2/a;Le/a/l/p2/d1;Le/a/p5/h0;Le/a/l/n0;Le/a/l/o2/e;Le/a/l/o2/c;Le/a/l/p2/q0;Le/a/l/a/c0;Le/a/l/a/p;Le/a/l/m2/c;Le/a/l/l1;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/a/k0;Le/a/l/a/l0;Le/a/l/p2/y;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/l/o1;Le/a/l/a/n;Le/a/l/c2;Le/a/c0/h;Le/a/u3/g;Ls1/w/f;)V

    return-object v35

    .line 463
    :pswitch_35
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 464
    new-instance v8, Le/a/a/o/r/i;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 465
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 466
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 467
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 468
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 469
    iget-object v2, v2, Le/a/r1;->c9:Ljavax/inject/Provider;

    .line 470
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/g1/b;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 471
    new-instance v6, Le/a/a/o/j;

    iget-object v7, v2, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v7}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v7

    iget-object v2, v2, Le/a/r1;->c9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g1/b;

    invoke-direct {v6, v7, v2}, Le/a/a/o/j;-><init>(Landroid/content/Context;Le/a/a/g1/b;)V

    .line 472
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 473
    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 474
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/q2/a;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/o/r/i;-><init>(Ls1/w/f;Ls1/w/f;Le/a/a/g1/b;Le/a/a/o/f;Le/a/q2/a;)V

    return-object v8

    .line 475
    :pswitch_36
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 476
    new-instance v9, Le/a/o/a/a/b/g;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 477
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 478
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 479
    invoke-virtual {v2}, Le/a/r1;->W9()Le/a/o/h;

    move-result-object v4

    .line 480
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 481
    invoke-virtual {v2}, Le/a/r1;->C9()Le/a/o/b/c;

    move-result-object v5

    .line 482
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 483
    invoke-virtual {v2}, Le/a/r1;->Db()Le/a/o/p/e/g/d;

    move-result-object v6

    .line 484
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 485
    iget-object v2, v2, Le/a/r1;->Ki:Ljavax/inject/Provider;

    .line 486
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 487
    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 488
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/o/a/a/b/g;-><init>(Ls1/w/f;Le/a/o/f;Le/a/o/b/b;Le/a/o/p/e/g/c;Lo3/a;Lo3/a;)V

    return-object v9

    .line 489
    :pswitch_37
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 490
    new-instance v10, Le/a/o/a/a/a/h;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 491
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 492
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 493
    invoke-virtual {v2}, Le/a/r1;->W9()Le/a/o/h;

    move-result-object v4

    .line 494
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 495
    invoke-virtual {v2}, Le/a/r1;->C9()Le/a/o/b/c;

    move-result-object v5

    .line 496
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 497
    invoke-virtual {v2}, Le/a/r1;->G9()Le/a/o/p/e/f;

    move-result-object v6

    .line 498
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 499
    invoke-virtual {v2}, Le/a/r1;->va()Le/a/o/p/b/e;

    move-result-object v7

    .line 500
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 501
    iget-object v2, v2, Le/a/r1;->P5:Ljavax/inject/Provider;

    .line 502
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/o/b/o;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 503
    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 504
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/o/a/a/a/h;-><init>(Ls1/w/f;Le/a/o/f;Le/a/o/b/b;Le/a/o/p/e/e;Le/a/o/p/b/d;Le/a/o/b/o;Lo3/a;)V

    return-object v10

    .line 505
    :pswitch_38
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 506
    new-instance v2, Le/a/o/a/c/n/f;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 507
    sget v4, Le/a/r1;->Ni:I

    .line 508
    invoke-virtual {v3}, Le/a/r1;->V9()Le/a/o/b/l;

    move-result-object v3

    .line 509
    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 510
    iget-object v4, v4, Le/a/r1;->Z0:Ljavax/inject/Provider;

    .line 511
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/e4/p;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 512
    iget-object v0, v0, Le/a/r1;->Ki:Ljavax/inject/Provider;

    .line 513
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/o/a/c/n/f;-><init>(Le/a/o/b/k;Le/a/e4/p;Lo3/a;)V

    return-object v2

    .line 514
    :pswitch_39
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 515
    new-instance v9, Le/a/o/a/c/i;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 516
    sget v3, Le/a/r1;->Ni:I

    .line 517
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    .line 518
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 519
    invoke-virtual {v2}, Le/a/r1;->G9()Le/a/o/p/e/f;

    move-result-object v4

    .line 520
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 521
    invoke-virtual {v2}, Le/a/r1;->U9()Le/a/o/b/g;

    move-result-object v5

    .line 522
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 523
    invoke-virtual {v2}, Le/a/r1;->V9()Le/a/o/b/l;

    move-result-object v6

    .line 524
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 525
    iget-object v2, v2, Le/a/r1;->Ki:Ljavax/inject/Provider;

    .line 526
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 527
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 528
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/o/a/c/i;-><init>(Le/a/p5/c0;Le/a/o/p/e/e;Le/a/o/b/f;Le/a/o/b/k;Lo3/a;Ls1/w/f;)V

    return-object v9

    .line 529
    :pswitch_3a
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 530
    new-instance v2, Le/a/o/a/b/k/e;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 531
    iget-object v3, v3, Le/a/r1;->P5:Ljavax/inject/Provider;

    .line 532
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/o/b/o;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 533
    invoke-virtual {v0}, Le/a/r1;->W9()Le/a/o/h;

    move-result-object v0

    .line 534
    invoke-direct {v2, v3, v0}, Le/a/o/a/b/k/e;-><init>(Le/a/o/b/o;Le/a/o/f;)V

    return-object v2

    .line 535
    :pswitch_3b
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 536
    new-instance v2, Le/a/o/a/h/j;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 537
    iget-object v3, v3, Le/a/r1;->n1:Ljavax/inject/Provider;

    .line 538
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/f;

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 539
    invoke-virtual {v4}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v4

    .line 540
    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 541
    iget-object v5, v5, Le/a/r1;->P5:Ljavax/inject/Provider;

    .line 542
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/o/b/o;

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 543
    iget-object v0, v0, Le/a/r1;->Ki:Ljavax/inject/Provider;

    .line 544
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/o/a/h/j;-><init>(Le/a/b0/e/f;Le/a/p5/c0;Le/a/o/b/o;Lo3/a;)V

    return-object v2

    .line 545
    :pswitch_3c
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 546
    new-instance v14, Le/a/o/a/g/j/l;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 547
    sget v3, Le/a/r1;->Ni:I

    .line 548
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    .line 549
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 550
    invoke-virtual {v2}, Le/a/r1;->W9()Le/a/o/h;

    move-result-object v4

    .line 551
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 552
    invoke-virtual {v2}, Le/a/r1;->C9()Le/a/o/b/c;

    move-result-object v5

    .line 553
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 554
    iget-object v2, v2, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 555
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 556
    invoke-virtual {v2}, Le/a/r1;->Db()Le/a/o/p/e/g/d;

    move-result-object v7

    .line 557
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 558
    iget-object v2, v2, Le/a/r1;->g6:Ljavax/inject/Provider;

    .line 559
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/o/b/t;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 560
    iget-object v2, v2, Le/a/r1;->n1:Ljavax/inject/Provider;

    .line 561
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/b0/e/f;

    iget-object v2, v0, Le/a/r1$j;->h:Le/a/r1$b;

    .line 562
    new-instance v10, Le/a/p5/w0/a;

    iget-object v2, v2, Le/a/r1$b;->d:Landroid/app/Activity;

    invoke-direct {v10, v2}, Le/a/p5/w0/a;-><init>(Landroid/content/Context;)V

    .line 563
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 564
    iget-object v2, v2, Le/a/r1;->P5:Ljavax/inject/Provider;

    .line 565
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/o/b/o;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 566
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 567
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v12

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 568
    invoke-virtual {v0}, Le/a/r1;->bc()Le/a/o/b/o0;

    move-result-object v13

    move-object v2, v14

    .line 569
    invoke-direct/range {v2 .. v13}, Le/a/o/a/g/j/l;-><init>(Le/a/p5/c0;Le/a/o/f;Le/a/o/b/b;Lo3/a;Le/a/o/p/e/g/c;Le/a/o/b/t;Le/a/b0/e/f;Le/a/p5/w0/a;Le/a/o/b/o;Ls1/w/f;Le/a/o/b/n0;)V

    return-object v14

    .line 570
    :pswitch_3d
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 571
    new-instance v2, Le/a/o/a/g/h/e;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 572
    sget v4, Le/a/r1;->Ni:I

    .line 573
    invoke-virtual {v3}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    .line 574
    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 575
    invoke-virtual {v4}, Le/a/r1;->G9()Le/a/o/p/e/f;

    move-result-object v4

    .line 576
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 577
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 578
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/o/a/g/h/e;-><init>(Le/a/p5/c0;Le/a/o/p/e/e;Ls1/w/f;)V

    return-object v2

    .line 579
    :pswitch_3e
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 580
    new-instance v2, Le/a/o/a/g/g/e;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 581
    sget v4, Le/a/r1;->Ni:I

    .line 582
    invoke-virtual {v3}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    .line 583
    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 584
    invoke-virtual {v4}, Le/a/r1;->G9()Le/a/o/p/e/f;

    move-result-object v4

    .line 585
    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 586
    iget-object v5, v5, Le/a/r1;->g0:Ljavax/inject/Provider;

    .line 587
    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 588
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 589
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/o/a/g/g/e;-><init>(Le/a/p5/c0;Le/a/o/p/e/e;Lo3/a;Ls1/w/f;)V

    return-object v2

    .line 590
    :pswitch_3f
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 591
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v8, Le/a/b/j/b;

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 593
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 594
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 595
    invoke-virtual {v2}, Le/a/r1;->Xb()Le/a/x4/h;

    move-result-object v4

    .line 596
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 597
    invoke-virtual {v2}, Le/a/r1;->y9()Le/a/x4/b;

    move-result-object v5

    .line 598
    iget-object v2, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 599
    invoke-virtual {v2}, Le/a/r1;->z9()Le/a/b/j/d;

    move-result-object v6

    .line 600
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 601
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 602
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/u3/g;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/b/j/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/a;Le/a/b/j/c;Le/a/u3/g;)V

    return-object v8

    .line 603
    :pswitch_40
    iget-object v0, v1, Le/a/r1$j$a;->a:Le/a/r1$j;

    .line 604
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v2, Le/a/x4/l/b;

    iget-object v3, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 606
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 607
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 608
    invoke-virtual {v4}, Le/a/r1;->Xb()Le/a/x4/h;

    move-result-object v4

    .line 609
    iget-object v5, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 610
    invoke-virtual {v5}, Le/a/r1;->Wb()Le/a/x4/f;

    move-result-object v5

    .line 611
    iget-object v0, v0, Le/a/r1$j;->f:Le/a/r1;

    .line 612
    invoke-virtual {v0}, Le/a/r1;->Zb()Le/a/x4/l/d;

    move-result-object v0

    .line 613
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/x4/l/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/e;Le/a/x4/l/c;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
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
