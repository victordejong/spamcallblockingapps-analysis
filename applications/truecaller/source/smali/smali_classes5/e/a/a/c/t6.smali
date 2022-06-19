.class public final Le/a/a/c/t6;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/a/c/u6;",
        ">;",
        "Le/a/a/c/r6;"
    }
.end annotation


# instance fields
.field public final b:Le/a/r2/j;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/a/i0;

.field public final e:Le/a/a/c/n5;

.field public final f:Le/a/a/c/s4;

.field public final g:Le/a/a/c/h3;

.field public final h:Le/a/a/c/t3;

.field public final i:Le/a/a/c/l5;

.field public final j:Le/a/o5/b0;

.field public final k:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/r2/j;Le/a/r2/f;Le/a/a/i0;Le/a/a/c/n5;Le/a/a/c/s4;Le/a/a/c/h3;Le/a/a/c/t3;Le/a/a/c/l5;Le/a/o5/b0;Le/a/u3/g;)V
    .locals 1
    .param p1    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "UiThread"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;",
            "Le/a/a/i0;",
            "Le/a/a/c/n5;",
            "Le/a/a/c/s4;",
            "Le/a/a/c/h3;",
            "Le/a/a/c/t3;",
            "Le/a/a/c/l5;",
            "Le/a/o5/b0;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiThread"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imReactionManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationState"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationMessagesPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModePresenter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationBubbleInteractions"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/a/c/t6;->b:Le/a/r2/j;

    iput-object p2, p0, Le/a/a/c/t6;->c:Le/a/r2/f;

    iput-object p3, p0, Le/a/a/c/t6;->d:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    iput-object p5, p0, Le/a/a/c/t6;->f:Le/a/a/c/s4;

    iput-object p6, p0, Le/a/a/c/t6;->g:Le/a/a/c/h3;

    iput-object p7, p0, Le/a/a/c/t6;->h:Le/a/a/c/t3;

    iput-object p8, p0, Le/a/a/c/t6;->i:Le/a/a/c/l5;

    iput-object p9, p0, Le/a/a/c/t6;->j:Le/a/o5/b0;

    iput-object p10, p0, Le/a/a/c/t6;->k:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/a/a/c/u6;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/m5;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/a/c/u6;->ad()V

    goto/16 :goto_8

    .line 6
    :cond_0
    invoke-interface {p1}, Le/a/a/c/u6;->yg()V

    .line 7
    iget-object v0, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/n5;->g()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1201d5

    goto :goto_0

    :cond_1
    const v1, 0x7f1201d6

    :goto_0
    const v2, 0x7f0a0079

    .line 9
    invoke-interface {p1, v2, v1}, Le/a/a/c/u6;->G4(II)V

    .line 10
    iget v1, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5

    .line 11
    iget-object v1, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v1}, Le/a/a/c/m5;->H()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget v1, v0, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 v1, v1, 0x7c

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v1}, Le/a/a/c/m5;->d1()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/a/a/c/t6;->k:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    .line 15
    iget-object v1, p0, Le/a/a/c/t6;->c:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/c0;

    .line 16
    iget-wide v5, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 17
    invoke-interface {v1, v5, v6}, Le/a/a/k/a/c0;->f(J)Le/a/r2/x;

    move-result-object v1

    .line 18
    iget-object v5, p0, Le/a/a/c/t6;->b:Le/a/r2/j;

    new-instance v6, Le/a/a/c/s6;

    invoke-direct {v6, p0, v0}, Le/a/a/c/s6;-><init>(Le/a/a/c/t6;Lcom/truecaller/messaging/data/types/Message;)V

    invoke-virtual {v1, v5, v6}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    .line 19
    :cond_6
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v5, "entities"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v1

    move v6, v3

    :goto_3
    const/4 v7, 0x0

    if-ge v6, v5, :cond_9

    aget-object v8, v1, v6

    .line 20
    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->t()Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, v8, Lcom/truecaller/messaging/data/types/Entity;->c:I

    if-nez v9, :cond_7

    move v9, v4

    goto :goto_4

    :cond_7
    move v9, v3

    :goto_4
    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    move-object v8, v7

    :goto_5
    const/4 v1, 0x5

    if-eqz v8, :cond_a

    .line 21
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/c/u6;

    if-eqz v3, :cond_e

    new-instance v5, Le/a/a/c/g3;

    invoke-direct {v5, v4, v7, v8, v2}, Le/a/a/c/g3;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    invoke-interface {v3, v5}, Le/a/a/c/u6;->oq(Le/a/a/c/g3;)V

    goto/16 :goto_7

    .line 22
    :cond_a
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message.buildMessageText()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v4}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 24
    invoke-static {v5, v1}, Ln3/k/g/f/b;->c(Landroid/text/Spannable;I)Z

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const-class v8, Landroid/text/style/URLSpan;

    invoke-virtual {v5, v3, v6, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    const-string v8, "spannableString.getSpans\u2026gth, URLSpan::class.java)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_e

    .line 26
    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v5, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v7, Le/a/a/c/g3;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v3, v4, v2}, Le/a/a/c/g3;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 28
    :cond_b
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "Uri.parse(originalUrl)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v5, "maps.google.com"

    invoke-static {v5, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v7, Le/a/a/c/g3;

    const/4 v2, 0x3

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v4, v3}, Le/a/a/c/g3;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 29
    :cond_c
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v7, Le/a/a/c/g3;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v4, v3}, Le/a/a/c/g3;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_6
    if-eqz v7, :cond_e

    .line 30
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/u6;

    if-eqz v2, :cond_e

    invoke-interface {v2, v7}, Le/a/a/c/u6;->oq(Le/a/a/c/g3;)V

    .line 31
    :cond_e
    :goto_7
    invoke-static {v0}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 32
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33
    iget v3, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eq v3, v1, :cond_12

    .line 34
    iget-object v1, p0, Le/a/a/c/t6;->i:Le/a/a/c/l5;

    invoke-interface {v1, v0}, Le/a/a/c/l5;->G(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " \u2022 "

    if-eqz v1, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35
    :cond_f
    iget-object v1, p0, Le/a/a/c/t6;->i:Le/a/a/c/l5;

    invoke-interface {v1, v0}, Le/a/a/c/l5;->y(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 36
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37
    iget-object v1, p0, Le/a/a/c/t6;->i:Le/a/a/c/l5;

    invoke-interface {v1, v0}, Le/a/a/c/l5;->g(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 38
    :cond_10
    iget-object v1, p0, Le/a/a/c/t6;->i:Le/a/a/c/l5;

    invoke-interface {v1, v0}, Le/a/a/c/l5;->M(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39
    :cond_11
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 40
    :cond_12
    iget-object v1, p0, Le/a/a/c/t6;->j:Le/a/o5/b0;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v3, "message.date"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-wide v3, v0, Lw3/b/a/e0/e;->a:J

    .line 42
    invoke-interface {v1, v3, v4}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    invoke-interface {p1, v2}, Le/a/a/c/u6;->nA(Landroid/text/SpannableStringBuilder;)V

    goto :goto_8

    .line 44
    :cond_13
    invoke-interface {p1}, Le/a/a/c/u6;->jx()V

    :goto_8
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/m5;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/t6;->g:Le/a/a/c/h3;

    invoke-interface {v0}, Le/a/a/c/h3;->L6()V

    :cond_0
    return-void
.end method

.method public f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/m5;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/t6;->h:Le/a/a/c/t3;

    iget-object v1, p0, Le/a/a/c/t6;->e:Le/a/a/c/n5;

    invoke-interface {v1}, Le/a/a/c/n5;->g()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/t3;->r0(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_0
    return-void
.end method
