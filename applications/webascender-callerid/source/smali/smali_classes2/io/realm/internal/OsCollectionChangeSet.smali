.class public Lio/realm/internal/OsCollectionChangeSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/u;
.implements Lio/realm/internal/h;


# static fields
.field private static h:J


# instance fields
.field private final f:J

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsCollectionChangeSet;->h:J

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    .line 3
    iput-boolean p3, p0, Lio/realm/internal/OsCollectionChangeSet;->g:Z

    .line 4
    sget-object p1, Lio/realm/internal/g;->c:Lio/realm/internal/g;

    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method private g([I)[Lio/realm/u$a;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lio/realm/u$a;

    return-object p1

    .line 1
    :cond_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lio/realm/u$a;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    new-instance v3, Lio/realm/u$a;

    mul-int/lit8 v4, v0, 0x2

    aget v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-direct {v3, v5, v4}, Lio/realm/u$a;-><init>(II)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetRanges(JI)[I
.end method


# virtual methods
.method public a()[Lio/realm/u$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/OsCollectionChangeSet;->g([I)[Lio/realm/u$a;

    move-result-object v0

    return-object v0
.end method

.method public b()[Lio/realm/u$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/OsCollectionChangeSet;->g([I)[Lio/realm/u$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()[Lio/realm/u$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;->nativeGetRanges(JI)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/OsCollectionChangeSet;->g([I)[Lio/realm/u$a;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsCollectionChangeSet;->g:Z

    return v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsCollectionChangeSet;->h:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsCollectionChangeSet;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "Change set is empty."

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deletion Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->b()[Lio/realm/u$a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nInsertion Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->d()[Lio/realm/u$a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChange Ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lio/realm/internal/OsCollectionChangeSet;->a()[Lio/realm/u$a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
