.class final Lio/realm/v0$a;
.super Lio/realm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:J

.field m:J

.field n:J

.field o:J

.field p:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/c;-><init>(I)V

    const-string v0, "RealmPhoneSendEvent"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->b(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "time"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->e:J

    const-string v0, "number"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->f:J

    const-string v0, "durationInSeconds"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->g:J

    const-string v0, "isContact"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->h:J

    const-string v0, "direction"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->i:J

    const-string v0, "termination"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->j:J

    const-string v0, "profileTag"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->k:J

    const-string v0, "eventType"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->l:J

    const-string v0, "userDisposition"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->m:J

    const-string v0, "clientDisposition"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->n:J

    const-string v0, "isBlackListed"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->o:J

    const-string v0, "shouldSend"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/v0$a;->p:J

    return-void
.end method


# virtual methods
.method protected final b(Lio/realm/internal/c;Lio/realm/internal/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/v0$a;

    .line 2
    check-cast p2, Lio/realm/v0$a;

    .line 3
    iget-wide v0, p1, Lio/realm/v0$a;->e:J

    iput-wide v0, p2, Lio/realm/v0$a;->e:J

    .line 4
    iget-wide v0, p1, Lio/realm/v0$a;->f:J

    iput-wide v0, p2, Lio/realm/v0$a;->f:J

    .line 5
    iget-wide v0, p1, Lio/realm/v0$a;->g:J

    iput-wide v0, p2, Lio/realm/v0$a;->g:J

    .line 6
    iget-wide v0, p1, Lio/realm/v0$a;->h:J

    iput-wide v0, p2, Lio/realm/v0$a;->h:J

    .line 7
    iget-wide v0, p1, Lio/realm/v0$a;->i:J

    iput-wide v0, p2, Lio/realm/v0$a;->i:J

    .line 8
    iget-wide v0, p1, Lio/realm/v0$a;->j:J

    iput-wide v0, p2, Lio/realm/v0$a;->j:J

    .line 9
    iget-wide v0, p1, Lio/realm/v0$a;->k:J

    iput-wide v0, p2, Lio/realm/v0$a;->k:J

    .line 10
    iget-wide v0, p1, Lio/realm/v0$a;->l:J

    iput-wide v0, p2, Lio/realm/v0$a;->l:J

    .line 11
    iget-wide v0, p1, Lio/realm/v0$a;->m:J

    iput-wide v0, p2, Lio/realm/v0$a;->m:J

    .line 12
    iget-wide v0, p1, Lio/realm/v0$a;->n:J

    iput-wide v0, p2, Lio/realm/v0$a;->n:J

    .line 13
    iget-wide v0, p1, Lio/realm/v0$a;->o:J

    iput-wide v0, p2, Lio/realm/v0$a;->o:J

    .line 14
    iget-wide v0, p1, Lio/realm/v0$a;->p:J

    iput-wide v0, p2, Lio/realm/v0$a;->p:J

    return-void
.end method
