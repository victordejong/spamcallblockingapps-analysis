.class public Lcom/truecaller/service/DialerNumberLookupService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Landroid/os/Messenger;

.field public b:Landroid/os/Handler;

.field public c:Le/a/k3/l/f;

.field public d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/a/k3/j/g;

.field public f:Le/a/b0/e/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/data/entity/Number;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p4}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "normalizedNumber"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4}, Lcom/truecaller/data/entity/Number;->o()I

    move-result v0

    const-string v1, "phoneType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p4}, Lcom/truecaller/data/entity/Number;->p()Ljava/lang/String;

    move-result-object p4

    const-string v0, "phoneLabel"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p4

    const-string v0, "displayName"

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    const p4, 0x7f120038

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, p4, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p4, 0x7f120039

    new-array v0, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p4, v0}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "spamString"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {p2, v1}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 10
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "imageUrl"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->N()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v0, "isBusiness"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p4

    const-string v0, "isSpam"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f08172e

    .line 14
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spamLogo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p2

    if-nez p2, :cond_3

    .line 16
    invoke-static {p0}, Le/a/o5/c2/r0;->a(Landroid/content/Context;)Le/a/o5/c2/k;

    move-result-object p2

    invoke-virtual {p2, p0}, Le/a/o5/c2/k;->b(Landroid/content/Context;)Le/a/o5/c2/k$c;

    move-result-object p2

    .line 17
    iget v0, p2, Le/a/o5/c2/k$c;->a:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "partnerLogo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1202dc

    .line 18
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "identifiedByText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Le/a/o5/c2/k$c;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const-string v0, "poweredByLogo"

    .line 20
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f12045d

    .line 21
    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "poweredByText"

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/truecaller/service/DialerNumberLookupService;->d:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l0/c;

    invoke-interface {p2, p3}, Le/a/l0/c;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p2

    invoke-virtual {p2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz p2, :cond_4

    .line 23
    iget-wide p2, p2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-lez p4, :cond_4

    const-string p4, "lastCall"

    .line 24
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->c:Le/a/k3/l/f;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v2}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Le/a/f4/g/p;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, "callerId"

    invoke-direct {v3, p0, v4, v5}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v4

    .line 6
    iput-object v4, v3, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/f4/g/p;->c(Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v3

    .line 8
    iput p3, v3, Le/a/f4/g/p;->o:I

    .line 9
    iput-boolean v1, v3, Le/a/f4/g/p;->g:Z

    .line 10
    iput-boolean v1, v3, Le/a/f4/g/p;->i:Z

    .line 11
    iput-boolean v1, v3, Le/a/f4/g/p;->j:Z

    .line 12
    iput-boolean v1, v3, Le/a/f4/g/p;->h:Z

    .line 13
    invoke-virtual {v3}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p3}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-virtual {p0, p2, v2, p1, v0}, Lcom/truecaller/service/DialerNumberLookupService;->a(Landroid/os/Bundle;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/data/entity/Number;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0xbbb

    .line 4
    iput v4, v3, Landroid/os/Message;->what:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "phoneNumber"

    .line 6
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, p0, Lcom/truecaller/service/DialerNumberLookupService;->e:Le/a/k3/j/g;

    invoke-interface {v5, v4}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v5

    .line 8
    iget-object v6, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v6, Lcom/truecaller/data/entity/Contact;

    .line 10
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast v5, Lcom/truecaller/data/entity/Number;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {p0, v2, v6, v4, v5}, Lcom/truecaller/service/DialerNumberLookupService;->a(Landroid/os/Bundle;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/data/entity/Number;)V

    :cond_1
    :goto_0
    const/16 v5, 0x3e9

    .line 13
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x2

    .line 14
    invoke-virtual {p0, v4, v2, v5}, Lcom/truecaller/service/DialerNumberLookupService;->b(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x7d2

    if-ne v5, v6, :cond_3

    .line 15
    invoke-virtual {p0, v4, v2, v7}, Lcom/truecaller/service/DialerNumberLookupService;->b(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 17
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const-string v3, "imageUrl"

    .line 19
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 21
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 22
    :try_start_1
    invoke-static {p0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v4

    check-cast v4, Le/a/z3/e;

    .line 23
    invoke-virtual {v4}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v2}, Le/a/z3/d;->j0(Landroid/net/Uri;)Le/a/z3/d;

    const/16 v5, 0x320

    .line 25
    invoke-virtual {v4, v5, v5}, Le/a/z3/d;->n0(II)Le/a/z3/d;

    move-result-object v4

    sget-object v5, Le/f/a/n/q/d/m;->a:Le/f/a/n/q/d/m;

    .line 26
    invoke-virtual {v4, v5}, Le/a/z3/d;->g0(Le/f/a/n/q/d/m;)Le/a/z3/d;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Le/a/z3/d;->c0()Le/a/z3/d;

    move-result-object v4

    .line 28
    invoke-static {v4, v2}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/h;

    invoke-virtual {v2}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v2, Le/f/a/r/f;

    :try_start_2
    invoke-virtual {v2}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .line 29
    :catchall_0
    iget-object v2, p0, Lcom/truecaller/service/DialerNumberLookupService;->b:Landroid/os/Handler;

    if-eqz v2, :cond_6

    const/16 v4, 0xfa4

    .line 30
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-eqz v3, :cond_5

    .line 31
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 32
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    :try_start_3
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x4b

    invoke-virtual {v3, v6, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 34
    new-instance v8, Lcom/truecaller/log/UnmutedException$f;

    const-string v9, "Cannot compress bitmap: "

    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 35
    :goto_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "image_data"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 36
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 37
    :try_start_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 38
    new-instance v4, Lcom/truecaller/log/UnmutedException$f;

    const-string v5, "Cannot recycle bitmap: "

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 39
    :cond_5
    :goto_3
    :try_start_5
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 40
    :catch_3
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/service/DialerNumberLookupService;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DialerLookup"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/truecaller/service/DialerNumberLookupService;->b:Landroid/os/Handler;

    .line 5
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/truecaller/service/DialerNumberLookupService;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->a:Landroid/os/Messenger;

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/service/DialerNumberLookupService;->c:Le/a/k3/l/f;

    .line 8
    invoke-interface {v0}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/service/DialerNumberLookupService;->d:Le/a/r2/f;

    .line 9
    invoke-interface {v0}, Le/a/j2;->B7()Le/a/k3/j/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/service/DialerNumberLookupService;->e:Le/a/k3/j/g;

    .line 10
    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->f:Le/a/b0/e/l;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->b:Landroid/os/Handler;

    .line 3
    iput-object v0, p0, Lcom/truecaller/service/DialerNumberLookupService;->a:Landroid/os/Messenger;

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
