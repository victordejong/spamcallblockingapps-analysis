.class public final Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/client/callerid/ui/overlay/g/b;

.field private final c:Lg/g/b/a/b;

.field private final d:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/overlay/g/b;Lg/g/b/a/b;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDisplayTypeMapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ls/b;->b:Lcom/hiya/client/callerid/ui/overlay/g/b;

    iput-object p3, p0, Ls/b;->c:Lg/g/b/a/b;

    iput-object p4, p0, Ls/b;->d:Li/c/b0/c/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Ljava/lang/String;
    .locals 3

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventDirection"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p1

    const-string p3, ""

    if-eqz p2, :cond_10

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, v0, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->SAVED_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_d

    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->MULTI_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, v0, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, v0, :cond_5

    .line 5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p1

    sget-object p3, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    if-ne p1, p3, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_8

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    sget p2, Lcom/hiya/client/callerid/ui/s;->b:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object p3, p1

    const-string p1, "if (callerId.callerId.di\u2026ion\n                    }"

    .line 10
    invoke-static {p3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 11
    :cond_5
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, v0, :cond_7

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    :cond_6
    :goto_2
    move-object p3, p1

    goto/16 :goto_8

    .line 12
    :cond_7
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->SPAM:Lcom/hiya/client/callerid/ui/b0/d;

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->FRAUD:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, v0, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->NOT_IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, v0, :cond_a

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 16
    :cond_a
    sget-object p2, Lcom/hiya/client/callerid/ui/b0/d;->VOICEMAIL:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, p2, :cond_10

    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    sget p2, Lcom/hiya/client/callerid/ui/s;->m:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p1, "context.getString(R.string.hiya_voicemail)"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 17
    :cond_b
    :goto_4
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p1

    sget-object p3, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    if-ne p1, p3, :cond_c

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_c
    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    .line 18
    sget p2, Lcom/hiya/client/callerid/ui/s;->a:I

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p1, "context.getString(\n     \u2026by_hiya\n                )"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 20
    :cond_d
    :goto_5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_f

    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    .line 21
    sget p2, Lcom/hiya/client/callerid/ui/s;->h:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 23
    :cond_f
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    :goto_7
    move-object p3, p1

    const-string p1, "if (callerId.callerId.di\u2026llerId.displayDescription"

    .line 24
    invoke-static {p3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-object p3
.end method

.method public final b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;
    .locals 3

    const-string v0, "eventDirection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->SAVED_CONTACT:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ls/b;->b:Lcom/hiya/client/callerid/ui/overlay/g/b;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/b/c/f;->s()Lg/g/b/c/o;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/hiya/client/callerid/ui/overlay/g/b;->a(Lg/g/b/c/o;Lg/g/b/c/i;Lg/g/b/c/k;Lg/g/b/c/q;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

    :goto_1
    return-object p1
.end method

.method public final c(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)I
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventDirection"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p1

    sget-object p2, Ls/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 2
    sget p1, Lcom/hiya/client/callerid/ui/o;->u:I

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcom/hiya/client/callerid/ui/o;->w:I

    goto :goto_0

    .line 4
    :cond_1
    sget p1, Lcom/hiya/client/callerid/ui/o;->v:I

    :goto_0
    return p1
.end method

.method public final d(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Ljava/lang/String;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDirection"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p3

    if-eqz p2, :cond_4

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p3, v0, :cond_1

    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    sget p2, Lcom/hiya/client/callerid/ui/s;->d:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026iya_premium_warning_text)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/c;->f(Lcom/hiya/client/callerid/ui/b0/j;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataUtil.getLocationCityState(phoneNumber)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_4
    :goto_1
    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    sget p2, Lcom/hiya/client/callerid/ui/s;->f:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026ivate_caller_explanation)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final e(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Ljava/lang/String;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventDirection"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 2
    sget-object p3, Lcom/hiya/client/callerid/ui/b0/d;->PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object p3, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    sget p2, Lcom/hiya/client/callerid/ui/s;->e:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026ya_premium_warning_title)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->m()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneNumberUtil.formatPh\u2026PhoneNumber\n            )"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_4
    :goto_1
    iget-object p1, p0, Ls/b;->a:Landroid/content/Context;

    sget p2, Lcom/hiya/client/callerid/ui/s;->g:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.hiya_private_number)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final f(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Z
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventDirection"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p1

    sget-object p2, Ls/a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method public final g(Landroid/widget/ImageView;ILcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)V
    .locals 1

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "eventDirection"

    invoke-static {p5, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p4, p5}, Ls/b;->b(Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;)Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object p3

    if-eqz p4, :cond_7

    .line 2
    sget-object p5, Lcom/hiya/client/callerid/ui/b0/d;->PRIVATE:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p3, p5, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object p5, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    if-ne p3, p5, :cond_1

    sget p2, Lcom/hiya/client/callerid/ui/o;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p3

    sget-object p5, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    if-ne p3, p5, :cond_2

    .line 5
    sget p2, Lcom/hiya/client/callerid/ui/o;->e:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p3

    sget-object p5, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-ne p3, p5, :cond_3

    .line 8
    sget p2, Lcom/hiya/client/callerid/ui/o;->d:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 10
    :cond_3
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p5, 0x1

    if-nez p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 11
    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p2

    invoke-virtual {p2}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p2

    sget-object p3, Ls/a;->c:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    if-eq p2, p5, :cond_5

    .line 12
    sget p2, Lcom/hiya/client/callerid/ui/o;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 13
    :cond_5
    sget p2, Lcom/hiya/client/callerid/ui/o;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 14
    :cond_6
    iget-object p3, p0, Ls/b;->c:Lg/g/b/a/b;

    invoke-virtual {p4}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p4

    invoke-virtual {p4}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Ls/b;->a:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "context.packageName"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4, p5}, Lg/g/b/a/b;->l(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p3

    .line 15
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p4

    invoke-virtual {p3, p4}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p3

    .line 16
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p4

    invoke-virtual {p3, p4}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p3

    .line 17
    new-instance p4, Ls/b$a;

    invoke-direct {p4, p1, p2}, Ls/b$a;-><init>(Landroid/widget/ImageView;I)V

    .line 18
    new-instance p2, Ls/b$b;

    invoke-direct {p2, p1}, Ls/b$b;-><init>(Landroid/widget/ImageView;)V

    .line 19
    invoke-virtual {p3, p4, p2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 20
    iget-object p2, p0, Ls/b;->d:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_2

    .line 21
    :cond_7
    :goto_1
    sget p2, Lcom/hiya/client/callerid/ui/o;->b:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method
