.class public final Le/a/r1$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$h;
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
.field public final a:Le/a/r1$h;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$l;Le/a/r1$h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 3
    iput p4, p0, Le/a/r1$h$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/r1$h$a;->b:I

    const-string v1, "rtmChannel"

    const-string v2, "repository"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/r1$h$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 4
    new-instance v7, Le/a/d/v/l/e/c;

    iget-object v1, v0, Le/a/r1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lq3/a/i0;

    iget-object v1, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Le/a/r1$h;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 5
    iget-object v5, v0, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 6
    iget-object v0, v0, Le/a/r1$l;->k:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/a/d/x/r/h;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/d/v/l/e/c;-><init>(Lq3/a/i0;IZLe/a/d/c0/z1/i;Le/a/d/x/r/h;)V

    return-object v7

    .line 8
    :pswitch_1
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 9
    new-instance v1, Le/a/d/v/l/e/h;

    iget-object v2, v0, Le/a/r1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/a/i0;

    iget-object v0, v0, Le/a/r1$h;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/l/d;

    invoke-direct {v1, v2, v0}, Le/a/d/v/l/e/h;-><init>(Lq3/a/i0;Le/a/d/v/l/d;)V

    return-object v1

    .line 10
    :pswitch_2
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 11
    iget-object v1, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 12
    iget-object v3, v0, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 13
    iget-object v0, v0, Le/a/r1$l;->m:Ljavax/inject/Provider;

    .line 14
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/x/q/h;

    .line 15
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rtcManager"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v0}, Le/a/d/x/q/h;->e()Lq3/a/x2/f;

    move-result-object v0

    .line 17
    new-instance v2, Le/a/d/u/e;

    invoke-direct {v2, v0}, Le/a/d/u/e;-><init>(Lq3/a/x2/f;)V

    .line 18
    new-instance v0, Le/a/d/u/d;

    invoke-direct {v0, v2, v3, v1}, Le/a/d/u/d;-><init>(Lq3/a/x2/f;Le/a/d/c0/z1/i;I)V

    return-object v0

    .line 19
    :pswitch_3
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 20
    new-instance v1, Le/a/d/v/l/e/j;

    iget-object v2, v0, Le/a/r1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/a/i0;

    iget-object v3, v0, Le/a/r1$h;->m:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/x2/f;

    iget-object v0, v0, Le/a/r1$h;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/x2/f;

    invoke-direct {v1, v2, v3, v0}, Le/a/d/v/l/e/j;-><init>(Lq3/a/i0;Lq3/a/x2/f;Lq3/a/x2/f;)V

    return-object v1

    .line 21
    :pswitch_4
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 22
    iget-object v3, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 23
    iget-object v4, v0, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 24
    iget-object v0, v0, Le/a/r1$l;->k:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/x/r/h;

    .line 26
    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v0}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v0

    .line 28
    new-instance v1, Le/a/d/u/c;

    invoke-direct {v1, v0, v4, v3}, Le/a/d/u/c;-><init>(Lq3/a/x2/f;Le/a/d/c0/z1/i;I)V

    return-object v1

    .line 29
    :pswitch_5
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 30
    iget-object v3, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 31
    iget-object v4, v0, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 32
    iget-object v0, v0, Le/a/r1$l;->k:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/x/r/h;

    .line 34
    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {v0}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object v0

    .line 36
    new-instance v1, Le/a/d/u/b;

    invoke-direct {v1, v0, v4, v3}, Le/a/d/u/b;-><init>(Lq3/a/x2/f;Le/a/d/c0/z1/i;I)V

    .line 37
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 39
    :pswitch_6
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 40
    new-instance v9, Le/a/d/v/l/e/l;

    iget-object v1, v0, Le/a/r1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lq3/a/i0;

    iget-object v1, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 41
    iget-object v4, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 42
    iget-object v1, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/d/x/q/h;

    iget-object v1, v0, Le/a/r1$h;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lq3/a/x2/f;

    iget-object v1, v0, Le/a/r1$h;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lq3/a/x2/f;

    iget-object v0, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 44
    iget-object v0, v0, Le/a/r1$l;->k:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/d/x/r/h;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Le/a/d/v/l/e/l;-><init>(Lq3/a/i0;ILe/a/d/c0/z1/i;Le/a/d/x/q/h;Lq3/a/x2/f;Lq3/a/x2/f;Le/a/d/x/r/h;)V

    return-object v9

    .line 46
    :pswitch_7
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 47
    new-instance v11, Le/a/d/v/l/e/e;

    iget-object v1, v0, Le/a/r1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lq3/a/i0;

    iget-object v1, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Le/a/r1$h;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lq3/a/x2/a1;

    iget-object v1, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 48
    iget-object v5, v1, Le/a/r1$l;->a:Le/a/d/c0/z1/i;

    .line 49
    iget-object v1, v0, Le/a/r1$h;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/d/v/l/d;

    iget-object v1, v0, Le/a/r1$h;->d:Le/a/r1$l;

    .line 50
    iget-object v1, v1, Le/a/r1$l;->m:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/d/x/q/h;

    iget-object v1, v0, Le/a/r1$h;->l:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/d/v/l/e/k;

    iget-object v1, v0, Le/a/r1$h;->o:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/a/d/v/l/e/i;

    iget-object v0, v0, Le/a/r1$h;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/d/v/l/e/g;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Le/a/d/v/l/e/e;-><init>(Lq3/a/i0;ILq3/a/x2/a1;Le/a/d/c0/z1/i;Le/a/d/v/l/d;Le/a/d/x/q/h;Le/a/d/v/l/e/k;Le/a/d/v/l/e/i;Le/a/d/v/l/e/g;)V

    return-object v11

    .line 52
    :pswitch_8
    new-instance v0, Le/a/d/v/l/d;

    invoke-direct {v0}, Le/a/d/v/l/d;-><init>()V

    return-object v0

    .line 53
    :pswitch_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_a
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 55
    iget-object v0, v0, Le/a/r1$h;->c:Le/a/r1;

    .line 56
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 57
    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    const-string v1, "asyncContext"

    .line 58
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 59
    invoke-static {v1, v2, v1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0

    .line 60
    :pswitch_b
    iget-object v0, p0, Le/a/r1$h$a;->a:Le/a/r1$h;

    .line 61
    new-instance v11, Le/a/d/v/l/b;

    iget-object v1, v0, Le/a/r1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lq3/a/i0;

    iget-object v1, v0, Le/a/r1$h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Le/a/r1$h;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v1, v0, Le/a/r1$h;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lq3/a/x2/a1;

    iget-object v1, v0, Le/a/r1$h;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/d/v/l/d;

    iget-object v1, v0, Le/a/r1$h;->s:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/d/v/l/e/d;

    iget-object v1, v0, Le/a/r1$h;->o:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/d/v/l/e/i;

    iget-object v1, v0, Le/a/r1$h;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/a/d/v/l/e/b;

    iget-object v0, v0, Le/a/r1$h;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/d/v/l/e/g;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Le/a/d/v/l/b;-><init>(Lq3/a/i0;IZLq3/a/x2/a1;Le/a/d/v/l/d;Le/a/d/v/l/e/d;Le/a/d/v/l/e/i;Le/a/d/v/l/e/b;Le/a/d/v/l/e/g;)V

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
