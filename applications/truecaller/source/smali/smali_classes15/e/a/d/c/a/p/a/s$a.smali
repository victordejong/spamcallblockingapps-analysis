.class public final Le/a/d/c/a/p/a/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/s;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/d/c/a/p/a/s;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/s;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/s$a;->a:Le/a/d/c/a/p/a/s;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Le/a/d/v/l/c;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Le/a/d/c/a/p/a/s$a;->a:Le/a/d/c/a/p/a/s;

    iget-object v0, v0, Le/a/d/c/a/p/a/s;->g:Le/a/d/v/l/a;

    invoke-interface {v0}, Le/a/d/v/l/a;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p2, p0, Le/a/d/c/a/p/a/s$a;->a:Le/a/d/c/a/p/a/s;

    iget-object v0, p2, Le/a/d/c/a/p/a/s;->f:Le/a/d/c/a/p/a/u;

    iget-object p2, p2, Le/a/d/c/a/p/a/s;->g:Le/a/d/v/l/a;

    .line 4
    iget-boolean v1, v0, Le/a/d/c/a/p/a/u;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v1, Le/a/d/v/l/c$a;->b:Le/a/d/v/l/c$a;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 6
    sget v1, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_connecting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$color;->voip_contact_tile_call_status_orange:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7
    invoke-interface {p2}, Le/a/d/v/l/a;->a()Z

    move-result p2

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0, v1, v4}, Le/a/d/c/a/p/a/p;->l(II)V

    .line 10
    invoke-interface {v0, v3}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 11
    invoke-interface {v0, p2}, Le/a/d/c/a/p/a/p;->o(Z)V

    goto/16 :goto_1

    .line 12
    :cond_1
    sget-object v1, Le/a/d/v/l/c$d;->b:Le/a/d/v/l/c$d;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    sget v1, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ringing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$color;->voip_contact_tile_call_status_green:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 14
    invoke-interface {p2}, Le/a/d/v/l/a;->a()Z

    move-result p2

    .line 15
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_d

    .line 16
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0, v1, v4}, Le/a/d/c/a/p/a/p;->l(II)V

    .line 17
    invoke-interface {v0, v3}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 18
    invoke-interface {v0, p2}, Le/a/d/c/a/p/a/p;->o(Z)V

    goto/16 :goto_1

    .line 19
    :cond_2
    sget-object p2, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    invoke-virtual {v0}, Le/a/d/c/a/p/a/u;->Ij()V

    goto/16 :goto_1

    .line 21
    :cond_3
    instance-of p2, p1, Le/a/d/v/l/c$b;

    if-eqz p2, :cond_d

    .line 22
    instance-of p2, p1, Le/a/d/v/l/c$b$d;

    if-eqz p2, :cond_4

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_invite_canceled:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_4
    instance-of p2, p1, Le/a/d/v/l/c$b$e;

    if-eqz p2, :cond_5

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_invite_rejected:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 24
    :cond_5
    instance-of p2, p1, Le/a/d/v/l/c$b$h;

    if-eqz p2, :cond_6

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_offline:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 25
    :cond_6
    instance-of p2, p1, Le/a/d/v/l/c$b$g;

    if-eqz p2, :cond_7

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_no_answer:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 26
    :cond_7
    instance-of p2, p1, Le/a/d/v/l/c$b$a;

    if-eqz p2, :cond_8

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_busy:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 27
    :cond_8
    instance-of p2, p1, Le/a/d/v/l/c$b$b;

    if-eqz p2, :cond_9

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_failed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 28
    :cond_9
    instance-of p2, p1, Le/a/d/v/l/c$b$f;

    if-eqz p2, :cond_a

    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 29
    :cond_a
    instance-of p2, p1, Le/a/d/v/l/c$b$c;

    if-eqz p2, :cond_c

    .line 30
    invoke-virtual {v0}, Le/a/d/c/a/p/a/u;->Ij()V

    .line 31
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/c/a/p/a/p;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Le/a/d/c/a/p/a/p;->A()V

    :cond_b
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_d

    .line 32
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v1, Lcom/truecaller/voip/R$color;->voip_contact_tile_call_status_red:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 34
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_d

    .line 35
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, p2, v1}, Le/a/d/c/a/p/a/p;->l(II)V

    .line 36
    invoke-interface {v0, v3}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 37
    invoke-interface {v0, v3}, Le/a/d/c/a/p/a/p;->o(Z)V

    goto :goto_1

    .line 38
    :cond_c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 39
    :cond_d
    :goto_1
    instance-of p2, p1, Le/a/d/v/l/c$c;

    if-eqz p2, :cond_e

    iget-object p2, p0, Le/a/d/c/a/p/a/s$a;->a:Le/a/d/c/a/p/a/s;

    iget-object v0, p2, Le/a/d/c/a/p/a/s;->f:Le/a/d/c/a/p/a/u;

    .line 40
    iget-object v1, v0, Le/a/d/c/a/p/a/u;->h:Lq3/a/p1;

    if-nez v1, :cond_e

    .line 41
    iget-object p2, p2, Le/a/d/c/a/p/a/s;->g:Le/a/d/v/l/a;

    .line 42
    new-instance v6, Le/a/d/c/a/p/a/r;

    invoke-direct {v6, v0, p2, v2}, Le/a/d/c/a/p/a/r;-><init>(Le/a/d/c/a/p/a/u;Le/a/d/v/l/a;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p2

    iput-object p2, v0, Le/a/d/c/a/p/a/u;->h:Lq3/a/p1;

    .line 43
    :cond_e
    instance-of p1, p1, Le/a/d/v/l/c$b;

    if-eqz p1, :cond_10

    .line 44
    iget-object p1, p0, Le/a/d/c/a/p/a/s$a;->a:Le/a/d/c/a/p/a/s;

    iget-object p1, p1, Le/a/d/c/a/p/a/s;->f:Le/a/d/c/a/p/a/u;

    .line 45
    iget-object p1, p1, Le/a/d/c/a/p/a/u;->h:Lq3/a/p1;

    if-eqz p1, :cond_f

    const/4 p2, 0x1

    .line 46
    invoke-static {p1, v2, p2, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 47
    :cond_f
    iget-object p1, p0, Le/a/d/c/a/p/a/s$a;->a:Le/a/d/c/a/p/a/s;

    iget-object p1, p1, Le/a/d/c/a/p/a/s;->f:Le/a/d/c/a/p/a/u;

    .line 48
    iput-object v2, p1, Le/a/d/c/a/p/a/u;->h:Lq3/a/p1;

    .line 49
    :cond_10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
