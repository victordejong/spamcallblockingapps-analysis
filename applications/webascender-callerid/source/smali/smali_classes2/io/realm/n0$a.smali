.class final Lio/realm/n0$a;
.super Lio/realm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/n0;
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


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/c;-><init>(I)V

    const-string v0, "RealmBlockNumberDTO"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->b(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/n0$a;->e:J

    const-string v0, "phone"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/n0$a;->f:J

    const-string v0, "isFullNumberType"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/n0$a;->g:J

    const-string v0, "createdAt"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/n0$a;->h:J

    const-string v0, "isBlacklistItem"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/n0$a;->i:J

    return-void
.end method


# virtual methods
.method protected final b(Lio/realm/internal/c;Lio/realm/internal/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/n0$a;

    .line 2
    check-cast p2, Lio/realm/n0$a;

    .line 3
    iget-wide v0, p1, Lio/realm/n0$a;->e:J

    iput-wide v0, p2, Lio/realm/n0$a;->e:J

    .line 4
    iget-wide v0, p1, Lio/realm/n0$a;->f:J

    iput-wide v0, p2, Lio/realm/n0$a;->f:J

    .line 5
    iget-wide v0, p1, Lio/realm/n0$a;->g:J

    iput-wide v0, p2, Lio/realm/n0$a;->g:J

    .line 6
    iget-wide v0, p1, Lio/realm/n0$a;->h:J

    iput-wide v0, p2, Lio/realm/n0$a;->h:J

    .line 7
    iget-wide v0, p1, Lio/realm/n0$a;->i:J

    iput-wide v0, p2, Lio/realm/n0$a;->i:J

    return-void
.end method
