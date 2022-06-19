.class public Lio/realm/internal/OsObjectSchemaInfo$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObjectSchemaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:Z

.field private d:I

.field private final e:[J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->d:I

    .line 3
    iput v0, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->f:I

    .line 4
    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->a:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->c:Z

    .line 6
    new-array p1, p3, [J

    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->b:[J

    .line 7
    new-array p1, p4, [J

    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->e:[J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;
    .locals 0

    .line 1
    invoke-static {p2, p5}, Lio/realm/internal/Property;->a(Lio/realm/RealmFieldType;Z)I

    move-result p2

    .line 2
    invoke-static {p1, p2, p3, p4}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;IZZ)J

    move-result-wide p1

    .line 3
    iget-object p3, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->b:[J

    iget p4, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->d:I

    aput-wide p1, p3, p4

    add-int/lit8 p4, p4, 0x1

    .line 4
    iput p4, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->d:I

    return-object p0
.end method

.method public b()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 6

    .line 1
    iget v0, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->f:I

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo;

    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->c:Z

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;ZLio/realm/internal/OsObjectSchemaInfo$a;)V

    .line 3
    invoke-static {v0}, Lio/realm/internal/OsObjectSchemaInfo;->a(Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iget-object v4, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->b:[J

    iget-object v5, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->e:[J

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsObjectSchemaInfo;->b(J[J[J)V

    .line 4
    iput v1, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->d:I

    .line 5
    iput v1, p0, Lio/realm/internal/OsObjectSchemaInfo$b;->f:I

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'OsObjectSchemaInfo.build()\' has been called before on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
