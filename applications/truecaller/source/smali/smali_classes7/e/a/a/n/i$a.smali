.class public final Le/a/a/n/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/i;->a(JIILcom/truecaller/messaging/mediamanager/AttachmentType;Lcom/truecaller/messaging/mediamanager/SortOption;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/a/g/j0/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.mediamanager.MessageAttachmentFetcherImpl$fetchMessageAttachments$2"
    f = "MessageAttachmentFetcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/n/i;

.field public final synthetic f:Lcom/truecaller/messaging/mediamanager/AttachmentType;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public final synthetic i:J

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/n/i;Lcom/truecaller/messaging/mediamanager/AttachmentType;Ljava/lang/String;Lcom/truecaller/messaging/mediamanager/SortOption;JII[Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/i$a;->e:Le/a/a/n/i;

    iput-object p2, p0, Le/a/a/n/i$a;->f:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    iput-object p3, p0, Le/a/a/n/i$a;->g:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/n/i$a;->h:Lcom/truecaller/messaging/mediamanager/SortOption;

    iput-wide p5, p0, Le/a/a/n/i$a;->i:J

    iput p7, p0, Le/a/a/n/i$a;->j:I

    iput p8, p0, Le/a/a/n/i$a;->k:I

    iput-object p9, p0, Le/a/a/n/i$a;->l:[Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/n/i$a;

    iget-object v1, p0, Le/a/a/n/i$a;->e:Le/a/a/n/i;

    iget-object v2, p0, Le/a/a/n/i$a;->f:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    iget-object v3, p0, Le/a/a/n/i$a;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/a/n/i$a;->h:Lcom/truecaller/messaging/mediamanager/SortOption;

    iget-wide v5, p0, Le/a/a/n/i$a;->i:J

    iget v7, p0, Le/a/a/n/i$a;->j:I

    iget v8, p0, Le/a/a/n/i$a;->k:I

    iget-object v9, p0, Le/a/a/n/i$a;->l:[Ljava/lang/String;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Le/a/a/n/i$a;-><init>(Le/a/a/n/i;Lcom/truecaller/messaging/mediamanager/AttachmentType;Ljava/lang/String;Lcom/truecaller/messaging/mediamanager/SortOption;JII[Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/n/i$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/n/i$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/n/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v0, p0, Le/a/a/n/i$a;->f:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    const-string v0, "entity_mime_type LIKE \'application/vnd.truecaller.linkpreview%\' OR entity_link IS NOT NULL"

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string v0, "entity_mime_type LIKE \'audio/%\'"

    goto :goto_0

    :cond_2
    const-string v0, "\n    NOT (\n    (entity_mime_type LIKE \'image/%\' AND entity_mime_type != \'image/gif\')\n    OR entity_mime_type LIKE \'video/%\'\n)\n        AND NOT (entity_mime_type LIKE \'audio/%\')\n        AND \n    entity_mime_type NOT IN (\n        \'image/gif\',\n        \'tenor/gif\',\n        \'application/vnd.truecaller.location\'\n    ) AND (\n        entity_mime_type != \'text/plain\' OR\n        entity_link IS NOT NULL\n    )\n\n        AND entity_mime_type NOT LIKE \'application/vnd.truecaller.linkpreview%\'\n        AND entity_link IS NULL\n"

    goto :goto_0

    :cond_3
    const-string v0, "\n    (entity_mime_type LIKE \'image/%\' AND entity_mime_type != \'image/gif\')\n    OR entity_mime_type LIKE \'video/%\'\n"

    .line 5
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v4, p0, Le/a/a/n/i$a;->g:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v7, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/a/n/i$a;->h:Lcom/truecaller/messaging/mediamanager/SortOption;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    const-string p1, "entity_size ASC"

    goto :goto_1

    .line 9
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_6
    const-string p1, "entity_size DESC"

    goto :goto_1

    :cond_7
    const-string p1, "message_sequence_number ASC, message_date ASC, message_id ASC"

    goto :goto_1

    :cond_8
    const-string p1, "message_sequence_number DESC, message_date DESC, message_id DESC"

    :goto_1
    move-object v9, p1

    .line 10
    iget-object p1, p0, Le/a/a/n/i$a;->e:Le/a/a/n/i;

    .line 11
    iget-object v4, p1, Le/a/a/n/i;->b:Landroid/content/ContentResolver;

    .line 12
    iget-wide v0, p0, Le/a/a/n/i$a;->i:J

    iget p1, p0, Le/a/a/n/i$a;->j:I

    iget v2, p0, Le/a/a/n/i$a;->k:I

    invoke-static {v0, v1, p1, v2}, Le/a/b0/q/g0;->h(JII)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    .line 13
    iget-object v8, p0, Le/a/a/n/i$a;->l:[Ljava/lang/String;

    .line 14
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 15
    iget-object v0, p0, Le/a/a/n/i$a;->e:Le/a/a/n/i;

    .line 16
    iget-object v0, v0, Le/a/a/n/i;->c:Le/a/a/g/g;

    .line 17
    invoke-interface {v0, p1}, Le/a/a/g/g;->h(Landroid/database/Cursor;)Le/a/a/g/j0/o;

    move-result-object p1

    return-object p1
.end method
