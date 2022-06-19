.class public final Le/a/a/c/k/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k/a/h;


# instance fields
.field public final a:Le/a/o5/b0;


# direct methods
.method public constructor <init>(Le/a/o5/b0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dateHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/conversation/ConversationMode;JJ)Ljava/lang/String;
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p1, p2, p3}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lcom/truecaller/messaging/conversation/ConversationMode;->SCHEDULE:Lcom/truecaller/messaging/conversation/ConversationMode;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p1, p4, p5}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p2

    .line 4
    iget-wide p2, p2, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-interface {p1, p4, p5, p2, p3}, Le/a/o5/b0;->u(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p1, p4, p5}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p1, p4, p5}, Le/a/o5/b0;->w(J)Z

    move-result p1

    const/16 p2, 0x20

    if-eqz p1, :cond_3

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    const-string v0, "dd MMM"

    invoke-interface {p3, p4, p5, v0}, Le/a/o5/b0;->t(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p2, p4, p5}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    const-string v0, "dd MMM YYYY"

    invoke-interface {p3, p4, p5, v0}, Le/a/o5/b0;->t(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/a/a/c/k/a/i;->a:Le/a/o5/b0;

    invoke-interface {p2, p4, p5}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
