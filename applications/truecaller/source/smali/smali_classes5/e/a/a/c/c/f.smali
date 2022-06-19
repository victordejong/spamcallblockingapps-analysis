.class public final Le/a/a/c/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

.field public final c:Le/a/q2/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/draft/DraftArguments;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "arguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/c/f;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    iput-object p2, p0, Le/a/a/c/c/f;->c:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)Le/a/q2/g$b;
    .locals 5

    .line 1
    new-instance v0, Le/a/q2/g$b;

    invoke-direct {v0, p1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "group"

    goto :goto_0

    :cond_0
    const-string p1, "121"

    :goto_0
    const-string p2, "peer"

    invoke-virtual {v0, p2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string p1, "contentType"

    .line 3
    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "tenor/gif"

    const/4 v1, 0x1

    .line 4
    invoke-static {p2, p3, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const-string p2, "image/gif"

    invoke-static {p2, p3, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v1

    :goto_2
    if-eqz p2, :cond_3

    const-string p1, "gif"

    goto :goto_5

    .line 5
    :cond_3
    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "image/"

    .line 6
    invoke-static {p3, p2, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "photo"

    goto :goto_5

    .line 7
    :cond_4
    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "video/"

    .line 8
    invoke-static {p3, p2, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "video"

    goto :goto_5

    .line 9
    :cond_5
    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/truecaller/messaging/data/types/Entity;->d:[Ljava/lang/String;

    array-length p2, p1

    move v3, v2

    :goto_3
    if-ge v3, p2, :cond_7

    aget-object v4, p1, v3

    .line 11
    invoke-static {p3, v4, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_4
    if-eqz v1, :cond_8

    const-string p1, "contact"

    goto :goto_5

    :cond_8
    const-string p1, "document"

    :goto_5
    const-string p2, "mediaType"

    .line 12
    invoke-virtual {v0, p2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 13
    iget-object p1, p0, Le/a/a/c/c/f;->b:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 14
    iget-boolean p1, p1, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->f:Z

    if-eqz p1, :cond_9

    const-string p1, "external"

    goto :goto_6

    :cond_9
    const-string p1, "tc"

    :goto_6
    const-string p2, "initiatedFrom"

    .line 15
    invoke-virtual {v0, p2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string p1, "AnalyticsEvent.Builder(n\u2026AL else InitiatedFrom.TC)"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b([Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V
    .locals 1

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/c/f;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FullScreenDraftView"

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Le/a/a/c/c/f;->a(Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)Le/a/q2/g$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    .line 4
    iget-object p2, p0, Le/a/a/c/c/f;->c:Le/a/q2/a;

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/a/c/c/f;->a:Z

    return-void
.end method
