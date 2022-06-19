.class public final Lcom/hiya/client/callerid/ui/a0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/a0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/telecom/Call;

.field private final c:Lcom/hiya/client/callerid/ui/b0/j;

.field private final d:Lg/g/b/c/k;

.field private final e:J

.field private f:J

.field private g:Lcom/hiya/client/callerid/ui/b0/e;

.field private h:Z

.field private i:Z

.field private j:Lcom/hiya/client/callerid/ui/d$c;

.field private k:Z

.field private l:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/telecom/Call;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    const-string v3, "call"

    move-object/from16 v6, p1

    invoke-static {v6, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "countryIso"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "networkCountryIso"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    const-string v7, "call.details"

    invoke-static {v5, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/e0/a;->c(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v0, v7, v1

    .line 7
    invoke-static {v5, v7}, Lcom/hiya/client/callerid/ui/e0/g;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    move-object v5, v0

    const-string v1, "PhoneNumberUtil.formatPh\u2026 countryIso\n            )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/e0/a;->b(Landroid/telecom/Call;)Lg/g/b/c/k;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xff0

    const/16 v18, 0x0

    .line 9
    invoke-direct/range {v2 .. v18}, Lcom/hiya/client/callerid/ui/a0/c$b;-><init>(Ljava/lang/String;Landroid/telecom/Call;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;JJLcom/hiya/client/callerid/ui/b0/e;ZZLcom/hiya/client/callerid/ui/d$c;ZLjava/lang/Boolean;ILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/telecom/Call;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;JJLcom/hiya/client/callerid/ui/b0/e;ZZLcom/hiya/client/callerid/ui/d$c;ZLjava/lang/Boolean;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayOptions"

    invoke-static {p12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->c:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->d:Lg/g/b/c/k;

    iput-wide p5, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->e:J

    iput-wide p7, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->f:J

    iput-object p9, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->g:Lcom/hiya/client/callerid/ui/b0/e;

    iput-boolean p10, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->h:Z

    iput-boolean p11, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->i:Z

    iput-object p12, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->j:Lcom/hiya/client/callerid/ui/d$c;

    iput-boolean p13, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->k:Z

    iput-object p14, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->l:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/telecom/Call;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;JJLcom/hiya/client/callerid/ui/b0/e;ZZLcom/hiya/client/callerid/ui/d$c;ZLjava/lang/Boolean;ILkotlin/w/c/g;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    move-wide v10, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    move/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    .line 3
    new-instance v1, Lcom/hiya/client/callerid/ui/d$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v15, 0x0

    move-object/from16 p5, v1

    move/from16 p6, v4

    move/from16 p7, v5

    move-object/from16 p8, v6

    move/from16 p9, v7

    move-object/from16 p10, v15

    invoke-direct/range {p5 .. p10}, Lcom/hiya/client/callerid/ui/d$c;-><init>(ZZLg/g/b/c/f;ILkotlin/w/c/g;)V

    move-object v15, v1

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    move/from16 v16, p13

    :goto_6
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    move-object/from16 v17, v2

    goto :goto_7

    :cond_7
    move-object/from16 v17, p14

    :goto_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 4
    invoke-direct/range {v3 .. v17}, Lcom/hiya/client/callerid/ui/a0/c$b;-><init>(Ljava/lang/String;Landroid/telecom/Call;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;JJLcom/hiya/client/callerid/ui/b0/e;ZZLcom/hiya/client/callerid/ui/d$c;ZLjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->h:Z

    return-void
.end method

.method public final B(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->l:Ljava/lang/Boolean;

    return-void
.end method

.method public final C(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Landroid/telecom/Call;->playDtmfTone(C)V

    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->answer(I)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->i:Z

    return-void
.end method

.method public final c()Lcom/hiya/client/callerid/ui/b0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->g:Lcom/hiya/client/callerid/ui/b0/e;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const-string v1, "call.details"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lg/g/b/e/a/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->f:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->e:J

    return-wide v0
.end method

.method public final g()Lg/g/b/c/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->d:Lg/g/b/c/k;

    return-object v0
.end method

.method public final h()Lcom/hiya/client/callerid/ui/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->j:Lcom/hiya/client/callerid/ui/d$c;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->k:Z

    return v0
.end method

.method public final j()Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "Uri.EMPTY"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->h:Z

    return v0
.end method

.method public final n()Lcom/hiya/client/callerid/ui/b0/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->c:Lcom/hiya/client/callerid/ui/b0/j;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/e0/a;->c(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v0

    return v0
.end method

.method public final r()Lg/g/b/c/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/e0/a;->d(Landroid/telecom/Call;)Lg/g/b/c/t;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    return-void
.end method

.method public final t(Landroid/telecom/Call;)Z
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c$b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->b:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/e0/a;->e(Landroid/telecom/Call;)Z

    move-result v0

    return v0
.end method

.method public final w(Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->g:Lcom/hiya/client/callerid/ui/b0/e;

    return-void
.end method

.method public final x(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->f:J

    return-void
.end method

.method public final y(Lcom/hiya/client/callerid/ui/d$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->j:Lcom/hiya/client/callerid/ui/d$c;

    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/a0/c$b;->k:Z

    return-void
.end method
