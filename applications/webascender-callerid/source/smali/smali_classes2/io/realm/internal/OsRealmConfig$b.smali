.class public Lio/realm/internal/OsRealmConfig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lio/realm/b0;

.field private b:Lio/realm/internal/OsSchemaInfo;

.field private c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field private d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->b:Lio/realm/internal/OsSchemaInfo;

    .line 3
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 4
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/realm/internal/OsRealmConfig$b;->e:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->f:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$b;->a:Lio/realm/b0;

    return-void
.end method


# virtual methods
.method public a(Z)Lio/realm/internal/OsRealmConfig$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/realm/internal/OsRealmConfig$b;->e:Z

    return-object p0
.end method

.method public b()Lio/realm/internal/OsRealmConfig;
    .locals 9

    .line 1
    new-instance v8, Lio/realm/internal/OsRealmConfig;

    iget-object v1, p0, Lio/realm/internal/OsRealmConfig$b;->a:Lio/realm/b0;

    iget-object v2, p0, Lio/realm/internal/OsRealmConfig$b;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lio/realm/internal/OsRealmConfig$b;->e:Z

    iget-object v4, p0, Lio/realm/internal/OsRealmConfig$b;->b:Lio/realm/internal/OsSchemaInfo;

    iget-object v5, p0, Lio/realm/internal/OsRealmConfig$b;->c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    iget-object v6, p0, Lio/realm/internal/OsRealmConfig$b;->d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/b0;Ljava/lang/String;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$a;)V

    return-object v8
.end method

.method public c(Ljava/io/File;)Lio/realm/internal/OsRealmConfig$b;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lio/realm/internal/OsSharedRealm$InitializationCallback;)Lio/realm/internal/OsRealmConfig$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$b;->d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    return-object p0
.end method

.method public e(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$b;->c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    return-object p0
.end method

.method public f(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$b;->b:Lio/realm/internal/OsSchemaInfo;

    return-object p0
.end method
