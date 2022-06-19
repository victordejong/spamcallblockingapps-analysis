.class public final Le/a/d/c/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/y;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/y;

.field public final synthetic b:Le/a/d/v/l/a;


# direct methods
.method public constructor <init>(Le/a/d/c/y;Le/a/d/v/l/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/y$a;->a:Le/a/d/c/y;

    iput-object p2, p0, Le/a/d/c/y$a;->b:Le/a/d/v/l/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Le/a/d/v/l/c;

    .line 2
    iget-object p2, p0, Le/a/d/c/y$a;->a:Le/a/d/c/y;

    iget-object p2, p2, Le/a/d/c/y;->f:Le/a/d/c/t;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    sget-object v1, Le/a/d/v/l/c$d;->b:Le/a/d/v/l/c$d;

    sget-object v2, Le/a/d/v/l/c$a;->b:Le/a/d/v/l/c$a;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    sget-object v3, Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;->OK:Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;

    goto :goto_1

    .line 7
    :cond_2
    instance-of v3, p1, Le/a/d/v/l/c$b;

    if-eqz v3, :cond_14

    sget-object v3, Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;->ERROR:Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;

    :goto_1
    if-eqz v3, :cond_3

    .line 8
    iget-object v5, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/d/c/l;

    if-eqz v5, :cond_3

    invoke-interface {v5, v3}, Le/a/d/c/l;->setRingState(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V

    .line 9
    :cond_3
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    sget v0, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 12
    :cond_4
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ringing:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_ok_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v2, v4

    goto :goto_3

    .line 16
    :cond_6
    instance-of v0, p1, Le/a/d/v/l/c$b;

    if-eqz v0, :cond_13

    .line 17
    instance-of v0, p1, Le/a/d/v/l/c$b$d;

    if-eqz v0, :cond_7

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_invite_canceled:I

    goto :goto_2

    .line 18
    :cond_7
    instance-of v0, p1, Le/a/d/v/l/c$b$e;

    if-eqz v0, :cond_8

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_invite_rejected:I

    goto :goto_2

    .line 19
    :cond_8
    instance-of v0, p1, Le/a/d/v/l/c$b$h;

    if-eqz v0, :cond_9

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_offline:I

    goto :goto_2

    .line 20
    :cond_9
    instance-of v0, p1, Le/a/d/v/l/c$b$g;

    if-eqz v0, :cond_a

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_no_answer:I

    goto :goto_2

    .line 21
    :cond_a
    instance-of v0, p1, Le/a/d/v/l/c$b$a;

    if-eqz v0, :cond_b

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_busy:I

    goto :goto_2

    .line 22
    :cond_b
    instance-of v0, p1, Le/a/d/v/l/c$b$b;

    if-eqz v0, :cond_c

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_failed:I

    goto :goto_2

    .line 23
    :cond_c
    instance-of v0, p1, Le/a/d/v/l/c$b$c;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Le/a/d/v/l/c$b$c;

    .line 24
    iget-object v0, v0, Le/a/d/v/l/c$b$c;->b:Le/a/d/v/h$b;

    .line 25
    invoke-static {v0}, Le/a/p5/s0/g;->M1(Le/a/d/v/h$b;)I

    move-result v0

    goto :goto_2

    .line 26
    :cond_d
    instance-of v0, p1, Le/a/d/v/l/c$b$f;

    if-eqz v0, :cond_12

    sget v0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended:I

    .line 27
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 28
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-eqz v2, :cond_e

    .line 29
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/c/l;

    if-eqz p2, :cond_e

    .line 30
    iget-object v0, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 31
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 32
    iget-object v1, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 33
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p2, v0, v1}, Le/a/d/c/l;->v3(II)V

    .line 34
    :cond_e
    instance-of p1, p1, Le/a/d/v/l/c$c;

    if-eqz p1, :cond_f

    .line 35
    iget-object p1, p0, Le/a/d/c/y$a;->a:Le/a/d/c/y;

    iget-object p2, p1, Le/a/d/c/y;->f:Le/a/d/c/t;

    iget-object p1, p1, Le/a/d/c/y;->h:Le/a/d/v/b;

    iget-object v0, p0, Le/a/d/c/y$a;->b:Le/a/d/v/l/a;

    .line 36
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v8, Le/a/d/c/r;

    invoke-direct {v8, p2, v0, p1, v4}, Le/a/d/c/r;-><init>(Le/a/d/c/t;Le/a/d/v/l/a;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p2, Le/a/d/c/t;->h:Lq3/a/p1;

    goto :goto_4

    .line 38
    :cond_f
    iget-object p1, p0, Le/a/d/c/y$a;->a:Le/a/d/c/y;

    iget-object p1, p1, Le/a/d/c/y;->f:Le/a/d/c/t;

    .line 39
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Le/a/d/c/l;

    if-eqz v5, :cond_10

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 40
    invoke-static/range {v5 .. v10}, Le/a/p5/s0/g;->T1(Le/a/d/c/l;ZJILjava/lang/Object;)V

    .line 41
    :cond_10
    iget-object p1, p0, Le/a/d/c/y$a;->a:Le/a/d/c/y;

    iget-object p1, p1, Le/a/d/c/y;->f:Le/a/d/c/t;

    .line 42
    iget-object p1, p1, Le/a/d/c/t;->h:Lq3/a/p1;

    if-eqz p1, :cond_11

    const/4 p2, 0x1

    .line 43
    invoke-static {p1, v4, p2, v4}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 44
    :cond_11
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 45
    :cond_12
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 46
    :cond_13
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 47
    :cond_14
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
