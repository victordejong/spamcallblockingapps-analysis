.class public Lio/realm/internal/OsResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/h;
.implements Lio/realm/internal/ObservableCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsResults$c;,
        Lio/realm/internal/OsResults$b;,
        Lio/realm/internal/OsResults$a;
    }
.end annotation


# static fields
.field private static final m:J


# instance fields
.field private final f:J

.field private final g:Lio/realm/internal/OsSharedRealm;

.field private final h:Lio/realm/internal/g;

.field private final i:Lio/realm/internal/Table;

.field protected j:Z

.field private k:Z

.field protected final l:Lio/realm/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/j<",
            "Lio/realm/internal/ObservableCollection$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/OsResults;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsResults;->m:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->k:Z

    .line 3
    new-instance v1, Lio/realm/internal/j;

    invoke-direct {v1}, Lio/realm/internal/j;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsResults;->l:Lio/realm/internal/j;

    .line 4
    iput-object p1, p0, Lio/realm/internal/OsResults;->g:Lio/realm/internal/OsSharedRealm;

    .line 5
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/g;

    iput-object p1, p0, Lio/realm/internal/OsResults;->h:Lio/realm/internal/g;

    .line 6
    iput-object p2, p0, Lio/realm/internal/OsResults;->i:Lio/realm/internal/Table;

    .line 7
    iput-wide p3, p0, Lio/realm/internal/OsResults;->f:J

    .line 8
    invoke-virtual {p1, p0}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    .line 9
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->f()Lio/realm/internal/OsResults$c;

    move-result-object p1

    sget-object p2, Lio/realm/internal/OsResults$c;->QUERY:Lio/realm/internal/OsResults$c;

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->j:Z

    return-void
.end method

.method static synthetic a(Lio/realm/internal/OsResults;)Lio/realm/internal/OsSharedRealm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/realm/internal/OsResults;->g:Lio/realm/internal/OsSharedRealm;

    return-object p0
.end method

.method static synthetic b(Lio/realm/internal/OsResults;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/realm/internal/OsResults;->k:Z

    return p0
.end method

.method public static c(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->m()V

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/realm/internal/core/DescriptorOrdering;->getNativePtr()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsResults;->nativeCreateResults(JJJ)J

    move-result-wide v0

    .line 3
    new-instance p2, Lio/realm/internal/OsResults;

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->g()Lio/realm/internal/Table;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p2
.end method

.method protected static native nativeCreateResults(JJJ)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeEvaluateQueryIfNeeded(JZ)V
.end method

.method private static native nativeFirstRow(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeSort(JLio/realm/internal/core/QueryDescriptor;)J
.end method

.method private native nativeStopListening(J)V
.end method


# virtual methods
.method public d()Lio/realm/internal/OsResults;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->k:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->g:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/internal/OsResults;->i:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v3, v4}, Lio/realm/internal/OsResults;->nativeCreateSnapshot(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lio/realm/internal/OsResults;->k:Z

    return-object v0
.end method

.method public e()Lio/realm/internal/UncheckedRow;
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeFirstRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, p0, Lio/realm/internal/OsResults;->i:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->w(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lio/realm/internal/OsResults$c;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeGetMode(J)B

    move-result v0

    invoke-static {v0}, Lio/realm/internal/OsResults$c;->getByValue(B)Lio/realm/internal/OsResults$c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lio/realm/internal/Table;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults;->i:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/OsResults;->m:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->f:J

    return-wide v0
.end method

.method public h(I)Lio/realm/internal/UncheckedRow;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults;->i:Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->w(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->j:Z

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsResults;->f:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    return-void
.end method

.method public l(Ljava/lang/Object;Lio/realm/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/v<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/OsResults;->l:Lio/realm/internal/j;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/j;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/realm/internal/OsResults;->l:Lio/realm/internal/j;

    invoke-virtual {p1}, Lio/realm/internal/j;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide p1, p0, Lio/realm/internal/OsResults;->f:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/Object;Lio/realm/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/realm/internal/ObservableCollection$c;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableCollection$c;-><init>(Lio/realm/a0;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/OsResults;->l(Ljava/lang/Object;Lio/realm/v;)V

    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyChangeListeners(J)V
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    new-instance p1, Lio/realm/internal/d;

    invoke-direct {p1}, Lio/realm/internal/d;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->i()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-direct {v1, p1, p2, v2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    move-object p1, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->j:Z

    .line 5
    iget-object p2, p0, Lio/realm/internal/OsResults;->l:Lio/realm/internal/j;

    new-instance v0, Lio/realm/internal/ObservableCollection$a;

    invoke-direct {v0, p1}, Lio/realm/internal/ObservableCollection$a;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {p2, v0}, Lio/realm/internal/j;->c(Lio/realm/internal/j$a;)V

    return-void
.end method

.method public o(Lio/realm/internal/core/QueryDescriptor;)Lio/realm/internal/OsResults;
    .locals 5

    .line 1
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->g:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/internal/OsResults;->i:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsResults;->f:J

    invoke-static {v3, v4, p1}, Lio/realm/internal/OsResults;->nativeSort(JLio/realm/internal/core/QueryDescriptor;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method
