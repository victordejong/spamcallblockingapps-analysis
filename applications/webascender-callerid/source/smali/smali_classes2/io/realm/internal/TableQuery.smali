.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/h;


# static fields
.field private static final i:J


# instance fields
.field private final f:Lio/realm/internal/Table;

.field private final g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/TableQuery;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/TableQuery;->i:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->h:Z

    .line 3
    iput-object p2, p0, Lio/realm/internal/TableQuery;->f:Lio/realm/internal/Table;

    .line 4
    iput-wide p3, p0, Lio/realm/internal/TableQuery;->g:J

    .line 5
    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    return-void
.end method

.method private native nativeAlwaysFalse(J)V
.end method

.method private native nativeEndGroup(J)V
.end method

.method private native nativeEqual(J[J[JJ)V
.end method

.method private native nativeEqual(J[J[JLjava/lang/String;Z)V
.end method

.method private native nativeEqual(J[J[JZ)V
.end method

.method private native nativeFind(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGreater(J[J[JJ)V
.end method

.method private native nativeGroup(J)V
.end method

.method private native nativeIsNull(J[J[J)V
.end method

.method private native nativeLess(J[J[JJ)V
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeAlwaysFalse(J)V

    return-void
.end method

.method public b()Lio/realm/internal/TableQuery;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeEndGroup(J)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public c([J[JJ)Lio/realm/internal/TableQuery;
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->g:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JJ)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public d([J[JLjava/lang/String;Lio/realm/d;)Lio/realm/internal/TableQuery;
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-virtual {p4}, Lio/realm/d;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JLjava/lang/String;Z)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public e([J[JZ)Lio/realm/internal/TableQuery;
    .locals 6

    .line 1
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->g:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JZ)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public f()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->m()V

    .line 2
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeFind(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lio/realm/internal/Table;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/TableQuery;->f:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/TableQuery;->i:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    return-wide v0
.end method

.method public h([J[JJ)Lio/realm/internal/TableQuery;
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->g:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreater(J[J[JJ)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public i()Lio/realm/internal/TableQuery;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeGroup(J)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public j([J[J)Lio/realm/internal/TableQuery;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeIsNull(J[J[J)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public k([J[JJ)Lio/realm/internal/TableQuery;
    .locals 7

    .line 1
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->g:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLess(J[J[JJ)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method public l()Lio/realm/internal/TableQuery;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeOr(J)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->h:Z

    return-object p0
.end method

.method m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->h:Z

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->g:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->h:Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
