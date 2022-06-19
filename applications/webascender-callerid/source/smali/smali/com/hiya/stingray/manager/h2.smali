.class public Lcom/hiya/stingray/manager/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/h2$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/manager/h2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/hiya/stingray/manager/m3;

.field private final c:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/hiya/stingray/q/b/x;

.field private final e:Lcom/hiya/stingray/manager/j3;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/m3;Lh/a;Lcom/hiya/stingray/q/b/x;Lcom/hiya/stingray/manager/j3;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/manager/m3;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/q/b/x;",
            "Lcom/hiya/stingray/manager/j3;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/h2;->b:Lcom/hiya/stingray/manager/m3;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/h2;->c:Lh/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/h2;->d:Lcom/hiya/stingray/q/b/x;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/h2;->e:Lcom/hiya/stingray/manager/j3;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/h2;->f:Landroid/content/Context;

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->g()Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private C(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Lcom/hiya/stingray/t/g1/a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/g1/a;->m()Lcom/hiya/stingray/t/g1/a$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/h2;->c:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/manager/h2;->d:Lcom/hiya/stingray/q/b/x;

    invoke-static {p1, v1, v2}, Lcom/hiya/stingray/util/y;->e(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)Lg/g/c/a/c/a/b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "PostCallOperation: Can\'t generate PhoneWithMeta for %s "

    .line 3
    invoke-static {p1, p2}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->t(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/g1/a$b;->u(Lg/g/c/a/c/a/b;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p1, Lcom/hiya/stingray/q/c/g/a;->BLOCK_EVENT:Lcom/hiya/stingray/q/c/g/a;

    .line 6
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->q(Lcom/hiya/stingray/q/c/g/a;)Lcom/hiya/stingray/t/g1/a$b;

    .line 7
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/t/g1/a$b;->s(Z)Lcom/hiya/stingray/t/g1/a$b;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/t/g1/a$b;->x(J)Lcom/hiya/stingray/t/g1/a$b;

    .line 9
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->o(Lcom/hiya/stingray/q/c/h/b;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->r(Z)Lcom/hiya/stingray/t/g1/a$b;

    .line 10
    invoke-virtual {v0}, Lcom/hiya/stingray/t/g1/a$b;->m()Lcom/hiya/stingray/t/g1/a;

    move-result-object p1

    return-object p1
.end method

.method private E(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/g1/a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/g1/a;->m()Lcom/hiya/stingray/t/g1/a$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/h2;->c:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/manager/h2;->d:Lcom/hiya/stingray/q/b/x;

    invoke-static {p1, v1, v2}, Lcom/hiya/stingray/util/y;->e(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)Lg/g/c/a/c/a/b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "PostCallOperation: Can\'t generate PhoneWithMeta for %s "

    .line 3
    invoke-static {p1, p2}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->t(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/g1/a$b;->u(Lg/g/c/a/c/a/b;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p1, Lcom/hiya/stingray/q/c/g/a;->TEXT_MESSAGE:Lcom/hiya/stingray/q/c/g/a;

    .line 6
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->q(Lcom/hiya/stingray/q/c/g/a;)Lcom/hiya/stingray/t/g1/a$b;

    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->d:Lcom/hiya/stingray/q/c/d;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/q/c/d;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/t/g1/a$b;->x(J)Lcom/hiya/stingray/t/g1/a$b;

    .line 8
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->j(Lcom/hiya/stingray/manager/h2$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->v(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->d:Lcom/hiya/stingray/q/c/d;

    .line 9
    invoke-static {p1}, Lcom/hiya/stingray/util/p;->v(Lcom/hiya/stingray/q/c/d;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->s(Z)Lcom/hiya/stingray/t/g1/a$b;

    .line 10
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->i(Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/util/i$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->o(Lcom/hiya/stingray/util/i$a;)Lcom/hiya/stingray/t/g1/a$b;

    .line 11
    invoke-virtual {v0}, Lcom/hiya/stingray/t/g1/a$b;->m()Lcom/hiya/stingray/t/g1/a;

    move-result-object p1

    return-object p1
.end method

.method private F(Lcom/hiya/stingray/t/g1/a$b;Lcom/hiya/stingray/manager/h2$c;Lcom/hiya/stingray/q/c/h/a;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lcom/hiya/stingray/manager/h2$c;->e:Z

    .line 2
    iget-boolean v1, p2, Lcom/hiya/stingray/manager/h2$c;->f:Z

    .line 3
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->b:[I

    iget-object v3, p2, Lcom/hiya/stingray/manager/h2$c;->m:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 4
    :pswitch_0
    sget-object p2, Lg/g/a/a/i/k/a;->AUTOVM_UNKNOWN:Lg/g/a/a/i/k/a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    .line 5
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    goto :goto_2

    .line 6
    :pswitch_1
    sget-object p2, Lg/g/a/a/i/k/a;->AUTOVM_PRIVATE:Lg/g/a/a/i/k/a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    .line 7
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    goto :goto_2

    .line 8
    :pswitch_2
    sget-object p2, Lg/g/a/a/i/k/a;->AUTOVM_REP:Lg/g/a/a/i/k/a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    .line 9
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    goto :goto_2

    .line 10
    :pswitch_3
    invoke-direct {p0, v0, v1, p3}, Lcom/hiya/stingray/manager/h2;->h(ZZLcom/hiya/stingray/q/c/h/a;)Lg/g/a/a/i/k/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p2, Lg/g/a/a/i/k/f;->BLACKLISTED:Lg/g/a/a/i/k/f;

    .line 11
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, v0, v1, p3}, Lcom/hiya/stingray/manager/h2;->h(ZZLcom/hiya/stingray/q/c/h/a;)Lg/g/a/a/i/k/a;

    move-result-object p3

    if-nez p3, :cond_0

    .line 13
    sget-object p3, Lg/g/a/a/i/k/a;->AUTOVM_UNKNOWN:Lg/g/a/a/i/k/a;

    :cond_0
    invoke-virtual {p1, p3}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    iget-boolean p2, p2, Lcom/hiya/stingray/manager/h2$c;->i:Z

    if-eqz p2, :cond_1

    sget-object p2, Lg/g/a/a/i/k/f;->BLACKLISTED:Lg/g/a/a/i/k/f;

    goto :goto_0

    :cond_1
    sget-object p2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Condensed AutoBlockValue - AUTO_BLOCK_BLOCK is used."

    .line 15
    invoke-static {p2, p1}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :pswitch_5
    invoke-direct {p0, v0, v1, p3}, Lcom/hiya/stingray/manager/h2;->h(ZZLcom/hiya/stingray/q/c/h/a;)Lg/g/a/a/i/k/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    iget-boolean p2, p2, Lcom/hiya/stingray/manager/h2$c;->h:Z

    if-eqz p2, :cond_2

    sget-object p2, Lg/g/a/a/i/k/f;->WHITELISTED:Lg/g/a/a/i/k/f;

    goto :goto_1

    :cond_2
    sget-object p2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    .line 17
    :goto_1
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SendPhoneEvent %s"

    invoke-static {v1, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->b:Lcom/hiya/stingray/manager/m3;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/m3;->k(Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/z0;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->e(Lg/g/b/c/q;)Lcom/hiya/stingray/t/z0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private g()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/manager/h2$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/h2$a;

    const/16 v1, 0xb

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hiya/stingray/manager/h2$a;-><init>(Lcom/hiya/stingray/manager/h2;IFZ)V

    return-object v0
.end method

.method private h(ZZLcom/hiya/stingray/q/c/h/a;)Lg/g/a/a/i/k/a;
    .locals 2

    .line 1
    sget-object v0, Lg/g/a/a/i/k/a;->OK:Lg/g/a/a/i/k/a;

    if-eqz p3, :cond_2

    .line 2
    sget-object v1, Lcom/hiya/stingray/manager/h2$b;->c:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lg/g/a/a/i/k/a;->AUTOVM_REP:Lg/g/a/a/i/k/a;

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    sget-object p1, Lg/g/a/a/i/k/a;->AUTOVM_REP:Lg/g/a/a/i/k/a;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private i(Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/util/i$a;
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/i$a;->UNKNOWN:Lcom/hiya/stingray/util/i$a;

    .line 2
    iget-object v1, p1, Lcom/hiya/stingray/manager/h2$c;->d:Lcom/hiya/stingray/q/c/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/d;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v0, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/hiya/stingray/manager/h2$c;->d:Lcom/hiya/stingray/q/c/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/d;->h()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 5
    sget-object v0, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private j(Lcom/hiya/stingray/manager/h2$c;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object v0

    sget-object v2, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/hiya/stingray/manager/h2$c;->c:Lg/g/a/a/i/o/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lg/g/a/a/i/o/b;->getProfileTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/hiya/stingray/manager/h2$c;->a:Lcom/hiya/stingray/q/c/i/c;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/c;->Y0()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    move-object v1, v0

    :cond_4
    return-object v1
.end method

.method private k(Lcom/hiya/stingray/t/z0;)Lcom/hiya/stingray/q/c/h/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/q/c/h/a;->NEUTRAL:Lcom/hiya/stingray/q/c/h/a;

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/hiya/stingray/manager/h2$b;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/q/c/h/a;->FRAUD:Lcom/hiya/stingray/q/c/h/a;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/hiya/stingray/q/c/h/a;->SPAM:Lcom/hiya/stingray/q/c/h/a;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private l(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/manager/h2$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private m(Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/util/i$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/i$b;->UNRECOGNIZED:Lcom/hiya/stingray/util/i$b;

    .line 2
    iget-object p1, p1, Lcom/hiya/stingray/manager/h2$c;->j:Lcom/hiya/stingray/t/e0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/e0;->f()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 4
    sget-object v0, Lcom/hiya/stingray/util/i$b;->MISSED:Lcom/hiya/stingray/util/i$b;

    :cond_0
    return-object v0
.end method

.method private n(Lcom/hiya/stingray/manager/h2$c;)J
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/hiya/stingray/manager/h2$c;->j:Lcom/hiya/stingray/t/e0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/e0;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private o(Lcom/hiya/stingray/q/c/h/b;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/h2$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "userAction should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v0
.end method

.method private p(Lcom/hiya/stingray/manager/h2$c;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/hiya/stingray/manager/h2$c;->b:Lcom/hiya/stingray/q/c/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-boolean p1, p1, Lcom/hiya/stingray/manager/h2$c;->g:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method private q()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Number is null."

    .line 1
    invoke-static {v1, v0}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/hiya/stingray/q/c/d;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->d:Lcom/hiya/stingray/q/c/d;

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public B(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-boolean p2, p1, Lcom/hiya/stingray/manager/h2$c;->h:Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method D(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/g1/a;
    .locals 6

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/g1/a;->m()Lcom/hiya/stingray/t/g1/a$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/h2;->c:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/manager/h2;->d:Lcom/hiya/stingray/q/b/x;

    invoke-static {p1, v1, v2}, Lcom/hiya/stingray/util/y;->e(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)Lg/g/c/a/c/a/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "PostCallOperation: Can\'t generate PhoneWithMeta for %s "

    .line 3
    invoke-static {p1, p2}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->f(Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/z0;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3}, Lcom/hiya/stingray/manager/h2;->k(Lcom/hiya/stingray/t/z0;)Lcom/hiya/stingray/q/c/h/a;

    move-result-object v3

    .line 6
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->t(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    .line 7
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->p(Lcom/hiya/stingray/manager/h2$c;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->s(Z)Lcom/hiya/stingray/t/g1/a$b;

    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->l:Lg/g/b/c/k;

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->d(Lg/g/b/c/k;)Lcom/hiya/stingray/util/i$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hiya/stingray/util/i$a;->UNKNOWN:Lcom/hiya/stingray/util/i$a;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->o(Lcom/hiya/stingray/util/i$a;)Lcom/hiya/stingray/t/g1/a$b;

    .line 9
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->m(Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/util/i$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->w(Lcom/hiya/stingray/util/i$b;)Lcom/hiya/stingray/t/g1/a$b;

    .line 10
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/g1/a$b;->u(Lg/g/c/a/c/a/b;)Lcom/hiya/stingray/t/g1/a$b;

    .line 11
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->n(Lcom/hiya/stingray/manager/h2$c;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/hiya/stingray/t/g1/a$b;->x(J)Lcom/hiya/stingray/t/g1/a$b;

    .line 12
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->j(Lcom/hiya/stingray/manager/h2$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->v(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    sget-object p1, Lcom/hiya/stingray/q/c/g/a;->PHONE_CALL:Lcom/hiya/stingray/q/c/g/a;

    .line 13
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/g1/a$b;->q(Lcom/hiya/stingray/q/c/g/a;)Lcom/hiya/stingray/t/g1/a$b;

    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->j:Lcom/hiya/stingray/t/e0;

    if-nez p1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/e0;->c()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/t/g1/a$b;->p(I)Lcom/hiya/stingray/t/g1/a$b;

    .line 15
    invoke-direct {p0, v0, p2, v3}, Lcom/hiya/stingray/manager/h2;->F(Lcom/hiya/stingray/t/g1/a$b;Lcom/hiya/stingray/manager/h2$c;Lcom/hiya/stingray/q/c/h/a;)V

    .line 16
    invoke-virtual {v0}, Lcom/hiya/stingray/t/g1/a$b;->m()Lcom/hiya/stingray/t/g1/a;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/manager/h2$c;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/stingray/manager/h2$c;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/h2$c;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/h2;->l(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/hiya/stingray/manager/h2$c;->n:Lcom/hiya/stingray/q/c/h/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/hiya/stingray/manager/h2;->C(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;Z)Lcom/hiya/stingray/t/g1/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->a(Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->h()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Skipping PhoneSendEvent %s - missing sources or userAction"

    .line 7
    invoke-static {p1, p2}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Li/c/b0/b/e;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/h2;->l(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/manager/o2;->f()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/hiya/stingray/manager/h2$c;->m:Lcom/hiya/stingray/service/a/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, p3}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/hiya/stingray/manager/h2$c;->e:Z

    .line 4
    invoke-virtual {p2, p3}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/hiya/stingray/manager/h2$c;->f:Z

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/manager/h2;->D(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/g1/a;

    move-result-object p2

    .line 6
    iget-object p3, p0, Lcom/hiya/stingray/manager/h2;->e:Lcom/hiya/stingray/manager/j3;

    invoke-virtual {p3, p1, v0}, Lcom/hiya/stingray/manager/j3;->b(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)V

    .line 7
    iget-object p3, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 8
    invoke-virtual {p2}, Lcom/hiya/stingray/t/g1/a;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "PostCallOperation: Caching event with phone number %s - %s"

    invoke-static {p1, p3}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/h2;->a(Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "PostCallOperation: Skipping PhoneSendEvent %s - missing sources, onCallObject, autoBlockType or feature is disabled."

    .line 11
    invoke-static {p1, p2}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/h2;->l(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/hiya/stingray/manager/h2$c;->d:Lcom/hiya/stingray/q/c/d;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/manager/h2;->E(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/g1/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/h2;->a(Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e;->h()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Skipping PhoneSendEvent - number is null, empty, or a private number."

    .line 5
    invoke-static {v1, v0}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/h2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/h2;->l(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/hiya/stingray/manager/h2$c;->o:Z

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;Lcom/hiya/stingray/service/a/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_WAIT:Lcom/hiya/stingray/service/a/a;

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->m:Lcom/hiya/stingray/service/a/a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public t(Ljava/lang/String;Lcom/hiya/stingray/q/c/h/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->n:Lcom/hiya/stingray/q/c/h/b;

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-boolean p2, p1, Lcom/hiya/stingray/manager/h2$c;->i:Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;Lcom/hiya/stingray/t/e0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->j:Lcom/hiya/stingray/t/e0;

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Lg/g/b/c/f;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;Lg/g/b/c/k;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->l:Lg/g/b/c/k;

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public y(Ljava/lang/String;Lcom/hiya/stingray/q/c/i/c;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-object p2, p1, Lcom/hiya/stingray/manager/h2$c;->a:Lcom/hiya/stingray/q/c/i/c;

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method

.method public z(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/h2;->b(Ljava/lang/String;)Lcom/hiya/stingray/manager/h2$c;

    move-result-object p1

    iput-boolean p2, p1, Lcom/hiya/stingray/manager/h2$c;->g:Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/h2;->q()V

    :goto_0
    return-void
.end method
