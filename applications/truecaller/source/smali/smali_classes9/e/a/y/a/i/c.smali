.class public final Le/a/y/a/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/i/b;


# instance fields
.field public a:Lcom/truecaller/flashsdk/models/FlashContact;

.field public b:Z

.field public c:Z

.field public d:I

.field public e:J

.field public final f:Le/a/y/a/i/d;

.field public final g:Le/a/y/b/w;

.field public final h:Le/a/y/b/g0;


# direct methods
.method public constructor <init>(Le/a/y/a/i/d;Le/a/y/b/w;Le/a/y/b/g0;)V
    .locals 1

    const-string v0, "onBoardingView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    iput-object p2, p0, Le/a/y/a/i/c;->g:Le/a/y/b/w;

    iput-object p3, p0, Le/a/y/a/i/c;->h:Le/a/y/b/g0;

    return-void
.end method


# virtual methods
.method public R0(I)V
    .locals 7

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->btnSend:I

    if-ne p1, v0, :cond_1

    .line 2
    iget-wide v0, p0, Le/a/y/a/i/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {p1}, Le/a/y/a/i/d;->close()V

    goto :goto_3

    :cond_0
    iget-object p1, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {p1}, Le/a/y/a/i/d;->N3()V

    goto :goto_3

    .line 3
    :cond_1
    sget v0, Lcom/truecaller/flashsdk/R$id;->tryFlashYourself:I

    if-ne p1, v0, :cond_5

    .line 4
    iget-object p1, p0, Le/a/y/a/i/c;->a:Lcom/truecaller/flashsdk/models/FlashContact;

    if-eqz p1, :cond_5

    .line 5
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/FlashContact;->a:Ljava/lang/String;

    .line 6
    new-instance v1, Ls1/f0/h;

    const-string v2, "^[+]"

    invoke-direct {v1, v2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "input"

    .line 7
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "replacement"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v1, Ls1/f0/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativePattern.matcher(in\u2026replaceFirst(replacement)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 10
    iget-object v2, p1, Lcom/truecaller/flashsdk/models/FlashContact;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 11
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 12
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/FlashContact;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    .line 13
    iget-object v6, p1, Lcom/truecaller/flashsdk/models/FlashContact;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 14
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/FlashContact;->c:Ljava/lang/String;

    aput-object p1, v5, v4

    const-string p1, "%s %s"

    const-string v3, "java.lang.String.format(format, *args)"

    .line 15
    invoke-static {v5, v2, p1, v3}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :goto_2
    iget-object v2, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v2, p1, v0, v1}, Le/a/y/a/i/d;->u8(Ljava/lang/String;J)V

    :cond_5
    :goto_3
    return-void
.end method

.method public S0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/y/a/i/c;->b:Z

    .line 2
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0}, Le/a/y/a/i/d;->Y1()V

    .line 3
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0}, Le/a/y/a/i/d;->L7()V

    return-void
.end method

.method public T0(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y/a/i/c;->g:Le/a/y/b/w;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "first_time_user"

    invoke-interface {v0, v2, v1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "to_phone"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Le/a/y/a/i/c;->e:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Le/a/y/a/i/c;->h:Le/a/y/b/g0;

    sget v0, Lcom/truecaller/flashsdk/R$string;->got_it:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 4
    :cond_1
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/c/i;->h()Lcom/truecaller/flashsdk/models/FlashContact;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Le/a/y/a/i/c;->a:Lcom/truecaller/flashsdk/models/FlashContact;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 5
    :goto_2
    iget-object v3, p0, Le/a/y/a/i/c;->h:Le/a/y/b/g0;

    .line 6
    sget v4, Lcom/truecaller/flashsdk/R$string;->intro_send_a_flash_to:I

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    const-string v5, "to_name"

    .line 7
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 p1, 0x2b

    invoke-static {p1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v5, p0, Le/a/y/a/i/c;->e:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v5, "extras?.getString(Consta\u2026ME) ?: \"+$recipientPhone\""

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v2, v1

    .line 8
    invoke-interface {v3, v4, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move v1, v0

    .line 9
    :goto_4
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0, v1, p1}, Le/a/y/a/i/d;->L(ZLjava/lang/String;)V

    return-void
.end method

.method public U0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/y/a/i/c;->b:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Le/a/y/a/i/c;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/a/y/a/i/c;->d:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0}, Le/a/y/a/i/d;->K5()V

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Le/a/y/a/i/c;->c:Z

    .line 5
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0}, Le/a/y/a/i/d;->T8()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/y/a/i/c;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/y/a/i/c;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0}, Le/a/y/a/i/d;->K5()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/y/a/i/c;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/y/a/i/c;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y/a/i/c;->f:Le/a/y/a/i/d;

    invoke-interface {v0}, Le/a/y/a/i/d;->W7()V

    :cond_0
    return-void
.end method
