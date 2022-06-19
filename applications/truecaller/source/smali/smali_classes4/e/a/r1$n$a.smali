.class public final Le/a/r1$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$n;
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
.field public final a:Le/a/r1$n;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 3
    iput p3, p0, Le/a/r1$n$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$n$a;->b:I

    const/4 v2, 0x0

    const-string v3, "callInfoRepository"

    const-string v4, "Cannot return null from a non-@Nullable @Provides method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$n$a;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 4
    new-instance v2, Le/a/d/w/j/r;

    iget-object v3, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    iget-object v1, v1, Le/a/r1$n;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/w/j/m;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/w/j/r;-><init>(Lq3/a/i0;Le/a/d/c0/z1/i;Le/a/d/w/j/m;)V

    return-object v2

    .line 5
    :pswitch_1
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 6
    new-instance v2, Le/a/d/w/j/h0;

    iget-object v3, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$n;->j:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/x/r/h;

    iget-object v1, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/w/j/h0;-><init>(Lq3/a/i0;Le/a/d/x/r/h;Le/a/d/c0/z1/i;)V

    return-object v2

    .line 7
    :pswitch_2
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 8
    new-instance v2, Le/a/d/w/j/z;

    iget-object v3, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$n;->g:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/w/i;

    iget-object v5, v1, Le/a/r1$n;->m:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/x1/e;

    iget-object v1, v1, Le/a/r1$n;->o:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/o;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d/w/j/z;-><init>(Lq3/a/i0;Le/a/d/w/i;Le/a/d/c0/x1/e;Le/a/d/c0/o;)V

    return-object v2

    .line 9
    :pswitch_3
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 10
    new-instance v9, Le/a/d/w/j/b;

    iget-object v2, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$n;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    iget-object v2, v1, Le/a/r1$n;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/x/r/h;

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 11
    iget-object v2, v2, Le/a/r1;->b8:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/v/d;

    iget-object v1, v1, Le/a/r1$n;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/d/w/j/m;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/d/w/j/b;-><init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/c0/z1/i;Le/a/d/x/r/h;Le/a/d/v/d;Le/a/d/w/j/m;)V

    return-object v9

    .line 13
    :pswitch_4
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 14
    new-instance v2, Le/a/d/w/j/u;

    iget-object v3, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 15
    sget v5, Le/a/r1;->Ni:I

    .line 16
    invoke-virtual {v4}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v4

    .line 17
    iget-object v1, v1, Le/a/r1$n;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/w/i;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/w/j/u;-><init>(Lq3/a/i0;Le/a/d/c0/f0;Le/a/d/w/i;)V

    return-object v2

    .line 18
    :pswitch_5
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 19
    new-instance v2, Le/a/d/w/j/f;

    iget-object v3, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v1, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    invoke-direct {v2, v3, v1}, Le/a/d/w/j/f;-><init>(Lq3/a/i0;Le/a/d/c0/z1/i;)V

    return-object v2

    .line 20
    :pswitch_6
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 21
    new-instance v2, Le/a/d/c0/p;

    iget-object v3, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 22
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 23
    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v1, v1, Le/a/r1$n;->c:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/d/c0/p;-><init>(Ls1/w/f;Landroid/content/Context;)V

    return-object v2

    .line 24
    :pswitch_7
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 25
    new-instance v10, Le/a/d/c0/x1/f;

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 26
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 27
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 28
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 29
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 30
    invoke-virtual {v2}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    .line 31
    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 32
    iget-object v2, v2, Le/a/r1;->i8:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/q/v;

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 34
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v8

    .line 35
    iget-object v1, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 36
    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v9

    move-object v2, v10

    .line 37
    invoke-direct/range {v2 .. v9}, Le/a/d/c0/x1/f;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/p5/g;Le/a/d/q/v;Le/a/p5/c0;Le/a/p5/a0;)V

    return-object v10

    .line 38
    :pswitch_8
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 39
    new-instance v12, Le/a/d/w/j/n;

    iget-object v2, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$n;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq3/a/x2/a1;

    iget-object v5, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    iget-object v2, v1, Le/a/r1$n;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/w/i;

    iget-object v2, v1, Le/a/r1$n;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/c0/x1/e;

    iget-object v2, v1, Le/a/r1$n;->o:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/d/c0/o;

    iget-object v2, v1, Le/a/r1$n;->q:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/d/w/j/c;

    iget-object v2, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 40
    sget v10, Le/a/r1;->Ni:I

    .line 41
    invoke-virtual {v2}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v10

    .line 42
    iget-object v1, v1, Le/a/r1$n;->s:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Le/a/d/w/j/s;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Le/a/d/w/j/n;-><init>(Lq3/a/i0;Lq3/a/x2/a1;Le/a/d/c0/z1/i;Le/a/d/w/i;Le/a/d/c0/x1/e;Le/a/d/c0/o;Le/a/d/w/j/c;Le/a/d/c0/j1;Le/a/d/w/j/s;)V

    return-object v12

    .line 43
    :pswitch_9
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 44
    iget-object v2, v1, Le/a/r1$n;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/x/r/h;

    iget-object v1, v1, Le/a/r1$n;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "rtmChannel"

    .line 45
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ownId"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {v2}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v2

    .line 47
    new-instance v3, Le/a/d/u/h;

    invoke-direct {v3, v2, v1}, Le/a/d/u/h;-><init>(Lq3/a/x2/f;Ljava/lang/String;)V

    .line 48
    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v1

    .line 49
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 50
    :pswitch_a
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 51
    iget-object v1, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    .line 52
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v1}, Le/a/d/c0/z1/i;->q()Le/a/d/x/r/h;

    move-result-object v1

    .line 54
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 55
    :pswitch_b
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 56
    iget-object v1, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    .line 57
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {v1}, Le/a/d/c0/z1/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 60
    :pswitch_c
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 61
    iget-object v1, v1, Le/a/r1$n;->c:Le/a/r1;

    .line 62
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 63
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    const-string v3, "asyncContext"

    .line 64
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 65
    invoke-static {v2, v3, v2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    return-object v1

    .line 66
    :pswitch_d
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 67
    new-instance v12, Le/a/d/w/j/h;

    iget-object v2, v1, Le/a/r1$n;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$n;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Le/a/r1$n;->b:Ljava/lang/String;

    iget-object v2, v1, Le/a/r1$n;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lq3/a/x2/a1;

    iget-object v2, v1, Le/a/r1$n;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/w/i;

    iget-object v2, v1, Le/a/r1$n;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/d/x/r/h;

    iget-object v2, v1, Le/a/r1$n;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lq3/a/x2/f;

    iget-object v2, v1, Le/a/r1$n;->u:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/d/w/j/m;

    iget-object v11, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Le/a/d/w/j/h;-><init>(Lq3/a/i0;Ljava/lang/String;Ljava/lang/String;Lq3/a/x2/a1;Le/a/d/w/i;Le/a/d/x/r/h;Lq3/a/x2/f;Le/a/d/w/j/m;Le/a/d/c0/z1/i;)V

    return-object v12

    .line 68
    :pswitch_e
    new-instance v1, Le/a/d/w/i;

    invoke-direct {v1}, Le/a/d/w/i;-><init>()V

    return-object v1

    .line 69
    :pswitch_f
    invoke-static {v2}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v1

    return-object v1

    .line 70
    :pswitch_10
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 71
    iget-object v1, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    .line 72
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {v1}, Le/a/d/c0/z1/i;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 75
    :pswitch_11
    iget-object v1, v0, Le/a/r1$n$a;->a:Le/a/r1$n;

    .line 76
    new-instance v16, Le/a/d/w/c;

    iget-object v2, v1, Le/a/r1$n;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Le/a/r1$n;->b:Ljava/lang/String;

    iget-object v2, v1, Le/a/r1$n;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lq3/a/x2/a1;

    iget-object v2, v1, Le/a/r1$n;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/w/i;

    iget-object v2, v1, Le/a/r1$n;->w:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/w/j/g;

    iget-object v2, v1, Le/a/r1$n;->y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/d/w/j/a;

    iget-object v2, v1, Le/a/r1$n;->A:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/d/w/j/w;

    iget-object v2, v1, Le/a/r1$n;->u:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/d/w/j/m;

    iget-object v11, v1, Le/a/r1$n;->a:Le/a/d/c0/z1/i;

    iget-object v2, v1, Le/a/r1$n;->C:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/d/w/j/a0;

    iget-object v2, v1, Le/a/r1$n;->q:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/d/w/j/c;

    iget-object v2, v1, Le/a/r1$n;->s:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Le/a/d/w/j/s;

    iget-object v1, v1, Le/a/r1$n;->E:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Le/a/d/w/j/o;

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Le/a/d/w/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lq3/a/x2/a1;Le/a/d/w/i;Le/a/d/w/j/g;Le/a/d/w/j/a;Le/a/d/w/j/w;Le/a/d/w/j/m;Le/a/d/c0/z1/i;Le/a/d/w/j/a0;Le/a/d/w/j/c;Le/a/d/w/j/s;Le/a/d/w/j/o;)V

    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
