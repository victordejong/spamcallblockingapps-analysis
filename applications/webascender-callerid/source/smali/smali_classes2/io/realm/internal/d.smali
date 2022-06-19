.class public Lio/realm/internal/d;
.super Lio/realm/internal/OsCollectionChangeSet;
.source "SourceFile"


# static fields
.field private static final i:[Lio/realm/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/realm/u$a;

    .line 1
    sput-object v0, Lio/realm/internal/d;->i:[Lio/realm/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public a()[Lio/realm/u$a;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/d;->i:[Lio/realm/u$a;

    return-object v0
.end method

.method public b()[Lio/realm/u$a;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/d;->i:[Lio/realm/u$a;

    return-object v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()[Lio/realm/u$a;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/d;->i:[Lio/realm/u$a;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->f()Z

    move-result v0

    return v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->getNativeFinalizerPtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
