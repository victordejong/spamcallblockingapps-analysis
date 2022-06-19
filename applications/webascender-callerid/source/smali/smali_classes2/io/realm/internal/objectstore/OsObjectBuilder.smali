.class public Lio/realm/internal/objectstore/OsObjectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final f:Lio/realm/internal/Table;

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Lio/realm/internal/g;

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/Table;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/Table;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/Table;->t()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->g:J

    .line 4
    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Lio/realm/internal/Table;

    .line 5
    invoke-virtual {p1}, Lio/realm/internal/Table;->p()[Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->i:J

    .line 7
    invoke-static {}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateBuilder()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    .line 8
    iget-object p1, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->j:Lio/realm/internal/g;

    .line 9
    sget-object p1, Lio/realm/n;->CHECK_SAME_VALUES_BEFORE_SET:Lio/realm/n;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->k:Z

    return-void
.end method

.method private static native nativeAddBoolean(JJZ)V
.end method

.method private static native nativeAddInteger(JJJ)V
.end method

.method private static native nativeAddNull(JJ)V
.end method

.method private static native nativeAddString(JJLjava/lang/String;)V
.end method

.method private static native nativeCreateBuilder()J
.end method

.method private static native nativeCreateOrUpdateTopLevelObject(JJJZZ)J
.end method

.method private static native nativeDestroyBuilder(J)V
.end method


# virtual methods
.method public a(JLjava/lang/Boolean;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBoolean(JJZ)V

    :goto_0
    return-void
.end method

.method public b(JLjava/lang/Integer;)V
    .locals 8

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v6, p3

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    :goto_0
    return-void
.end method

.method public c(JLjava/lang/Long;)V
    .locals 8

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    return-void
.end method

.method public e(JLjava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddString(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f()Lio/realm/internal/UncheckedRow;
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->g:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->i:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdateTopLevelObject(JJJZZ)J

    move-result-wide v0

    .line 2
    new-instance v2, Lio/realm/internal/UncheckedRow;

    iget-object v3, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->j:Lio/realm/internal/g;

    iget-object v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    throw v0
.end method

.method public g()V
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->g:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->i:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->h:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->k:Z

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdateTopLevelObject(JJJZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    throw v0
.end method
