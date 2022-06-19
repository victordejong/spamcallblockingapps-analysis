.class public final Le/a/r1$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$l;
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
.field public final a:Le/a/r1$l;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 3
    iput p3, p0, Le/a/r1$l$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$l$a;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Cannot return null from a non-@Nullable @Provides method"

    const-string v5, "callInfoRepository"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    move-object/from16 v1, p0

    iget v2, v1, Le/a/r1$l$a;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 4
    new-instance v2, Le/a/d/v/k/u;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/x/q/h;

    iget-object v1, v1, Le/a/r1$l;->C:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/k/p;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/v/k/u;-><init>(Lq3/a/i0;Le/a/d/x/q/h;Le/a/d/v/k/p;)V

    return-object v2

    .line 5
    :pswitch_1
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 6
    new-instance v2, Le/a/d/v/k/y;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    iget-object v1, v1, Le/a/r1$l;->C:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/k/p;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/v/k/y;-><init>(Lq3/a/i0;Le/a/d/c0/z1/i;Le/a/d/v/k/p;)V

    return-object v2

    .line 7
    :pswitch_2
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 8
    new-instance v2, Le/a/d/v/k/o;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->N:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq3/a/b3/c;

    iget-object v5, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/v/g;

    iget-object v1, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d/v/k/o;-><init>(Lq3/a/i0;Lq3/a/b3/c;Le/a/d/v/g;Le/a/d/c0/z1/i;)V

    return-object v2

    .line 9
    :pswitch_3
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 10
    new-instance v9, Le/a/d/v/k/b;

    iget-object v2, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$l;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v2, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/d/x/q/h;

    iget-object v2, v1, Le/a/r1$l;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/x/r/h;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    invoke-static {v2}, Le/a/r1;->W8(Le/a/r1;)Le/a/d/c0/u;

    move-result-object v7

    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 11
    invoke-virtual {v1}, Le/a/r1;->Xc()Le/a/d/c0/n1;

    move-result-object v8

    move-object v2, v9

    .line 12
    invoke-direct/range {v2 .. v8}, Le/a/d/v/k/b;-><init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/x/q/h;Le/a/d/x/r/h;Le/a/d/c0/t;Le/a/d/c0/m1;)V

    return-object v9

    .line 13
    :pswitch_4
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 14
    new-instance v2, Le/a/d/v/k/f;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->o:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/x1/e;

    iget-object v5, v1, Le/a/r1$l;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/r;

    iget-object v1, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/x/q/h;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d/v/k/f;-><init>(Lq3/a/i0;Le/a/d/c0/x1/e;Le/a/d/c0/r;Le/a/d/x/q/h;)V

    return-object v2

    :pswitch_5
    const/4 v1, 0x0

    .line 15
    invoke-static {v1, v2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v1

    return-object v1

    .line 16
    :pswitch_6
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 17
    new-instance v11, Le/a/d/v/k/b0;

    iget-object v2, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$l;->N:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq3/a/b3/c;

    iget-object v5, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    iget-object v2, v1, Le/a/r1$l;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/x/r/h;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 18
    sget v7, Le/a/r1;->Ni:I

    .line 19
    invoke-virtual {v2}, Le/a/r1;->Uc()Le/a/d/c0/z0;

    move-result-object v7

    .line 20
    iget-object v2, v1, Le/a/r1$l;->K:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/d/v/k/n0;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 21
    invoke-virtual {v2}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v9

    .line 22
    iget-object v1, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/d/x/q/h;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/d/v/k/b0;-><init>(Lq3/a/i0;Lq3/a/b3/c;Le/a/d/c0/z1/i;Le/a/d/x/r/h;Le/a/d/c0/y0;Le/a/d/v/k/n0;Le/a/d/c0/f0;Le/a/d/x/q/h;)V

    return-object v11

    .line 23
    :pswitch_7
    new-instance v1, Le/a/d/v/k/o0;

    invoke-direct {v1}, Le/a/d/v/k/o0;-><init>()V

    return-object v1

    .line 24
    :pswitch_8
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 25
    new-instance v2, Le/a/d/v/k/c1;

    iget-object v4, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->j:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    iget-object v4, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Le/a/d/v/g;

    iget-object v4, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Le/a/d/x/q/h;

    iget-object v4, v1, Le/a/r1$l;->k:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Le/a/d/x/r/h;

    new-instance v11, Le/a/r1$g;

    iget-object v4, v1, Le/a/r1$l;->b:Le/a/r1;

    iget-object v12, v1, Le/a/r1$l;->c:Le/a/r1$l;

    invoke-direct {v11, v4, v12, v3}, Le/a/r1$g;-><init>(Le/a/r1;Le/a/r1$l;Le/a/h1;)V

    iget-object v1, v1, Le/a/r1$l;->K:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Le/a/d/v/k/n0;

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Le/a/d/v/k/c1;-><init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/c0/z1/i;Le/a/d/v/g;Le/a/d/x/q/h;Le/a/d/x/r/h;Le/a/d/u/a;Le/a/d/v/k/n0;)V

    return-object v2

    .line 26
    :pswitch_9
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 27
    new-instance v2, Le/a/d/v/k/a1;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->s:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/v;

    iget-object v1, v1, Le/a/r1$l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/r;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/v/k/a1;-><init>(Lq3/a/i0;Le/a/d/c0/v;Le/a/d/c0/r;)V

    return-object v2

    .line 28
    :pswitch_a
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 29
    new-instance v2, Le/a/d/v/k/s0;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->q:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/o;

    iget-object v1, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/g;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/v/k/s0;-><init>(Lq3/a/i0;Le/a/d/c0/o;Le/a/d/v/g;)V

    return-object v2

    .line 30
    :pswitch_b
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 31
    new-instance v2, Le/a/d/v/k/q0;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->o:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/x1/e;

    iget-object v1, v1, Le/a/r1$l;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/r;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/v/k/q0;-><init>(Lq3/a/i0;Le/a/d/c0/x1/e;Le/a/d/c0/r;)V

    return-object v2

    .line 32
    :pswitch_c
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 33
    new-instance v8, Le/a/d/v/k/m0;

    iget-object v2, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$l;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/truecaller/voip/groupcall/call/CallDirection;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 34
    sget v5, Le/a/r1;->Ni:I

    .line 35
    invoke-virtual {v2}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v5

    .line 36
    iget-object v2, v1, Le/a/r1$l;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/v/i;

    iget-object v1, v1, Le/a/r1$l;->w:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/d/v/k/w0;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/d/v/k/m0;-><init>(Lq3/a/i0;Lcom/truecaller/voip/groupcall/call/CallDirection;Le/a/d/c0/f0;Le/a/d/v/i;Le/a/d/v/k/w0;)V

    return-object v8

    .line 37
    :pswitch_d
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 38
    new-instance v2, Le/a/d/v/k/h0;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->d:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/x/q/h;

    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 39
    sget v6, Le/a/r1;->Ni:I

    .line 40
    invoke-virtual {v1}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v1

    .line 41
    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d/v/k/h0;-><init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/x/q/h;Le/a/d/c0/f0;)V

    return-object v2

    .line 42
    :pswitch_e
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 43
    new-instance v2, Le/a/d/v/k/y0;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v1, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/g;

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v1, v4}, Le/a/d/v/k/y0;-><init>(Lq3/a/i0;Le/a/d/v/g;Le/a/p5/c;)V

    return-object v2

    .line 44
    :pswitch_f
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 45
    new-instance v2, Le/a/d/v/k/i;

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/g;

    iget-object v1, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    invoke-direct {v2, v3, v4, v1}, Le/a/d/v/k/i;-><init>(Lq3/a/i0;Le/a/d/v/g;Le/a/d/c0/z1/i;)V

    return-object v2

    .line 46
    :pswitch_10
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 47
    new-instance v2, Le/a/d/c0/w;

    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/d/c0/w;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 48
    :pswitch_11
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 49
    new-instance v2, Le/a/d/c0/p;

    iget-object v3, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 50
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 51
    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/d/c0/p;-><init>(Ls1/w/f;Landroid/content/Context;)V

    return-object v2

    .line 52
    :pswitch_12
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 53
    new-instance v10, Le/a/d/c0/x1/f;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 54
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 55
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 56
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 57
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 58
    invoke-virtual {v2}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    .line 59
    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 60
    iget-object v2, v2, Le/a/r1;->i8:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/q/v;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 62
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v8

    .line 63
    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 64
    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v9

    move-object v2, v10

    .line 65
    invoke-direct/range {v2 .. v9}, Le/a/d/c0/x1/f;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/p5/g;Le/a/d/q/v;Le/a/p5/c0;Le/a/p5/a0;)V

    return-object v10

    .line 66
    :pswitch_13
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 67
    new-instance v8, Le/a/d/x/q/d;

    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lq3/a/i0;

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-string v5, "Executors.newSingleThreadExecutor()"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v5, Lq3/a/g1;

    invoke-direct {v5, v2}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 70
    iget-object v2, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 71
    invoke-virtual {v2}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v6

    .line 72
    iget-object v7, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/d/x/q/d;-><init>(Landroid/content/Context;Lq3/a/i0;Lq3/a/g0;Le/a/d/c0/f0;Le/a/d/c0/z1/i;)V

    return-object v8

    .line 73
    :pswitch_14
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 74
    iget-object v1, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 75
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {v1}, Le/a/d/c0/z1/i;->q()Le/a/d/x/r/h;

    move-result-object v1

    .line 77
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 78
    :pswitch_15
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 79
    new-instance v20, Le/a/d/v/k/q;

    move-object/from16 v2, v20

    iget-object v3, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/i0;

    iget-object v4, v1, Le/a/r1$l;->j:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    iget-object v6, v1, Le/a/r1$l;->h:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/v/i;

    iget-object v7, v1, Le/a/r1$l;->k:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/d/x/r/h;

    iget-object v8, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/d/v/g;

    iget-object v9, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/d/x/q/h;

    iget-object v10, v1, Le/a/r1$l;->o:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/d/c0/x1/e;

    iget-object v11, v1, Le/a/r1$l;->q:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/d/c0/o;

    iget-object v12, v1, Le/a/r1$l;->s:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/d/c0/v;

    iget-object v13, v1, Le/a/r1$l;->u:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/d/v/k/g;

    iget-object v14, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 80
    sget v15, Le/a/r1;->Ni:I

    .line 81
    invoke-virtual {v14}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v14

    .line 82
    iget-object v15, v1, Le/a/r1$l;->w:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/d/v/k/w0;

    iget-object v0, v1, Le/a/r1$l;->y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Le/a/d/v/k/d0;

    iget-object v0, v1, Le/a/r1$l;->A:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Le/a/d/v/k/i0;

    new-instance v0, Le/a/p5/d;

    move-object/from16 v18, v0

    invoke-direct {v0}, Le/a/p5/d;-><init>()V

    iget-object v0, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 83
    new-instance v1, Le/a/d/c/a/h;

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Le/a/d/c/a/h;-><init>(Le/a/d/c0/f0;Ls1/w/f;)V

    move-object/from16 v2, v21

    .line 84
    invoke-direct/range {v2 .. v19}, Le/a/d/v/k/q;-><init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/c0/z1/i;Le/a/d/v/i;Le/a/d/x/r/h;Le/a/d/v/g;Le/a/d/x/q/h;Le/a/d/c0/x1/e;Le/a/d/c0/o;Le/a/d/c0/v;Le/a/d/v/k/g;Le/a/d/c0/j1;Le/a/d/v/k/w0;Le/a/d/v/k/d0;Le/a/d/v/k/i0;Le/a/p5/c;Le/a/d/c/a/f;)V

    return-object v20

    .line 85
    :pswitch_16
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 86
    iget-object v1, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 87
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {v1}, Le/a/d/c0/z1/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 90
    :pswitch_17
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 91
    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 92
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 93
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    const-string v4, "asyncContext"

    .line 94
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {v3, v2, v3}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    return-object v1

    .line 96
    :pswitch_18
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 97
    new-instance v18, Le/a/d/v/k/k;

    iget-object v2, v1, Le/a/r1$l;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq3/a/i0;

    iget-object v2, v1, Le/a/r1$l;->d:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v2, v1, Le/a/r1$l;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    iget-object v2, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/v/g;

    iget-object v2, v1, Le/a/r1$l;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/d/v/i;

    iget-object v2, v1, Le/a/r1$l;->C:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/d/v/k/p;

    iget-object v2, v1, Le/a/r1$l;->o:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/d/c0/x1/e;

    iget-object v2, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/d/x/q/h;

    iget-object v2, v1, Le/a/r1$l;->E:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/d/v/k/p0;

    iget-object v2, v1, Le/a/r1$l;->G:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/d/v/k/r0;

    iget-object v2, v1, Le/a/r1$l;->I:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/d/v/k/z0;

    iget-object v2, v1, Le/a/r1$l;->M:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Le/a/d/v/k/b1;

    iget-object v2, v1, Le/a/r1$l;->P:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Le/a/d/v/k/a0;

    iget-object v2, v1, Le/a/r1$l;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Le/a/d/x/r/h;

    iget-object v1, v1, Le/a/r1$l;->b:Le/a/r1;

    .line 98
    iget-object v1, v1, Le/a/r1;->i8:Ljavax/inject/Provider;

    .line 99
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Le/a/d/q/v;

    move-object/from16 v2, v18

    invoke-direct/range {v2 .. v17}, Le/a/d/v/k/k;-><init>(Lq3/a/i0;Ljava/lang/String;Ljava/lang/String;Le/a/d/v/g;Le/a/d/v/i;Le/a/d/v/k/p;Le/a/d/c0/x1/e;Le/a/d/x/q/h;Le/a/d/v/k/p0;Le/a/d/v/k/r0;Le/a/d/v/k/z0;Le/a/d/v/k/b1;Le/a/d/v/k/a0;Le/a/d/x/r/h;Le/a/d/q/v;)V

    return-object v18

    .line 100
    :pswitch_19
    new-instance v1, Le/a/d/v/i;

    invoke-direct {v1}, Le/a/d/v/i;-><init>()V

    return-object v1

    .line 101
    :pswitch_1a
    new-instance v1, Le/a/d/v/g;

    invoke-direct {v1}, Le/a/d/v/g;-><init>()V

    return-object v1

    .line 102
    :pswitch_1b
    new-instance v1, Le/a/d/c0/r;

    .line 103
    new-instance v2, Le/a/d/c0/x1/b;

    .line 104
    sget-object v3, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    .line 105
    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    .line 106
    invoke-direct {v2, v3, v4}, Le/a/d/c0/x1/b;-><init>(Le/a/d/c0/x1/a;Ljava/util/List;)V

    .line 107
    invoke-direct {v1, v2}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 108
    :pswitch_1c
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 109
    iget-object v1, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 110
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-interface {v1}, Le/a/d/c0/z1/i;->b()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v1

    .line 112
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 113
    :pswitch_1d
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 114
    iget-object v1, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 115
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {v1}, Le/a/d/c0/z1/i;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 118
    :pswitch_1e
    iget-object v1, v0, Le/a/r1$l$a;->a:Le/a/r1$l;

    .line 119
    new-instance v21, Le/a/d/v/c;

    move-object/from16 v2, v21

    iget-object v3, v1, Le/a/r1$l;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Le/a/r1$l;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/voip/groupcall/call/CallDirection;

    iget-object v5, v1, Le/a/r1$l;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/r;

    iget-object v6, v1, Le/a/r1$l;->g:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/v/g;

    iget-object v7, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    iget-object v8, v1, Le/a/r1$l;->h:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/d/v/i;

    iget-object v9, v1, Le/a/r1$l;->R:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/d/v/k/j;

    iget-object v10, v1, Le/a/r1$l;->P:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/d/v/k/a0;

    iget-object v11, v1, Le/a/r1$l;->T:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/d/v/k/e;

    iget-object v12, v1, Le/a/r1$l;->V:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/d/v/k/a;

    iget-object v13, v1, Le/a/r1$l;->w:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/d/v/k/w0;

    iget-object v14, v1, Le/a/r1$l;->X:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/d/v/k/m;

    iget-object v15, v1, Le/a/r1$l;->y:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/d/v/k/d0;

    iget-object v0, v1, Le/a/r1$l;->A:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Le/a/d/v/k/i0;

    iget-object v0, v1, Le/a/r1$l;->C:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Le/a/d/v/k/p;

    iget-object v0, v1, Le/a/r1$l;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Le/a/d/v/k/g;

    iget-object v0, v1, Le/a/r1$l;->Z:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Le/a/d/v/k/v;

    iget-object v0, v1, Le/a/r1$l;->b0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Le/a/d/v/k/r;

    invoke-direct/range {v2 .. v20}, Le/a/d/v/c;-><init>(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Le/a/d/c0/r;Le/a/d/v/g;Le/a/d/c0/z1/i;Le/a/d/v/i;Le/a/d/v/k/j;Le/a/d/v/k/a0;Le/a/d/v/k/e;Le/a/d/v/k/a;Le/a/d/v/k/w0;Le/a/d/v/k/m;Le/a/d/v/k/d0;Le/a/d/v/k/i0;Le/a/d/v/k/p;Le/a/d/v/k/g;Le/a/d/v/k/v;Le/a/d/v/k/r;)V

    return-object v21

    :pswitch_data_0
    .packed-switch 0x0
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
