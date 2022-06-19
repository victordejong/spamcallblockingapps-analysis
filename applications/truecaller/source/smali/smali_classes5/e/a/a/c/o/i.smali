.class public final Le/a/a/c/o/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/o/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/o5/l1;

.field public final d:Landroid/content/ContentResolver;

.field public final e:Le/a/h4/a;

.field public final f:Le/a/a/g/g;

.field public final g:Ls1/w/f;

.field public final h:Le/a/b0/o/a;

.field public final i:Le/a/a/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;Le/a/o5/l1;Landroid/content/ContentResolver;Le/a/h4/a;Le/a/a/g/g;Ls1/w/f;Le/a/b0/o/a;Le/a/a/i0;Le/a/u3/g;)V
    .locals 1
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/o5/l1;",
            "Landroid/content/ContentResolver;",
            "Le/a/h4/a;",
            "Le/a/a/g/g;",
            "Ls1/w/f;",
            "Le/a/b0/o/a;",
            "Le/a/a/i0;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ringtoneNotificationSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationNotificationChannelProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorFactory"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/o/i;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/o/i;->b:Lo3/a;

    iput-object p3, p0, Le/a/a/c/o/i;->c:Le/a/o5/l1;

    iput-object p4, p0, Le/a/a/c/o/i;->d:Landroid/content/ContentResolver;

    iput-object p5, p0, Le/a/a/c/o/i;->e:Le/a/h4/a;

    iput-object p6, p0, Le/a/a/c/o/i;->f:Le/a/a/g/g;

    iput-object p7, p0, Le/a/a/c/o/i;->g:Ls1/w/f;

    iput-object p8, p0, Le/a/a/c/o/i;->h:Le/a/b0/o/a;

    iput-object p9, p0, Le/a/a/c/o/i;->i:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Conversation;Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v2, "sound_uri"

    invoke-virtual {p0, v0, v1, v2, p3}, Le/a/a/c/o/i;->h(JLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/c/o/i;->g(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/c/o/i;->e:Le/a/h4/a;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Conversation;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "conversation.participantsText"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/c/o/i;->i:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->I2()Z

    move-result v1

    invoke-interface {v0, p3, p1, p2, v1}, Le/a/h4/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/a/c/o/i;->e:Le/a/h4/a;

    invoke-interface {p1, p3}, Le/a/h4/a;->d(Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Conversation;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 2
    iget-object v2, p0, Le/a/a/c/o/i;->d:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v3

    const-string p2, "ConversationsTable.getContentUri()"

    invoke-static {v3, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    const-string v4, "sound_uri"

    .line 5
    invoke-static/range {v2 .. v8}, Le/a/p5/s0/f;->H(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Le/a/a/c/o/i;->e:Le/a/h4/a;

    invoke-virtual {p0, p1}, Le/a/a/c/o/i;->g(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/h4/a;->c(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Le/a/a/c/o/i;->c:Le/a/o5/l1;

    invoke-interface {p2}, Le/a/o5/l1;->e()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    sget-object p1, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    const-string p1, "Truecaller Message"

    return-object p1

    .line 10
    :cond_2
    iget-object p2, p0, Le/a/a/c/o/i;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Le/a/a/c/o/i;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/c/o/i;->h:Le/a/b0/o/a;

    const-string v1, "deleteBackupDuplicates"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/c/o/i;->g:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/c/o/i$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/a/c/o/i$a;-><init>(Le/a/a/c/o/i;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/o/i;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Le/a/p5/s0/f;->g(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public e(JJLs1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p5, Ljava/lang/Long;

    invoke-direct {p5, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const-string p3, "muted"

    .line 2
    invoke-virtual {p0, p1, p2, p3, p5}, Le/a/a/c/o/i;->h(JLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;
    .locals 3

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v2, "conversation.participants"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/c/o/i;->e:Le/a/h4/a;

    invoke-virtual {p0, p1}, Le/a/a/c/o/i;->g(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/h4/a;->c(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final g(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "participants"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v0, "participants.first().normalizedAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only 1-2-1 conversations supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Le/a/a/c/o/i;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    invoke-interface {p1, v0}, Le/a/a/g/m;->r(Ljava/util/ArrayList;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    return-void
.end method
