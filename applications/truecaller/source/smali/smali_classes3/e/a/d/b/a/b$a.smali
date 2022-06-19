.class public final Le/a/d/b/a/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/b/a/b$a;->b:I

    iput-object p2, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/d/b/a/b$a;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    throw v2

    .line 1
    :pswitch_0
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 2
    invoke-virtual {v1}, Le/a/d/b/a/b;->Mj()Lq3/a/p1;

    return-object v0

    .line 3
    :pswitch_1
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 4
    iget-object v1, v1, Le/a/d/b/a/b;->A:Le/a/d/c0/o;

    .line 5
    invoke-interface {v1}, Le/a/d/c0/o;->d()V

    return-object v0

    .line 6
    :pswitch_2
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 7
    invoke-virtual {v1}, Le/a/d/b/a/b;->Mj()Lq3/a/p1;

    return-object v0

    .line 8
    :pswitch_3
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 9
    iget-object v1, v1, Le/a/d/b/a/b;->A:Le/a/d/c0/o;

    .line 10
    invoke-interface {v1}, Le/a/d/c0/o;->d()V

    return-object v0

    .line 11
    :pswitch_4
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 12
    iget-object v2, v1, Le/a/d/b/a/b;->A:Le/a/d/c0/o;

    invoke-interface {v2}, Le/a/d/c0/o;->d()V

    .line 13
    invoke-virtual {v1}, Le/a/d/b/a/b;->Mj()Lq3/a/p1;

    return-object v0

    .line 14
    :pswitch_5
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Le/a/d/b/a/b;

    .line 15
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v6, Le/a/d/b/a/p;

    invoke-direct {v6, v3, v2}, Le/a/d/b/a/p;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0

    .line 17
    :pswitch_6
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 18
    invoke-virtual {v1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v2

    .line 19
    iget-boolean v2, v2, Le/a/d/x/p;->d:Z

    .line 20
    invoke-virtual {v1, v2}, Le/a/d/b/a/b;->Vj(Z)V

    return-object v0

    .line 21
    :pswitch_7
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Le/a/d/b/a/b;

    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v6, Le/a/d/b/a/o;

    invoke-direct {v6, v3, v2}, Le/a/d/b/a/o;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0

    .line 24
    :pswitch_8
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 25
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/g;

    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v1}, Le/a/d/b/a/g;->d()V

    :cond_0
    return-object v0

    .line 27
    :pswitch_9
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 28
    invoke-virtual {v1}, Le/a/d/b/a/b;->Mj()Lq3/a/p1;

    return-object v0

    .line 29
    :pswitch_a
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 30
    invoke-virtual {v1}, Le/a/d/b/a/b;->Mj()Lq3/a/p1;

    return-object v0

    .line 31
    :pswitch_b
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 32
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/g;

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v1}, Le/a/d/b/a/g;->t()V

    :cond_1
    return-object v0

    .line 34
    :pswitch_c
    iget-object v1, p0, Le/a/d/b/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    .line 35
    iget-object v2, v1, Le/a/d/b/a/b;->y:Le/a/p5/c;

    .line 36
    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v2

    .line 37
    iput-wide v2, v1, Le/a/d/b/a/b;->l:J

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
