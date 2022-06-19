.class public Lio/realm/internal/core/DescriptorOrdering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/h;


# static fields
.field private static final h:J


# instance fields
.field private final f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/core/DescriptorOrdering;->nativeGetFinalizerMethodPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/core/DescriptorOrdering;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/realm/internal/core/DescriptorOrdering;->g:Z

    .line 3
    invoke-static {}, Lio/realm/internal/core/DescriptorOrdering;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/core/DescriptorOrdering;->f:J

    return-void
.end method

.method private static native nativeAppendSort(JLio/realm/internal/core/QueryDescriptor;)V
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeGetFinalizerMethodPtr()J
.end method

.method private static native nativeIsEmpty(J)Z
.end method


# virtual methods
.method public a(Lio/realm/internal/core/QueryDescriptor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/core/DescriptorOrdering;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/realm/internal/core/DescriptorOrdering;->f:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/core/DescriptorOrdering;->nativeAppendSort(JLio/realm/internal/core/QueryDescriptor;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/realm/internal/core/DescriptorOrdering;->g:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A sorting order was already defined. It cannot be redefined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/core/DescriptorOrdering;->f:J

    invoke-static {v0, v1}, Lio/realm/internal/core/DescriptorOrdering;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/core/DescriptorOrdering;->h:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/core/DescriptorOrdering;->f:J

    return-wide v0
.end method
