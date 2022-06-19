.class public final Le/a/a/j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/j/g;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public final a(Le/a/q2/e0;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Le/a/q2/e0;
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v0

    const-string v1, "Unknown"

    if-eqz v0, :cond_0

    const-string p3, "Photo"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/truecaller/messaging/data/types/Entity;->w()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Video"

    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 3
    :goto_0
    invoke-static {p2}, Le/a/c/p/a;->l1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "Draft"

    goto :goto_1

    .line 4
    :cond_2
    iget v0, p2, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v1, "MMS"

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const-string v1, "IM"

    .line 5
    :cond_4
    :goto_1
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_5

    const-string p2, "Single"

    goto :goto_2

    :cond_5
    const-string p2, "Group"

    :goto_2
    const-string v0, "mediaType"

    .line 6
    invoke-virtual {p1, v0, p3}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string p3, "messageType"

    .line 7
    invoke-virtual {p1, p3, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string p3, "peer"

    .line 8
    invoke-virtual {p1, p3, p2}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entity"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Le/a/q2/e0;

    const-string v2, "MediaViewerAction"

    invoke-direct {v1, v2}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0, p1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 3
    invoke-virtual {p0, v1, p2, p3}, Le/a/a/j/g;->a(Le/a/q2/e0;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Le/a/q2/e0;

    .line 4
    invoke-virtual {v1}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/a/a/j/g;->a:Le/a/q2/a;

    invoke-interface {p2, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
