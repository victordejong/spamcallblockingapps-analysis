.class public Ln3/y/b/a/q0/u/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/u/d$b;,
        Ln3/y/b/a/q0/u/d$a;
    }
.end annotation


# static fields
.field public static final I:[B

.field public static final J:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Ln3/y/b/a/q0/h;

.field public F:[Ln3/y/b/a/q0/p;

.field public G:[Ln3/y/b/a/q0/p;

.field public H:Z

.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/b/a/q0/u/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/y/b/a/x0/m;

.field public final f:Ln3/y/b/a/x0/m;

.field public final g:Ln3/y/b/a/x0/m;

.field public final h:[B

.field public final i:Ln3/y/b/a/x0/m;

.field public final j:Ln3/y/b/a/x0/v;

.field public final k:Ln3/y/b/a/s0/f/a;

.field public final l:Ln3/y/b/a/x0/m;

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/b/a/q0/u/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/b/a/q0/u/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:J

.field public r:I

.field public s:Ln3/y/b/a/x0/m;

.field public t:J

.field public u:I

.field public v:J

.field public w:J

.field public x:J

.field public y:Ln3/y/b/a/q0/u/d$b;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln3/y/b/a/q0/u/d;->I:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/q0/u/d;->J:Landroidx/media2/exoplayer/external/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILn3/y/b/a/x0/v;Ln3/y/b/a/q0/u/i;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/y/b/a/x0/v;",
            "Ln3/y/b/a/q0/u/i;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    or-int/2addr p1, p3

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/u/d;->a:I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/q0/u/d;->j:Ln3/y/b/a/x0/v;

    .line 4
    iput-object p4, p0, Ln3/y/b/a/q0/u/d;->c:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 5
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->b:Ljava/util/List;

    .line 6
    new-instance p1, Ln3/y/b/a/s0/f/a;

    invoke-direct {p1}, Ln3/y/b/a/s0/f/a;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->k:Ln3/y/b/a/s0/f/a;

    .line 7
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    .line 8
    new-instance p1, Ln3/y/b/a/x0/m;

    sget-object p3, Ln3/y/b/a/x0/k;->a:[B

    invoke-direct {p1, p3}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->e:Ln3/y/b/a/x0/m;

    .line 9
    new-instance p1, Ln3/y/b/a/x0/m;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->f:Ln3/y/b/a/x0/m;

    .line 10
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    new-array p1, p2, [B

    .line 11
    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->h:[B

    .line 12
    new-instance p2, Ln3/y/b/a/x0/m;

    invoke-direct {p2, p1}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object p2, p0, Ln3/y/b/a/q0/u/d;->i:Ln3/y/b/a/x0/m;

    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->n:Ljava/util/ArrayDeque;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide p1, p0, Ln3/y/b/a/q0/u/d;->w:J

    .line 17
    iput-wide p1, p0, Ln3/y/b/a/q0/u/d;->v:J

    .line 18
    iput-wide p1, p0, Ln3/y/b/a/q0/u/d;->x:J

    .line 19
    invoke-virtual {p0}, Ln3/y/b/a/q0/u/d;->b()V

    return-void
.end method

.method public static e(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/y/b/a/q0/u/a$b;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_a

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/q0/u/a$b;

    .line 3
    iget v6, v5, Ln3/y/b/a/q0/u/a;->a:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    .line 6
    new-instance v6, Ln3/y/b/a/x0/m;

    invoke-direct {v6, v5}, Ln3/y/b/a/x0/m;-><init>([B)V

    .line 7
    iget v8, v6, Ln3/y/b/a/x0/m;->c:I

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v6, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 9
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v8

    .line 10
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->a()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v10

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 14
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->r()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 15
    invoke-virtual {v6, v8}, Ln3/y/b/a/x0/m;->A(I)V

    .line 16
    :cond_5
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->r()I

    move-result v8

    .line 17
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->a()I

    move-result v10

    if-eq v8, v10, :cond_6

    :goto_1
    move-object v6, v2

    goto :goto_2

    .line 18
    :cond_6
    new-array v10, v8, [B

    .line 19
    iget-object v11, v6, Ln3/y/b/a/x0/m;->a:[B

    iget v12, v6, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v11, v12, v10, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v11, v6, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v11, v8

    iput v11, v6, Ln3/y/b/a/x0/m;->b:I

    .line 21
    new-instance v6, Ln3/y/b/a/q0/u/g;

    invoke-direct {v6, v9, v7, v10}, Ln3/y/b/a/q0/u/g;-><init>(Ljava/util/UUID;I[B)V

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    .line 22
    :cond_7
    iget-object v6, v6, Ln3/y/b/a/q0/u/g;->a:Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    new-instance v7, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    new-instance p0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    new-array v0, v1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 25
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {p0, v2, v1, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    move-object v2, p0

    :goto_5
    return-object v2
.end method

.method public static g(Ln3/y/b/a/x0/m;ILn3/y/b/a/q0/u/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->d()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->r()I

    move-result v1

    .line 4
    iget v2, p2, Ln3/y/b/a/q0/u/k;->e:I

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v2, p2, Ln3/y/b/a/q0/u/k;->m:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Ln3/y/b/a/q0/u/k;->a(I)V

    .line 7
    iget-object p1, p2, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    iget-object p1, p1, Ln3/y/b/a/x0/m;->a:[B

    iget v1, p2, Ln3/y/b/a/q0/u/k;->o:I

    invoke-virtual {p0, p1, v0, v1}, Ln3/y/b/a/x0/m;->c([BII)V

    .line 8
    iget-object p0, p2, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    invoke-virtual {p0, v0}, Ln3/y/b/a/x0/m;->z(I)V

    .line 9
    iput-boolean v0, p2, Ln3/y/b/a/q0/u/k;->q:Z

    return-void

    .line 10
    :cond_1
    new-instance p0, Ln3/y/b/a/c0;

    iget p1, p2, Ln3/y/b/a/q0/u/k;->e:I

    const/16 p2, 0x29

    const-string v0, "Length mismatch: "

    const-string v2, ", "

    invoke-static {p2, v0, v1, v2, p1}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ln3/y/b/a/c0;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/q0/u/d$b;

    invoke-virtual {v1}, Ln3/y/b/a/q0/u/d$b;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/q0/u/d;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Ln3/y/b/a/q0/u/d;->u:I

    .line 5
    iput-wide p3, p0, Ln3/y/b/a/q0/u/d;->v:J

    .line 6
    iget-object p1, p0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    iput-boolean p2, p0, Ln3/y/b/a/q0/u/d;->D:Z

    .line 8
    invoke-virtual {p0}, Ln3/y/b/a/q0/u/d;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/u/d;->o:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/u/d;->r:I

    return-void
.end method

.method public final c(Landroid/util/SparseArray;I)Ln3/y/b/a/q0/u/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ln3/y/b/a/q0/u/c;",
            ">;I)",
            "Ln3/y/b/a/q0/u/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/q0/u/c;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/q0/u/c;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ln3/y/b/a/q0/p;

    .line 2
    iput-object v0, p0, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    .line 3
    iget v3, p0, Ln3/y/b/a/q0/u/d;->a:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    iget-object v5, p0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-interface {v3, v5, v4}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v3

    aput-object v3, v0, v1

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    iget-object v3, p0, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/y/b/a/q0/p;

    iput-object v0, p0, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    .line 7
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 8
    sget-object v6, Ln3/y/b/a/q0/u/d;->J:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v5, v6}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/q0/u/d;->G:[Ln3/y/b/a/q0/p;

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Ln3/y/b/a/q0/u/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ln3/y/b/a/q0/p;

    iput-object v0, p0, Ln3/y/b/a/q0/u/d;->G:[Ln3/y/b/a/q0/p;

    .line 11
    :goto_2
    iget-object v0, p0, Ln3/y/b/a/q0/u/d;->G:[Ln3/y/b/a/q0/p;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 12
    iget-object v0, p0, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    iget-object v3, p0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v0

    .line 13
    iget-object v3, p0, Ln3/y/b/a/q0/u/d;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v3}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 14
    iget-object v3, p0, Ln3/y/b/a/q0/u/d;->G:[Ln3/y/b/a/q0/p;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Ln3/y/b/a/q0/u/h;->a(Ln3/y/b/a/q0/d;Z)Z

    move-result p1

    return p1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v9, :cond_2a

    const-wide v3, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v7, :cond_25

    const/4 v12, 0x6

    if-ne v2, v11, :cond_14

    .line 2
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    if-nez v2, :cond_7

    .line 3
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-object v15, v6

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    .line 5
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ln3/y/b/a/q0/u/d$b;

    .line 6
    iget v7, v10, Ln3/y/b/a/q0/u/d$b;->g:I

    iget-object v8, v10, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget v5, v8, Ln3/y/b/a/q0/u/k;->d:I

    if-ne v7, v5, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v5, v8, Ln3/y/b/a/q0/u/k;->f:[J

    aget-wide v7, v5, v7

    cmp-long v5, v7, v3

    if-gez v5, :cond_2

    move-wide v3, v7

    move-object v15, v10

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    if-nez v15, :cond_5

    .line 8
    iget-wide v2, v1, Ln3/y/b/a/q0/u/d;->t:J

    .line 9
    iget-wide v4, v0, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_4

    .line 10
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/u/d;->b()V

    const/4 v9, 0x0

    goto/16 :goto_12

    .line 12
    :cond_4
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    iget-object v2, v15, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v2, v2, Ln3/y/b/a/q0/u/k;->f:[J

    iget v3, v15, Ln3/y/b/a/q0/u/d$b;->g:I

    aget-wide v3, v2, v3

    .line 14
    iget-wide v7, v0, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v3, v7

    long-to-int v2, v3

    if-gez v2, :cond_6

    const/4 v2, 0x0

    .line 15
    :cond_6
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 16
    iput-object v15, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    .line 17
    :cond_7
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    iget-object v3, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v3, v3, Ln3/y/b/a/q0/u/k;->h:[I

    iget v4, v2, Ln3/y/b/a/q0/u/d$b;->e:I

    aget v3, v3, v4

    iput v3, v1, Ln3/y/b/a/q0/u/d;->z:I

    .line 18
    iget v5, v2, Ln3/y/b/a/q0/u/d$b;->h:I

    if-ge v4, v5, :cond_d

    .line 19
    invoke-virtual {v0, v3}, Ln3/y/b/a/q0/d;->h(I)V

    .line 20
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    .line 21
    invoke-virtual {v2}, Ln3/y/b/a/q0/u/d$b;->a()Ln3/y/b/a/q0/u/j;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_4

    .line 22
    :cond_8
    iget-object v4, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v4, v4, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    .line 23
    iget v3, v3, Ln3/y/b/a/q0/u/j;->d:I

    if-eqz v3, :cond_9

    .line 24
    invoke-virtual {v4, v3}, Ln3/y/b/a/x0/m;->A(I)V

    .line 25
    :cond_9
    iget-object v3, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget v2, v2, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 26
    iget-boolean v5, v3, Ln3/y/b/a/q0/u/k;->l:Z

    if-eqz v5, :cond_a

    iget-object v3, v3, Ln3/y/b/a/q0/u/k;->m:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_a

    move v2, v9

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_b

    .line 27
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    mul-int/2addr v2, v12

    invoke-virtual {v4, v2}, Ln3/y/b/a/x0/m;->A(I)V

    .line 28
    :cond_b
    :goto_4
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    invoke-virtual {v2}, Ln3/y/b/a/q0/u/d$b;->c()Z

    move-result v2

    if-nez v2, :cond_c

    .line 29
    iput-object v6, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    .line 30
    :cond_c
    iput v11, v1, Ln3/y/b/a/q0/u/d;->o:I

    goto/16 :goto_12

    .line 31
    :cond_d
    iget-object v2, v2, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    iget v2, v2, Ln3/y/b/a/q0/u/i;->g:I

    if-ne v2, v9, :cond_e

    add-int/lit8 v3, v3, -0x8

    .line 32
    iput v3, v1, Ln3/y/b/a/q0/u/d;->z:I

    const/16 v2, 0x8

    .line 33
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 34
    :cond_e
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    .line 35
    invoke-virtual {v2}, Ln3/y/b/a/q0/u/d$b;->a()Ln3/y/b/a/q0/u/j;

    move-result-object v3

    if-nez v3, :cond_f

    const/4 v2, 0x0

    goto :goto_8

    .line 36
    :cond_f
    iget v4, v3, Ln3/y/b/a/q0/u/j;->d:I

    if-eqz v4, :cond_10

    .line 37
    iget-object v3, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v3, v3, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    goto :goto_5

    .line 38
    :cond_10
    iget-object v3, v3, Ln3/y/b/a/q0/u/j;->e:[B

    .line 39
    iget-object v4, v2, Ln3/y/b/a/q0/u/d$b;->j:Ln3/y/b/a/x0/m;

    array-length v5, v3

    .line 40
    iput-object v3, v4, Ln3/y/b/a/x0/m;->a:[B

    .line 41
    iput v5, v4, Ln3/y/b/a/x0/m;->c:I

    const/4 v5, 0x0

    .line 42
    iput v5, v4, Ln3/y/b/a/x0/m;->b:I

    .line 43
    array-length v3, v3

    move-object/from16 v28, v4

    move v4, v3

    move-object/from16 v3, v28

    .line 44
    :goto_5
    iget-object v5, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget v7, v2, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 45
    iget-boolean v8, v5, Ln3/y/b/a/q0/u/k;->l:Z

    if-eqz v8, :cond_11

    iget-object v5, v5, Ln3/y/b/a/q0/u/k;->m:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_11

    move v5, v9

    goto :goto_6

    :cond_11
    const/4 v5, 0x0

    .line 46
    :goto_6
    iget-object v7, v2, Ln3/y/b/a/q0/u/d$b;->i:Ln3/y/b/a/x0/m;

    iget-object v8, v7, Ln3/y/b/a/x0/m;->a:[B

    if-eqz v5, :cond_12

    const/16 v10, 0x80

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_7
    or-int/2addr v10, v4

    int-to-byte v10, v10

    const/4 v13, 0x0

    aput-byte v10, v8, v13

    .line 47
    invoke-virtual {v7, v13}, Ln3/y/b/a/x0/m;->z(I)V

    .line 48
    iget-object v7, v2, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    iget-object v8, v2, Ln3/y/b/a/q0/u/d$b;->i:Ln3/y/b/a/x0/m;

    invoke-interface {v7, v8, v9}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 49
    iget-object v7, v2, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v7, v3, v4}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    if-nez v5, :cond_13

    add-int/lit8 v2, v4, 0x1

    goto :goto_8

    .line 50
    :cond_13
    iget-object v3, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v3, v3, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    .line 51
    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->t()I

    move-result v5

    const/4 v7, -0x2

    .line 52
    invoke-virtual {v3, v7}, Ln3/y/b/a/x0/m;->A(I)V

    mul-int/2addr v5, v12

    const/4 v7, 0x2

    add-int/2addr v5, v7

    .line 53
    iget-object v2, v2, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    invoke-interface {v2, v3, v5}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    add-int/lit8 v4, v4, 0x1

    add-int v2, v4, v5

    .line 54
    :goto_8
    iput v2, v1, Ln3/y/b/a/q0/u/d;->A:I

    .line 55
    iget v3, v1, Ln3/y/b/a/q0/u/d;->z:I

    add-int/2addr v3, v2

    iput v3, v1, Ln3/y/b/a/q0/u/d;->z:I

    const/4 v2, 0x4

    .line 56
    iput v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    const/4 v2, 0x0

    .line 57
    iput v2, v1, Ln3/y/b/a/q0/u/d;->B:I

    .line 58
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    iget-object v2, v2, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    iget-object v2, v2, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v3, "audio/ac4"

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Ln3/y/b/a/q0/u/d;->D:Z

    .line 60
    :cond_14
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    iget-object v3, v2, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 61
    iget-object v4, v2, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    .line 62
    iget-object v5, v2, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    .line 63
    iget v2, v2, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 64
    iget-object v7, v3, Ln3/y/b/a/q0/u/k;->j:[J

    aget-wide v13, v7, v2

    iget-object v7, v3, Ln3/y/b/a/q0/u/k;->i:[I

    aget v7, v7, v2

    int-to-long v7, v7

    add-long/2addr v13, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v13, v7

    .line 65
    iget-object v7, v1, Ln3/y/b/a/q0/u/d;->j:Ln3/y/b/a/x0/v;

    if-eqz v7, :cond_15

    .line 66
    invoke-virtual {v7, v13, v14}, Ln3/y/b/a/x0/v;->a(J)J

    move-result-wide v13

    .line 67
    :cond_15
    iget v7, v4, Ln3/y/b/a/q0/u/i;->j:I

    if-eqz v7, :cond_1d

    .line 68
    iget-object v8, v1, Ln3/y/b/a/q0/u/d;->f:Ln3/y/b/a/x0/m;

    iget-object v8, v8, Ln3/y/b/a/x0/m;->a:[B

    const/4 v10, 0x0

    .line 69
    aput-byte v10, v8, v10

    .line 70
    aput-byte v10, v8, v9

    const/4 v15, 0x2

    .line 71
    aput-byte v10, v8, v15

    add-int/lit8 v10, v7, 0x1

    rsub-int/lit8 v7, v7, 0x4

    .line 72
    :goto_9
    iget v15, v1, Ln3/y/b/a/q0/u/d;->A:I

    iget v11, v1, Ln3/y/b/a/q0/u/d;->z:I

    if-ge v15, v11, :cond_1f

    .line 73
    iget v11, v1, Ln3/y/b/a/q0/u/d;->B:I

    const-string v15, "video/hevc"

    if-nez v11, :cond_1b

    const/4 v6, 0x0

    .line 74
    invoke-virtual {v0, v8, v7, v10, v6}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 75
    iget-object v11, v1, Ln3/y/b/a/q0/u/d;->f:Ln3/y/b/a/x0/m;

    invoke-virtual {v11, v6}, Ln3/y/b/a/x0/m;->z(I)V

    .line 76
    iget-object v11, v1, Ln3/y/b/a/q0/u/d;->f:Ln3/y/b/a/x0/m;

    invoke-virtual {v11}, Ln3/y/b/a/x0/m;->d()I

    move-result v11

    if-lt v11, v9, :cond_1a

    add-int/lit8 v11, v11, -0x1

    .line 77
    iput v11, v1, Ln3/y/b/a/q0/u/d;->B:I

    .line 78
    iget-object v11, v1, Ln3/y/b/a/q0/u/d;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v11, v6}, Ln3/y/b/a/x0/m;->z(I)V

    .line 79
    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->e:Ln3/y/b/a/x0/m;

    const/4 v11, 0x4

    invoke-interface {v5, v6, v11}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 80
    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->f:Ln3/y/b/a/x0/m;

    invoke-interface {v5, v6, v9}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 81
    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->G:[Ln3/y/b/a/q0/p;

    array-length v6, v6

    if-lez v6, :cond_19

    iget-object v6, v4, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    aget-byte v18, v8, v11

    .line 82
    sget-object v11, Ln3/y/b/a/x0/k;->a:[B

    const-string v11, "video/avc"

    .line 83
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    and-int/lit8 v11, v18, 0x1f

    if-eq v11, v12, :cond_17

    .line 84
    :cond_16
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    and-int/lit8 v6, v18, 0x7e

    shr-int/2addr v6, v9

    const/16 v11, 0x27

    if-ne v6, v11, :cond_18

    :cond_17
    move v6, v9

    goto :goto_a

    :cond_18
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_19

    move v6, v9

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    .line 85
    :goto_b
    iput-boolean v6, v1, Ln3/y/b/a/q0/u/d;->C:Z

    .line 86
    iget v6, v1, Ln3/y/b/a/q0/u/d;->A:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v1, Ln3/y/b/a/q0/u/d;->A:I

    .line 87
    iget v6, v1, Ln3/y/b/a/q0/u/d;->z:I

    add-int/2addr v6, v7

    iput v6, v1, Ln3/y/b/a/q0/u/d;->z:I

    goto :goto_d

    .line 88
    :cond_1a
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Invalid NAL length"

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1b
    iget-boolean v6, v1, Ln3/y/b/a/q0/u/d;->C:Z

    if-eqz v6, :cond_1c

    .line 90
    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v11}, Ln3/y/b/a/x0/m;->v(I)V

    .line 91
    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    iget-object v6, v6, Ln3/y/b/a/x0/m;->a:[B

    iget v11, v1, Ln3/y/b/a/q0/u/d;->B:I

    const/4 v12, 0x0

    .line 92
    invoke-virtual {v0, v6, v12, v11, v12}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 93
    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    iget v11, v1, Ln3/y/b/a/q0/u/d;->B:I

    invoke-interface {v5, v6, v11}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 94
    iget v6, v1, Ln3/y/b/a/q0/u/d;->B:I

    .line 95
    iget-object v11, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    iget-object v12, v11, Ln3/y/b/a/x0/m;->a:[B

    .line 96
    iget v11, v11, Ln3/y/b/a/x0/m;->c:I

    .line 97
    invoke-static {v12, v11}, Ln3/y/b/a/x0/k;->e([BI)I

    move-result v11

    .line 98
    iget-object v12, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    iget-object v9, v4, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v12, v9}, Ln3/y/b/a/x0/m;->z(I)V

    .line 99
    iget-object v9, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    invoke-virtual {v9, v11}, Ln3/y/b/a/x0/m;->y(I)V

    .line 100
    iget-object v9, v1, Ln3/y/b/a/q0/u/d;->g:Ln3/y/b/a/x0/m;

    iget-object v11, v1, Ln3/y/b/a/q0/u/d;->G:[Ln3/y/b/a/q0/p;

    invoke-static {v13, v14, v9, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->G(JLn3/y/b/a/x0/m;[Ln3/y/b/a/q0/p;)V

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    .line 101
    invoke-interface {v5, v0, v11, v6}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result v9

    move v6, v9

    .line 102
    :goto_c
    iget v9, v1, Ln3/y/b/a/q0/u/d;->A:I

    add-int/2addr v9, v6

    iput v9, v1, Ln3/y/b/a/q0/u/d;->A:I

    .line 103
    iget v9, v1, Ln3/y/b/a/q0/u/d;->B:I

    sub-int/2addr v9, v6

    iput v9, v1, Ln3/y/b/a/q0/u/d;->B:I

    :goto_d
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x6

    goto/16 :goto_9

    .line 104
    :cond_1d
    iget-boolean v4, v1, Ln3/y/b/a/q0/u/d;->D:Z

    if-eqz v4, :cond_1e

    .line 105
    iget v4, v1, Ln3/y/b/a/q0/u/d;->z:I

    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->i:Ln3/y/b/a/x0/m;

    invoke-static {v4, v6}, Ln3/y/b/a/n0/b;->a(ILn3/y/b/a/x0/m;)V

    .line 106
    iget-object v4, v1, Ln3/y/b/a/q0/u/d;->i:Ln3/y/b/a/x0/m;

    .line 107
    iget v6, v4, Ln3/y/b/a/x0/m;->c:I

    .line 108
    invoke-interface {v5, v4, v6}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 109
    iget v4, v1, Ln3/y/b/a/q0/u/d;->z:I

    add-int/2addr v4, v6

    iput v4, v1, Ln3/y/b/a/q0/u/d;->z:I

    .line 110
    iget v4, v1, Ln3/y/b/a/q0/u/d;->A:I

    add-int/2addr v4, v6

    iput v4, v1, Ln3/y/b/a/q0/u/d;->A:I

    const/4 v4, 0x0

    .line 111
    iput-boolean v4, v1, Ln3/y/b/a/q0/u/d;->D:Z

    goto :goto_f

    :cond_1e
    :goto_e
    const/4 v4, 0x0

    .line 112
    :goto_f
    iget v6, v1, Ln3/y/b/a/q0/u/d;->A:I

    iget v7, v1, Ln3/y/b/a/q0/u/d;->z:I

    if-ge v6, v7, :cond_1f

    sub-int/2addr v7, v6

    .line 113
    invoke-interface {v5, v0, v7, v4}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result v6

    .line 114
    iget v4, v1, Ln3/y/b/a/q0/u/d;->A:I

    add-int/2addr v4, v6

    iput v4, v1, Ln3/y/b/a/q0/u/d;->A:I

    goto :goto_e

    .line 115
    :cond_1f
    iget-object v3, v3, Ln3/y/b/a/q0/u/k;->k:[Z

    aget-boolean v2, v3, v2

    .line 116
    iget-object v3, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    .line 117
    invoke-virtual {v3}, Ln3/y/b/a/q0/u/d$b;->a()Ln3/y/b/a/q0/u/j;

    move-result-object v3

    if-eqz v3, :cond_20

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v2, v4

    .line 118
    iget-object v3, v3, Ln3/y/b/a/q0/u/j;->c:Ln3/y/b/a/q0/p$a;

    move/from16 v21, v2

    move-object/from16 v24, v3

    goto :goto_10

    :cond_20
    move/from16 v21, v2

    const/16 v24, 0x0

    .line 119
    :goto_10
    iget v2, v1, Ln3/y/b/a/q0/u/d;->z:I

    const/16 v23, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v19, v13

    move/from16 v22, v2

    invoke-interface/range {v18 .. v24}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 120
    :cond_21
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 121
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/q0/u/d$a;

    .line 122
    iget v3, v1, Ln3/y/b/a/q0/u/d;->u:I

    iget v4, v2, Ln3/y/b/a/q0/u/d$a;->b:I

    sub-int/2addr v3, v4

    iput v3, v1, Ln3/y/b/a/q0/u/d;->u:I

    .line 123
    iget-wide v3, v2, Ln3/y/b/a/q0/u/d$a;->a:J

    add-long/2addr v3, v13

    .line 124
    iget-object v5, v1, Ln3/y/b/a/q0/u/d;->j:Ln3/y/b/a/x0/v;

    if-eqz v5, :cond_22

    .line 125
    invoke-virtual {v5, v3, v4}, Ln3/y/b/a/x0/v;->a(J)J

    move-result-wide v3

    .line 126
    :cond_22
    iget-object v12, v1, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    array-length v15, v12

    const/4 v11, 0x0

    :goto_11
    if-ge v11, v15, :cond_21

    aget-object v5, v12, v11

    const/4 v8, 0x1

    .line 127
    iget v9, v2, Ln3/y/b/a/q0/u/d$a;->b:I

    iget v10, v1, Ln3/y/b/a/q0/u/d;->u:I

    const/16 v18, 0x0

    move-wide v6, v3

    move/from16 v19, v11

    move-object/from16 v11, v18

    invoke-interface/range {v5 .. v11}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    add-int/lit8 v11, v19, 0x1

    goto :goto_11

    .line 128
    :cond_23
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    invoke-virtual {v2}, Ln3/y/b/a/q0/u/d$b;->c()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 129
    iput-object v2, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    :cond_24
    const/4 v2, 0x3

    .line 130
    iput v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    const/4 v9, 0x1

    :goto_12
    if-eqz v9, :cond_0

    const/4 v2, 0x0

    return v2

    .line 131
    :cond_25
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    if-ge v5, v2, :cond_27

    .line 132
    iget-object v7, v1, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/y/b/a/q0/u/d$b;

    iget-object v7, v7, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 133
    iget-boolean v8, v7, Ln3/y/b/a/q0/u/k;->q:Z

    if-eqz v8, :cond_26

    iget-wide v7, v7, Ln3/y/b/a/q0/u/k;->c:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_26

    .line 134
    iget-object v3, v1, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/u/d$b;

    move-object v6, v3

    move-wide v3, v7

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_27
    if-nez v6, :cond_28

    const/4 v2, 0x3

    .line 135
    iput v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    goto/16 :goto_0

    .line 136
    :cond_28
    iget-wide v7, v0, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v3, v7

    long-to-int v2, v3

    if-ltz v2, :cond_29

    .line 137
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 138
    iget-object v2, v6, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 139
    iget-object v3, v2, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    iget v4, v2, Ln3/y/b/a/q0/u/k;->o:I

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v0, v3, v5, v4, v5}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 141
    iget-object v3, v2, Ln3/y/b/a/q0/u/k;->p:Ln3/y/b/a/x0/m;

    invoke-virtual {v3, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 142
    iput-boolean v5, v2, Ln3/y/b/a/q0/u/k;->q:Z

    goto/16 :goto_0

    .line 143
    :cond_29
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2a
    iget-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    long-to-int v2, v5

    iget v5, v1, Ln3/y/b/a/q0/u/d;->r:I

    sub-int/2addr v2, v5

    .line 145
    iget-object v5, v1, Ln3/y/b/a/q0/u/d;->s:Ln3/y/b/a/x0/m;

    if-eqz v5, :cond_39

    .line 146
    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 147
    invoke-virtual {v0, v5, v6, v2, v7}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 148
    new-instance v2, Ln3/y/b/a/q0/u/a$b;

    iget v5, v1, Ln3/y/b/a/q0/u/d;->p:I

    iget-object v6, v1, Ln3/y/b/a/q0/u/d;->s:Ln3/y/b/a/x0/m;

    invoke-direct {v2, v5, v6}, Ln3/y/b/a/q0/u/a$b;-><init>(ILn3/y/b/a/x0/m;)V

    .line 149
    iget-wide v5, v0, Ln3/y/b/a/q0/d;->d:J

    .line 150
    iget-object v7, v1, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2b

    .line 151
    iget-object v3, v1, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/u/a$a;

    .line 152
    iget-object v3, v3, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    .line 153
    :cond_2b
    iget v7, v2, Ln3/y/b/a/q0/u/a;->a:I

    if-ne v7, v4, :cond_2f

    .line 154
    iget-object v2, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v3, 0x8

    .line 155
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 156
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    .line 157
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/m;->A(I)V

    .line 158
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v13

    if-nez v3, :cond_2c

    .line 159
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v3

    .line 160
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v7

    goto :goto_14

    .line 161
    :cond_2c
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v3

    .line 162
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v7

    :goto_14
    add-long/2addr v5, v7

    const-wide/32 v9, 0xf4240

    move-wide v7, v3

    move-wide v11, v13

    .line 163
    invoke-static/range {v7 .. v12}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v18

    const/4 v7, 0x2

    .line 164
    invoke-virtual {v2, v7}, Ln3/y/b/a/x0/m;->A(I)V

    .line 165
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v15

    .line 166
    new-array v11, v15, [I

    .line 167
    new-array v12, v15, [J

    .line 168
    new-array v9, v15, [J

    .line 169
    new-array v10, v15, [J

    move-wide/from16 v16, v18

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v15, :cond_2e

    .line 170
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v8

    const/high16 v20, -0x80000000

    and-int v20, v8, v20

    if-nez v20, :cond_2d

    .line 171
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v20

    const v22, 0x7fffffff

    and-int v8, v8, v22

    .line 172
    aput v8, v11, v7

    .line 173
    aput-wide v5, v12, v7

    .line 174
    aput-wide v16, v10, v7

    add-long v3, v3, v20

    const-wide/32 v16, 0xf4240

    move/from16 v20, v7

    move-wide v7, v3

    move-wide/from16 v21, v3

    move-object v3, v9

    move-object v4, v10

    move-wide/from16 v9, v16

    move-object v0, v12

    move/from16 v16, v15

    move-object v15, v11

    move-wide v11, v13

    .line 175
    invoke-static/range {v7 .. v12}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v7

    .line 176
    aget-wide v9, v4, v20

    sub-long v9, v7, v9

    aput-wide v9, v3, v20

    const/4 v9, 0x4

    .line 177
    invoke-virtual {v2, v9}, Ln3/y/b/a/x0/m;->A(I)V

    .line 178
    aget v10, v15, v20

    int-to-long v10, v10

    add-long/2addr v5, v10

    add-int/lit8 v10, v20, 0x1

    move-object v12, v0

    move-object v9, v3

    move-object v11, v15

    move/from16 v15, v16

    move-object/from16 v0, p1

    move-wide/from16 v16, v7

    move v7, v10

    move-object v10, v4

    move-wide/from16 v3, v21

    goto :goto_15

    .line 179
    :cond_2d
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move-object v3, v9

    move-object v4, v10

    move-object v15, v11

    move-object v0, v12

    .line 180
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Ln3/y/b/a/q0/b;

    invoke-direct {v5, v15, v0, v3, v4}, Ln3/y/b/a/q0/b;-><init>([I[J[J[J)V

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 181
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Ln3/y/b/a/q0/u/d;->x:J

    .line 182
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln3/y/b/a/q0/n;

    invoke-interface {v2, v0}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, v1, Ln3/y/b/a/q0/u/d;->H:Z

    goto/16 :goto_1b

    :cond_2f
    if-ne v7, v3, :cond_38

    .line 184
    iget-object v0, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 185
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    if-eqz v2, :cond_38

    array-length v2, v2

    if-nez v2, :cond_30

    goto/16 :goto_1b

    :cond_30
    const/16 v2, 0x8

    .line 186
    invoke-virtual {v0, v2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 187
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_32

    const/4 v5, 0x1

    if-eq v2, v5, :cond_31

    goto/16 :goto_1b

    .line 188
    :cond_31
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v12

    .line 189
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v14

    .line 190
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v5

    .line 191
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v7

    .line 192
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->k()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->k()Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v2

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move-object/from16 v22, v9

    move-wide v7, v3

    goto :goto_17

    .line 196
    :cond_32
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->k()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->k()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v5

    .line 201
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v7

    .line 202
    iget-wide v10, v1, Ln3/y/b/a/q0/u/d;->x:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_33

    add-long/2addr v10, v7

    move-wide/from16 v18, v10

    goto :goto_16

    :cond_33
    move-wide/from16 v18, v3

    .line 203
    :goto_16
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v5

    .line 204
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v10

    move-object/from16 v21, v2

    move-wide/from16 v23, v5

    move-object/from16 v22, v9

    move-wide/from16 v25, v10

    move-wide/from16 v14, v18

    .line 205
    :goto_17
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 206
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->a()I

    move-result v5

    .line 207
    iget-object v6, v0, Ln3/y/b/a/x0/m;->a:[B

    iget v9, v0, Ln3/y/b/a/x0/m;->b:I

    const/4 v10, 0x0

    invoke-static {v6, v9, v2, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget v6, v0, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v6, v5

    iput v6, v0, Ln3/y/b/a/x0/m;->b:I

    .line 209
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;

    move-object/from16 v20, v0

    move-object/from16 v27, v2

    invoke-direct/range {v20 .. v27}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 210
    new-instance v2, Ln3/y/b/a/x0/m;

    iget-object v5, v1, Ln3/y/b/a/q0/u/d;->k:Ln3/y/b/a/s0/f/a;

    .line 211
    iget-object v6, v5, Ln3/y/b/a/s0/f/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 212
    :try_start_0
    iget-object v6, v5, Ln3/y/b/a/s0/f/a;->b:Ljava/io/DataOutputStream;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->a:Ljava/lang/String;

    .line 213
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 214
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    iget-object v6, v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->b:Ljava/lang/String;

    if-eqz v6, :cond_34

    goto :goto_18

    :cond_34
    const-string v6, ""

    .line 216
    :goto_18
    iget-object v9, v5, Ln3/y/b/a/s0/f/a;->b:Ljava/io/DataOutputStream;

    .line 217
    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 218
    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 219
    iget-object v6, v5, Ln3/y/b/a/s0/f/a;->b:Ljava/io/DataOutputStream;

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->c:J

    invoke-static {v6, v9, v10}, Ln3/y/b/a/s0/f/a;->a(Ljava/io/DataOutputStream;J)V

    .line 220
    iget-object v6, v5, Ln3/y/b/a/s0/f/a;->b:Ljava/io/DataOutputStream;

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->d:J

    invoke-static {v6, v9, v10}, Ln3/y/b/a/s0/f/a;->a(Ljava/io/DataOutputStream;J)V

    .line 221
    iget-object v6, v5, Ln3/y/b/a/s0/f/a;->b:Ljava/io/DataOutputStream;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessage;->e:[B

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 222
    iget-object v0, v5, Ln3/y/b/a/s0/f/a;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 223
    iget-object v0, v5, Ln3/y/b/a/s0/f/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    invoke-direct {v2, v0}, Ln3/y/b/a/x0/m;-><init>([B)V

    .line 225
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    .line 226
    iget-object v5, v1, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    array-length v6, v5

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v6, :cond_35

    aget-object v10, v5, v9

    const/4 v11, 0x0

    .line 227
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/m;->z(I)V

    .line 228
    invoke-interface {v10, v2, v0}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_35
    cmp-long v2, v14, v3

    if-nez v2, :cond_36

    .line 229
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->n:Ljava/util/ArrayDeque;

    new-instance v3, Ln3/y/b/a/q0/u/d$a;

    invoke-direct {v3, v7, v8, v0}, Ln3/y/b/a/q0/u/d$a;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 230
    iget v2, v1, Ln3/y/b/a/q0/u/d;->u:I

    add-int/2addr v2, v0

    iput v2, v1, Ln3/y/b/a/q0/u/d;->u:I

    goto :goto_1b

    .line 231
    :cond_36
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->j:Ln3/y/b/a/x0/v;

    if-eqz v2, :cond_37

    .line 232
    invoke-virtual {v2, v14, v15}, Ln3/y/b/a/x0/v;->a(J)J

    move-result-wide v14

    .line 233
    :cond_37
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->F:[Ln3/y/b/a/q0/p;

    array-length v3, v2

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v3, :cond_38

    aget-object v18, v2, v8

    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v19, v14

    move/from16 v22, v0

    .line 234
    invoke-interface/range {v18 .. v24}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :catch_0
    move-exception v0

    .line 235
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_38
    :goto_1b
    move-object/from16 v0, p1

    goto :goto_1c

    .line 236
    :cond_39
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 237
    :goto_1c
    iget-wide v2, v0, Ln3/y/b/a/q0/d;->d:J

    .line 238
    invoke-virtual {v1, v2, v3}, Ln3/y/b/a/q0/u/d;->j(J)V

    goto/16 :goto_0

    .line 239
    :cond_3a
    iget v2, v1, Ln3/y/b/a/q0/u/d;->r:I

    if-nez v2, :cond_3c

    .line 240
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v6, v5, v7}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    move-result v2

    if-nez v2, :cond_3b

    move v8, v6

    goto/16 :goto_25

    .line 241
    :cond_3b
    iput v5, v1, Ln3/y/b/a/q0/u/d;->r:I

    .line 242
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/m;->z(I)V

    .line 243
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v5

    iput-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    .line 244
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    iput v2, v1, Ln3/y/b/a/q0/u/d;->p:I

    .line 245
    :cond_3c
    iget-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3d

    .line 246
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 247
    invoke-virtual {v0, v2, v5, v5, v6}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 248
    iget v2, v1, Ln3/y/b/a/q0/u/d;->r:I

    add-int/2addr v2, v5

    iput v2, v1, Ln3/y/b/a/q0/u/d;->r:I

    .line 249
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v5

    iput-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    goto :goto_1d

    :cond_3d
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_3f

    .line 250
    iget-wide v5, v0, Ln3/y/b/a/q0/d;->c:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3e

    .line 251
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 252
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/q0/u/a$a;

    iget-wide v5, v2, Ln3/y/b/a/q0/u/a$a;->b:J

    :cond_3e
    cmp-long v2, v5, v7

    if-eqz v2, :cond_3f

    .line 253
    iget-wide v7, v0, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v5, v7

    .line 254
    iget v2, v1, Ln3/y/b/a/q0/u/d;->r:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    .line 255
    :cond_3f
    :goto_1d
    iget-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    iget v2, v1, Ln3/y/b/a/q0/u/d;->r:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_4d

    .line 256
    iget-wide v5, v0, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v5, v7

    .line 257
    iget v2, v1, Ln3/y/b/a/q0/u/d;->p:I

    const v7, 0x6d6f6f66

    if-ne v2, v7, :cond_40

    .line 258
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v2, :cond_40

    .line 259
    iget-object v9, v1, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/y/b/a/q0/u/d$b;

    iget-object v9, v9, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 260
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iput-wide v5, v9, Ln3/y/b/a/q0/u/k;->c:J

    .line 262
    iput-wide v5, v9, Ln3/y/b/a/q0/u/k;->b:J

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 263
    :cond_40
    iget v2, v1, Ln3/y/b/a/q0/u/d;->p:I

    const v8, 0x6d646174

    if-ne v2, v8, :cond_42

    const/4 v8, 0x0

    .line 264
    iput-object v8, v1, Ln3/y/b/a/q0/u/d;->y:Ln3/y/b/a/q0/u/d$b;

    .line 265
    iget-wide v2, v1, Ln3/y/b/a/q0/u/d;->q:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Ln3/y/b/a/q0/u/d;->t:J

    .line 266
    iget-boolean v2, v1, Ln3/y/b/a/q0/u/d;->H:Z

    if-nez v2, :cond_41

    .line 267
    iget-object v2, v1, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    new-instance v3, Ln3/y/b/a/q0/n$b;

    iget-wide v7, v1, Ln3/y/b/a/q0/u/d;->w:J

    invoke-direct {v3, v7, v8, v5, v6}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    invoke-interface {v2, v3}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    const/4 v2, 0x1

    .line 268
    iput-boolean v2, v1, Ln3/y/b/a/q0/u/d;->H:Z

    :cond_41
    const/4 v2, 0x2

    .line 269
    iput v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    const/4 v8, 0x1

    goto/16 :goto_25

    :cond_42
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_44

    const v5, 0x7472616b

    if-eq v2, v5, :cond_44

    const v5, 0x6d646961

    if-eq v2, v5, :cond_44

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_44

    const v5, 0x7374626c

    if-eq v2, v5, :cond_44

    if-eq v2, v7, :cond_44

    const v5, 0x74726166

    if-eq v2, v5, :cond_44

    const v5, 0x6d766578

    if-eq v2, v5, :cond_44

    const v5, 0x65647473

    if-ne v2, v5, :cond_43

    goto :goto_1f

    :cond_43
    const/4 v5, 0x0

    goto :goto_20

    :cond_44
    :goto_1f
    const/4 v5, 0x1

    :goto_20
    if-eqz v5, :cond_46

    .line 270
    iget-wide v3, v0, Ln3/y/b/a/q0/d;->d:J

    .line 271
    iget-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    .line 272
    iget-object v5, v1, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    new-instance v6, Ln3/y/b/a/q0/u/a$a;

    invoke-direct {v6, v2, v3, v4}, Ln3/y/b/a/q0/u/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 273
    iget-wide v5, v1, Ln3/y/b/a/q0/u/d;->q:J

    iget v2, v1, Ln3/y/b/a/q0/u/d;->r:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_45

    .line 274
    invoke-virtual {v1, v3, v4}, Ln3/y/b/a/q0/u/d;->j(J)V

    goto :goto_21

    .line 275
    :cond_45
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/u/d;->b()V

    :goto_21
    const/4 v2, 0x1

    goto/16 :goto_24

    :cond_46
    const v5, 0x68646c72    # 4.3148E24f

    if-eq v2, v5, :cond_48

    const v5, 0x6d646864

    if-eq v2, v5, :cond_48

    const v5, 0x6d766864

    if-eq v2, v5, :cond_48

    if-eq v2, v4, :cond_48

    const v4, 0x73747364

    if-eq v2, v4, :cond_48

    const v4, 0x74666474

    if-eq v2, v4, :cond_48

    const v4, 0x74666864

    if-eq v2, v4, :cond_48

    const v4, 0x746b6864

    if-eq v2, v4, :cond_48

    const v4, 0x74726578

    if-eq v2, v4, :cond_48

    const v4, 0x7472756e

    if-eq v2, v4, :cond_48

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_48

    const v4, 0x7361697a

    if-eq v2, v4, :cond_48

    const v4, 0x7361696f

    if-eq v2, v4, :cond_48

    const v4, 0x73656e63

    if-eq v2, v4, :cond_48

    const v4, 0x75756964

    if-eq v2, v4, :cond_48

    const v4, 0x73626770

    if-eq v2, v4, :cond_48

    const v4, 0x73677064

    if-eq v2, v4, :cond_48

    const v4, 0x656c7374

    if-eq v2, v4, :cond_48

    const v4, 0x6d656864

    if-eq v2, v4, :cond_48

    if-ne v2, v3, :cond_47

    goto :goto_22

    :cond_47
    const/4 v5, 0x0

    goto :goto_23

    :cond_48
    :goto_22
    const/4 v5, 0x1

    :goto_23
    const-wide/32 v2, 0x7fffffff

    if-eqz v5, :cond_4b

    .line 276
    iget v4, v1, Ln3/y/b/a/q0/u/d;->r:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4a

    .line 277
    iget-wide v6, v1, Ln3/y/b/a/q0/u/d;->q:J

    cmp-long v2, v6, v2

    if-gtz v2, :cond_49

    .line 278
    new-instance v2, Ln3/y/b/a/x0/m;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v2, v1, Ln3/y/b/a/q0/u/d;->s:Ln3/y/b/a/x0/m;

    .line 279
    iget-object v3, v1, Ln3/y/b/a/q0/u/d;->l:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 280
    iput v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    goto :goto_24

    .line 281
    :cond_49
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4a
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_4b
    iget-wide v4, v1, Ln3/y/b/a/q0/u/d;->q:J

    cmp-long v2, v4, v2

    if-gtz v2, :cond_4c

    const/4 v2, 0x0

    .line 284
    iput-object v2, v1, Ln3/y/b/a/q0/u/d;->s:Ln3/y/b/a/x0/m;

    const/4 v2, 0x1

    .line 285
    iput v2, v1, Ln3/y/b/a/q0/u/d;->o:I

    :goto_24
    move v8, v2

    :goto_25
    if-nez v8, :cond_0

    const/4 v0, -0x1

    return v0

    .line 286
    :cond_4c
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_4d
    new-instance v0, Ln3/y/b/a/c0;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(J)V
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, v0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/q0/u/a$a;

    iget-wide v1, v1, Ln3/y/b/a/q0/u/a$a;->b:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_57

    .line 2
    iget-object v1, v0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/q0/u/a$a;

    .line 3
    iget v2, v1, Ln3/y/b/a/q0/u/a;->a:I

    const v3, 0x6d6f6f76

    const/16 v4, 0xc

    const/16 v5, 0x8

    if-ne v2, v3, :cond_c

    .line 4
    iget-object v2, v0, Ln3/y/b/a/q0/u/d;->c:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, v1, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-static {v2}, Ln3/y/b/a/q0/u/d;->e(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v2

    :goto_1
    const v3, 0x6d766578

    .line 6
    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v3

    .line 7
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 8
    iget-object v6, v3, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-wide v14, v7

    :goto_2
    if-ge v9, v6, :cond_5

    .line 9
    iget-object v7, v3, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/y/b/a/q0/u/a$b;

    .line 10
    iget v8, v7, Ln3/y/b/a/q0/u/a;->a:I

    const v10, 0x74726578

    if-ne v8, v10, :cond_2

    .line 11
    iget-object v7, v7, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 12
    invoke-virtual {v7, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 13
    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->d()I

    move-result v4

    .line 14
    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->r()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 15
    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->r()I

    move-result v10

    .line 16
    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->r()I

    move-result v11

    .line 17
    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v12, Ln3/y/b/a/q0/u/c;

    invoke-direct {v12, v8, v10, v11, v7}, Ln3/y/b/a/q0/u/c;-><init>(IIII)V

    invoke-static {v4, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 19
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ln3/y/b/a/q0/u/c;

    invoke-virtual {v13, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const v4, 0x6d656864

    if-ne v8, v4, :cond_4

    .line 20
    iget-object v4, v7, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 21
    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 22
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_3

    .line 23
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v7

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v7

    :goto_3
    move-wide v14, v7

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0xc

    goto :goto_2

    .line 24
    :cond_5
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 25
    iget-object v4, v1, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_8

    .line 26
    iget-object v6, v1, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/b/a/q0/u/a$a;

    .line 27
    iget v7, v6, Ln3/y/b/a/q0/u/a;->a:I

    const v8, 0x7472616b

    if-ne v7, v8, :cond_7

    const v7, 0x6d766864

    .line 28
    invoke-virtual {v1, v7}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v7

    iget v8, v0, Ln3/y/b/a/q0/u/d;->a:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    move v11, v8

    const/4 v12, 0x0

    move-wide v8, v14

    move-object v10, v2

    .line 29
    invoke-static/range {v6 .. v12}, Ln3/y/b/a/q0/u/b;->d(Ln3/y/b/a/q0/u/a$a;Ln3/y/b/a/q0/u/a$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Ln3/y/b/a/q0/u/i;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 30
    iget v7, v6, Ln3/y/b/a/q0/u/i;->a:I

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 31
    :cond_8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 32
    iget-object v2, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_9

    .line 33
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/q0/u/i;

    .line 34
    new-instance v5, Ln3/y/b/a/q0/u/d$b;

    iget-object v6, v0, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    iget v7, v4, Ln3/y/b/a/q0/u/i;->b:I

    invoke-interface {v6, v2, v7}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v6

    invoke-direct {v5, v6}, Ln3/y/b/a/q0/u/d$b;-><init>(Ln3/y/b/a/q0/p;)V

    .line 35
    iget v6, v4, Ln3/y/b/a/q0/u/i;->a:I

    invoke-virtual {v0, v13, v6}, Ln3/y/b/a/q0/u/d;->c(Landroid/util/SparseArray;I)Ln3/y/b/a/q0/u/c;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ln3/y/b/a/q0/u/d$b;->b(Ln3/y/b/a/q0/u/i;Ln3/y/b/a/q0/u/c;)V

    .line 36
    iget-object v6, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    iget v7, v4, Ln3/y/b/a/q0/u/i;->a:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-wide v5, v0, Ln3/y/b/a/q0/u/d;->w:J

    iget-wide v7, v4, Ln3/y/b/a/q0/u/i;->e:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Ln3/y/b/a/q0/u/d;->w:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 38
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/u/d;->f()V

    .line 39
    iget-object v1, v0, Ln3/y/b/a/q0/u/d;->E:Ln3/y/b/a/q0/h;

    invoke-interface {v1}, Ln3/y/b/a/q0/h;->g()V

    goto/16 :goto_0

    .line 40
    :cond_a
    iget-object v2, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_0

    .line 41
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/q0/u/i;

    .line 42
    iget-object v5, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    iget v6, v4, Ln3/y/b/a/q0/u/i;->a:I

    .line 43
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/q0/u/d$b;

    iget v6, v4, Ln3/y/b/a/q0/u/i;->a:I

    .line 44
    invoke-virtual {v0, v13, v6}, Ln3/y/b/a/q0/u/d;->c(Landroid/util/SparseArray;I)Ln3/y/b/a/q0/u/c;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ln3/y/b/a/q0/u/d$b;->b(Ln3/y/b/a/q0/u/i;Ln3/y/b/a/q0/u/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    const v3, 0x6d6f6f66

    if-ne v2, v3, :cond_56

    .line 45
    iget-object v2, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    iget v3, v0, Ln3/y/b/a/q0/u/d;->a:I

    iget-object v4, v0, Ln3/y/b/a/q0/u/d;->h:[B

    .line 46
    iget-object v6, v1, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_4f

    .line 47
    iget-object v0, v1, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/q0/u/a$a;

    .line 48
    iget v8, v0, Ln3/y/b/a/q0/u/a;->a:I

    const v9, 0x74726166

    if-ne v8, v9, :cond_4e

    const v8, 0x74666864

    .line 49
    invoke-virtual {v0, v8}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v8

    .line 50
    iget-object v8, v8, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 51
    invoke-virtual {v8, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 52
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v9

    const v10, 0xffffff

    and-int/2addr v9, v10

    .line 53
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    .line 54
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v10, 0x0

    .line 55
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/y/b/a/q0/u/d$b;

    goto :goto_b

    .line 56
    :cond_d
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/y/b/a/q0/u/d$b;

    :goto_b
    if-nez v10, :cond_e

    const/4 v10, 0x0

    goto :goto_10

    :cond_e
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_f

    .line 57
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v11

    .line 58
    iget-object v13, v10, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iput-wide v11, v13, Ln3/y/b/a/q0/u/k;->b:J

    .line 59
    iput-wide v11, v13, Ln3/y/b/a/q0/u/k;->c:J

    .line 60
    :cond_f
    iget-object v11, v10, Ln3/y/b/a/q0/u/d$b;->d:Ln3/y/b/a/q0/u/c;

    and-int/lit8 v12, v9, 0x2

    if-eqz v12, :cond_10

    .line 61
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_c

    :cond_10
    iget v12, v11, Ln3/y/b/a/q0/u/c;->a:I

    :goto_c
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_11

    .line 62
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v13

    goto :goto_d

    :cond_11
    iget v13, v11, Ln3/y/b/a/q0/u/c;->b:I

    :goto_d
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_12

    .line 63
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v14

    goto :goto_e

    :cond_12
    iget v14, v11, Ln3/y/b/a/q0/u/c;->c:I

    :goto_e
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_13

    .line 64
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v8

    goto :goto_f

    :cond_13
    iget v8, v11, Ln3/y/b/a/q0/u/c;->d:I

    .line 65
    :goto_f
    iget-object v9, v10, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    new-instance v11, Ln3/y/b/a/q0/u/c;

    invoke-direct {v11, v12, v13, v14, v8}, Ln3/y/b/a/q0/u/c;-><init>(IIII)V

    iput-object v11, v9, Ln3/y/b/a/q0/u/k;->a:Ln3/y/b/a/q0/u/c;

    :goto_10
    if-nez v10, :cond_14

    goto/16 :goto_31

    .line 66
    :cond_14
    iget-object v8, v10, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 67
    iget-wide v11, v8, Ln3/y/b/a/q0/u/k;->r:J

    .line 68
    invoke-virtual {v10}, Ln3/y/b/a/q0/u/d$b;->d()V

    const v9, 0x74666474

    .line 69
    invoke-virtual {v0, v9}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v13

    if-eqz v13, :cond_16

    and-int/lit8 v13, v3, 0x2

    if-nez v13, :cond_16

    .line 70
    invoke-virtual {v0, v9}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v9

    iget-object v9, v9, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 71
    invoke-virtual {v9, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 72
    invoke-virtual {v9}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    const/4 v11, 0x1

    if-ne v5, v11, :cond_15

    .line 73
    invoke-virtual {v9}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v11

    goto :goto_11

    :cond_15
    invoke-virtual {v9}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v11

    .line 74
    :cond_16
    :goto_11
    iget-object v5, v0, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    .line 75
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    :goto_12
    const v2, 0x7472756e

    if-ge v14, v9, :cond_18

    .line 76
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v6

    move-object/from16 v6, v17

    check-cast v6, Ln3/y/b/a/q0/u/a$b;

    move-wide/from16 v19, v11

    .line 77
    iget v11, v6, Ln3/y/b/a/q0/u/a;->a:I

    if-ne v11, v2, :cond_17

    .line 78
    iget-object v2, v6, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v6, 0xc

    .line 79
    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/m;->z(I)V

    .line 80
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->r()I

    move-result v2

    if-lez v2, :cond_17

    add-int/2addr v13, v2

    add-int/lit8 v15, v15, 0x1

    :cond_17
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v18

    move-wide/from16 v11, v19

    goto :goto_12

    :cond_18
    move/from16 v18, v6

    move-wide/from16 v19, v11

    const/4 v6, 0x0

    .line 81
    iput v6, v10, Ln3/y/b/a/q0/u/d$b;->g:I

    .line 82
    iput v6, v10, Ln3/y/b/a/q0/u/d$b;->f:I

    .line 83
    iput v6, v10, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 84
    iget-object v6, v10, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    .line 85
    iput v15, v6, Ln3/y/b/a/q0/u/k;->d:I

    .line 86
    iput v13, v6, Ln3/y/b/a/q0/u/k;->e:I

    .line 87
    iget-object v11, v6, Ln3/y/b/a/q0/u/k;->g:[I

    if-eqz v11, :cond_19

    array-length v11, v11

    if-ge v11, v15, :cond_1a

    .line 88
    :cond_19
    new-array v11, v15, [J

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->f:[J

    .line 89
    new-array v11, v15, [I

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->g:[I

    .line 90
    :cond_1a
    iget-object v11, v6, Ln3/y/b/a/q0/u/k;->h:[I

    if-eqz v11, :cond_1b

    array-length v11, v11

    if-ge v11, v13, :cond_1c

    :cond_1b
    mul-int/lit8 v13, v13, 0x7d

    .line 91
    div-int/lit8 v13, v13, 0x64

    .line 92
    new-array v11, v13, [I

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->h:[I

    .line 93
    new-array v11, v13, [I

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->i:[I

    .line 94
    new-array v11, v13, [J

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->j:[J

    .line 95
    new-array v11, v13, [Z

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->k:[Z

    .line 96
    new-array v11, v13, [Z

    iput-object v11, v6, Ln3/y/b/a/q0/u/k;->m:[Z

    :cond_1c
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_13
    if-ge v6, v9, :cond_31

    .line 97
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln3/y/b/a/q0/u/a$b;

    .line 98
    iget v13, v15, Ln3/y/b/a/q0/u/a;->a:I

    if-ne v13, v2, :cond_30

    add-int/lit8 v2, v11, 0x1

    .line 99
    iget-object v13, v15, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v14, 0x8

    .line 100
    invoke-virtual {v13, v14}, Ln3/y/b/a/x0/m;->z(I)V

    .line 101
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->d()I

    move-result v14

    const v15, 0xffffff

    and-int/2addr v14, v15

    .line 102
    iget-object v15, v10, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    move/from16 v17, v2

    .line 103
    iget-object v2, v10, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    move-object/from16 v23, v5

    .line 104
    iget-object v5, v2, Ln3/y/b/a/q0/u/k;->a:Ln3/y/b/a/q0/u/c;

    move/from16 v24, v9

    .line 105
    iget-object v9, v2, Ln3/y/b/a/q0/u/k;->g:[I

    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v25

    aput v25, v9, v11

    .line 106
    iget-object v9, v2, Ln3/y/b/a/q0/u/k;->f:[J

    move-object/from16 v26, v0

    move-object/from16 v25, v1

    iget-wide v0, v2, Ln3/y/b/a/q0/u/k;->b:J

    aput-wide v0, v9, v11

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_1d

    .line 107
    aget-wide v0, v9, v11

    move/from16 v27, v7

    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    move-object/from16 v28, v8

    int-to-long v7, v7

    add-long/2addr v0, v7

    aput-wide v0, v9, v11

    goto :goto_14

    :cond_1d
    move/from16 v27, v7

    move-object/from16 v28, v8

    :goto_14
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_15

    :cond_1e
    const/4 v0, 0x0

    .line 108
    :goto_15
    iget v1, v5, Ln3/y/b/a/q0/u/c;->d:I

    if-eqz v0, :cond_1f

    .line 109
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v1

    :cond_1f
    and-int/lit16 v7, v14, 0x100

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_16

    :cond_20
    const/4 v7, 0x0

    :goto_16
    and-int/lit16 v8, v14, 0x200

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_17

    :cond_21
    const/4 v8, 0x0

    :goto_17
    and-int/lit16 v9, v14, 0x400

    if-eqz v9, :cond_22

    const/4 v9, 0x1

    goto :goto_18

    :cond_22
    const/4 v9, 0x0

    :goto_18
    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_23

    const/4 v14, 0x1

    goto :goto_19

    :cond_23
    const/4 v14, 0x0

    :goto_19
    move/from16 v29, v1

    .line 110
    iget-object v1, v15, Ln3/y/b/a/q0/u/i;->h:[J

    if-eqz v1, :cond_25

    move-object/from16 v30, v4

    array-length v4, v1

    move-object/from16 v31, v10

    const/4 v10, 0x1

    if-ne v4, v10, :cond_24

    const/4 v4, 0x0

    aget-wide v32, v1, v4

    const-wide/16 v21, 0x0

    cmp-long v1, v32, v21

    if-nez v1, :cond_24

    .line 111
    iget-object v1, v15, Ln3/y/b/a/q0/u/i;->i:[J

    aget-wide v32, v1, v4

    const-wide/16 v34, 0x3e8

    move v1, v9

    iget-wide v9, v15, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v36, v9

    .line 112
    invoke-static/range {v32 .. v37}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v9

    move-wide/from16 v21, v9

    goto :goto_1b

    :cond_24
    move v1, v9

    goto :goto_1a

    :cond_25
    move-object/from16 v30, v4

    move v1, v9

    move-object/from16 v31, v10

    :goto_1a
    const-wide/16 v21, 0x0

    .line 113
    :goto_1b
    iget-object v4, v2, Ln3/y/b/a/q0/u/k;->h:[I

    .line 114
    iget-object v9, v2, Ln3/y/b/a/q0/u/k;->i:[I

    .line 115
    iget-object v10, v2, Ln3/y/b/a/q0/u/k;->j:[J

    move/from16 v32, v6

    .line 116
    iget-object v6, v2, Ln3/y/b/a/q0/u/k;->k:[Z

    move-object/from16 v33, v6

    .line 117
    iget v6, v15, Ln3/y/b/a/q0/u/i;->b:I

    move-object/from16 v34, v4

    const/4 v4, 0x2

    if-ne v6, v4, :cond_26

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    goto :goto_1c

    :cond_26
    const/4 v4, 0x0

    .line 118
    :goto_1c
    iget-object v6, v2, Ln3/y/b/a/q0/u/k;->g:[I

    aget v6, v6, v11

    add-int/2addr v6, v12

    move/from16 v41, v3

    move/from16 v42, v4

    .line 119
    iget-wide v3, v15, Ln3/y/b/a/q0/u/i;->c:J

    if-lez v11, :cond_27

    move v15, v12

    .line 120
    iget-wide v11, v2, Ln3/y/b/a/q0/u/k;->r:J

    goto :goto_1d

    :cond_27
    move v15, v12

    move-wide/from16 v11, v19

    :goto_1d
    if-ge v15, v6, :cond_2f

    if-eqz v7, :cond_28

    .line 121
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v35

    move/from16 v43, v6

    move/from16 v6, v35

    goto :goto_1e

    :cond_28
    move/from16 v43, v6

    .line 122
    iget v6, v5, Ln3/y/b/a/q0/u/c;->b:I

    :goto_1e
    if-eqz v8, :cond_29

    .line 123
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v35

    move/from16 v44, v7

    move/from16 v7, v35

    goto :goto_1f

    :cond_29
    move/from16 v44, v7

    iget v7, v5, Ln3/y/b/a/q0/u/c;->c:I

    :goto_1f
    if-nez v15, :cond_2a

    if-eqz v0, :cond_2a

    move/from16 v45, v0

    move/from16 v0, v29

    goto :goto_20

    :cond_2a
    if-eqz v1, :cond_2b

    .line 124
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->d()I

    move-result v35

    move/from16 v45, v0

    move/from16 v0, v35

    goto :goto_20

    :cond_2b
    move/from16 v45, v0

    iget v0, v5, Ln3/y/b/a/q0/u/c;->d:I

    :goto_20
    if-eqz v14, :cond_2c

    move/from16 v46, v1

    .line 125
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->d()I

    move-result v1

    move-object/from16 v47, v13

    move/from16 v48, v14

    int-to-long v13, v1

    const-wide/16 v35, 0x3e8

    mul-long v13, v13, v35

    .line 126
    div-long/2addr v13, v3

    long-to-int v1, v13

    aput v1, v9, v15

    goto :goto_21

    :cond_2c
    move/from16 v46, v1

    move-object/from16 v47, v13

    move/from16 v48, v14

    const/4 v1, 0x0

    .line 127
    aput v1, v9, v15

    :goto_21
    const-wide/16 v37, 0x3e8

    move-wide/from16 v35, v11

    move-wide/from16 v39, v3

    .line 128
    invoke-static/range {v35 .. v40}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v13

    sub-long v13, v13, v21

    aput-wide v13, v10, v15

    .line 129
    aput v7, v34, v15

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2e

    if-eqz v42, :cond_2d

    if-nez v15, :cond_2e

    :cond_2d
    const/4 v0, 0x1

    goto :goto_22

    :cond_2e
    const/4 v0, 0x0

    .line 130
    :goto_22
    aput-boolean v0, v33, v15

    int-to-long v0, v6

    add-long/2addr v11, v0

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v43

    move/from16 v7, v44

    move/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v13, v47

    move/from16 v14, v48

    goto/16 :goto_1d

    :cond_2f
    move/from16 v43, v6

    .line 131
    iput-wide v11, v2, Ln3/y/b/a/q0/u/k;->r:J

    move/from16 v11, v17

    move/from16 v12, v43

    goto :goto_23

    :cond_30
    move-object/from16 v26, v0

    move-object/from16 v25, v1

    move/from16 v41, v3

    move-object/from16 v30, v4

    move-object/from16 v23, v5

    move/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    move-object/from16 v31, v10

    move v15, v12

    :goto_23
    add-int/lit8 v6, v32, 0x1

    const v2, 0x7472756e

    move-object/from16 v5, v23

    move/from16 v9, v24

    move-object/from16 v1, v25

    move-object/from16 v0, v26

    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v4, v30

    move-object/from16 v10, v31

    move/from16 v3, v41

    goto/16 :goto_13

    :cond_31
    move-object/from16 v26, v0

    move-object/from16 v25, v1

    move/from16 v41, v3

    move-object/from16 v30, v4

    move/from16 v27, v7

    move-object/from16 v28, v8

    .line 132
    iget-object v0, v10, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    move-object/from16 v1, v28

    iget-object v2, v1, Ln3/y/b/a/q0/u/k;->a:Ln3/y/b/a/q0/u/c;

    iget v2, v2, Ln3/y/b/a/q0/u/c;->a:I

    .line 133
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/u/i;->a(I)Ln3/y/b/a/q0/u/j;

    move-result-object v0

    const v2, 0x7361697a

    move-object/from16 v3, v26

    .line 134
    invoke-virtual {v3, v2}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 135
    iget-object v2, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 136
    iget v4, v0, Ln3/y/b/a/q0/u/j;->d:I

    const/16 v5, 0x8

    .line 137
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 138
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_32

    .line 139
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 140
    :cond_32
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v5

    .line 141
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->r()I

    move-result v6

    .line 142
    iget v7, v1, Ln3/y/b/a/q0/u/k;->e:I

    if-ne v6, v7, :cond_37

    if-nez v5, :cond_34

    .line 143
    iget-object v5, v1, Ln3/y/b/a/q0/u/k;->m:[Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_24
    if-ge v7, v6, :cond_36

    .line 144
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v9

    add-int/2addr v8, v9

    if-le v9, v4, :cond_33

    const/4 v9, 0x1

    goto :goto_25

    :cond_33
    const/4 v9, 0x0

    .line 145
    :goto_25
    aput-boolean v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_34
    if-le v5, v4, :cond_35

    const/4 v2, 0x1

    goto :goto_26

    :cond_35
    const/4 v2, 0x0

    :goto_26
    mul-int/2addr v5, v6

    const/4 v4, 0x0

    add-int/lit8 v8, v5, 0x0

    .line 146
    iget-object v5, v1, Ln3/y/b/a/q0/u/k;->m:[Z

    invoke-static {v5, v4, v6, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 147
    :cond_36
    invoke-virtual {v1, v8}, Ln3/y/b/a/q0/u/k;->a(I)V

    goto :goto_27

    .line 148
    :cond_37
    new-instance v0, Ln3/y/b/a/c0;

    iget v1, v1, Ln3/y/b/a/q0/u/k;->e:I

    const/16 v2, 0x29

    const-string v3, "Length mismatch: "

    const-string v4, ", "

    invoke-static {v2, v3, v6, v4, v1}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    :goto_27
    const v2, 0x7361696f

    .line 149
    invoke-virtual {v3, v2}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 150
    iget-object v2, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v4, 0x8

    .line 151
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 152
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_39

    .line 153
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/m;->A(I)V

    .line 154
    :cond_39
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->r()I

    move-result v4

    if-ne v4, v7, :cond_3b

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 155
    iget-wide v5, v1, Ln3/y/b/a/q0/u/k;->c:J

    if-nez v4, :cond_3a

    .line 156
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v7

    goto :goto_28

    :cond_3a
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v7

    :goto_28
    add-long/2addr v5, v7

    iput-wide v5, v1, Ln3/y/b/a/q0/u/k;->c:J

    goto :goto_29

    .line 157
    :cond_3b
    new-instance v0, Ln3/y/b/a/c0;

    const/16 v1, 0x28

    const-string v2, "Unexpected saio entry count: "

    invoke-static {v1, v2, v4}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_29
    const v2, 0x73656e63

    .line 158
    invoke-virtual {v3, v2}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 159
    iget-object v2, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/4 v4, 0x0

    .line 160
    invoke-static {v2, v4, v1}, Ln3/y/b/a/q0/u/d;->g(Ln3/y/b/a/x0/m;ILn3/y/b/a/q0/u/k;)V

    :cond_3d
    const v2, 0x73626770

    .line 161
    invoke-virtual {v3, v2}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v2

    const v4, 0x73677064

    .line 162
    invoke-virtual {v3, v4}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v4

    if-eqz v2, :cond_4a

    if-eqz v4, :cond_4a

    .line 163
    iget-object v2, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    iget-object v4, v4, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    if-eqz v0, :cond_3e

    iget-object v0, v0, Ln3/y/b/a/q0/u/j;->b:Ljava/lang/String;

    const/16 v5, 0x8

    goto :goto_2a

    :cond_3e
    const/16 v5, 0x8

    const/4 v0, 0x0

    :goto_2a
    move-object v8, v0

    .line 164
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 165
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v0

    .line 166
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    const v6, 0x73656967

    if-eq v5, v6, :cond_3f

    goto/16 :goto_2e

    :cond_3f
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v0, v7, :cond_40

    .line 167
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 168
    :cond_40
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v0

    if-ne v0, v7, :cond_49

    const/16 v0, 0x8

    .line 169
    invoke-virtual {v4, v0}, Ln3/y/b/a/x0/m;->z(I)V

    .line 170
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v0

    .line 171
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    if-eq v2, v6, :cond_41

    goto/16 :goto_2e

    :cond_41
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v7, :cond_43

    .line 172
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_42

    goto :goto_2b

    .line 173
    :cond_42
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const/4 v2, 0x2

    if-lt v0, v2, :cond_44

    .line 174
    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 175
    :cond_44
    :goto_2b
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v5

    const-wide/16 v9, 0x1

    cmp-long v0, v5, v9

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 176
    invoke-virtual {v4, v0}, Ln3/y/b/a/x0/m;->A(I)V

    .line 177
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    and-int/lit16 v5, v2, 0xf0

    shr-int/lit8 v11, v5, 0x4

    and-int/lit8 v12, v2, 0xf

    .line 178
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    if-ne v2, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_2c

    :cond_45
    const/4 v0, 0x0

    :goto_2c
    move v7, v0

    if-nez v7, :cond_46

    goto :goto_2e

    .line 179
    :cond_46
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v9

    const/16 v0, 0x10

    new-array v10, v0, [B

    .line 180
    iget-object v2, v4, Ln3/y/b/a/x0/m;->a:[B

    iget v5, v4, Ln3/y/b/a/x0/m;->b:I

    const/4 v6, 0x0

    invoke-static {v2, v5, v10, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v2, v4, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v2, v0

    iput v2, v4, Ln3/y/b/a/x0/m;->b:I

    if-nez v9, :cond_47

    .line 182
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    .line 183
    new-array v2, v0, [B

    .line 184
    iget-object v5, v4, Ln3/y/b/a/x0/m;->a:[B

    iget v13, v4, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v5, v13, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v5, v4, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v5, v0

    iput v5, v4, Ln3/y/b/a/x0/m;->b:I

    const/4 v0, 0x1

    goto :goto_2d

    :cond_47
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_2d
    move-object v13, v2

    .line 186
    iput-boolean v0, v1, Ln3/y/b/a/q0/u/k;->l:Z

    .line 187
    new-instance v0, Ln3/y/b/a/q0/u/j;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Ln3/y/b/a/q0/u/j;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Ln3/y/b/a/q0/u/k;->n:Ln3/y/b/a/q0/u/j;

    goto :goto_2e

    .line 188
    :cond_48
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_49
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_4a
    :goto_2e
    iget-object v0, v3, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v0, :cond_4d

    .line 191
    iget-object v4, v3, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/q0/u/a$b;

    .line 192
    iget v5, v4, Ln3/y/b/a/q0/u/a;->a:I

    const v6, 0x75756964

    if-ne v5, v6, :cond_4c

    .line 193
    iget-object v4, v4, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v5, 0x8

    .line 194
    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->z(I)V

    .line 195
    iget-object v5, v4, Ln3/y/b/a/x0/m;->a:[B

    iget v6, v4, Ln3/y/b/a/x0/m;->b:I

    const/4 v7, 0x0

    const/16 v8, 0x10

    move-object/from16 v9, v30

    invoke-static {v5, v6, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget v5, v4, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v5, v8

    iput v5, v4, Ln3/y/b/a/x0/m;->b:I

    .line 197
    sget-object v5, Ln3/y/b/a/q0/u/d;->I:[B

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_30

    .line 198
    :cond_4b
    invoke-static {v4, v8, v1}, Ln3/y/b/a/q0/u/d;->g(Ln3/y/b/a/x0/m;ILn3/y/b/a/q0/u/k;)V

    goto :goto_30

    :cond_4c
    move-object/from16 v9, v30

    :goto_30
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v30, v9

    goto :goto_2f

    :cond_4d
    move-object/from16 v9, v30

    const/16 v0, 0x8

    move v5, v0

    goto :goto_32

    :cond_4e
    :goto_31
    move-object/from16 v25, v1

    move-object/from16 v16, v2

    move/from16 v41, v3

    move-object v9, v4

    move/from16 v18, v6

    move/from16 v27, v7

    :goto_32
    add-int/lit8 v7, v27, 0x1

    move-object/from16 v0, p0

    move-object v4, v9

    move-object/from16 v2, v16

    move/from16 v6, v18

    move-object/from16 v1, v25

    move/from16 v3, v41

    goto/16 :goto_a

    :cond_4f
    move-object/from16 v25, v1

    const/4 v1, 0x0

    .line 199
    iget-object v2, v0, Ln3/y/b/a/q0/u/d;->c:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_50

    const/4 v2, 0x0

    goto :goto_33

    :cond_50
    move-object/from16 v2, v25

    .line 200
    iget-object v2, v2, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-static {v2}, Ln3/y/b/a/q0/u/d;->e(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v2

    :goto_33
    if-eqz v2, :cond_52

    .line 201
    iget-object v3, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v1

    :goto_34
    if-ge v4, v3, :cond_52

    .line 202
    iget-object v5, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/q0/u/d$b;

    .line 203
    iget-object v6, v5, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    iget-object v7, v5, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget-object v7, v7, Ln3/y/b/a/q0/u/k;->a:Ln3/y/b/a/q0/u/c;

    iget v7, v7, Ln3/y/b/a/q0/u/c;->a:I

    .line 204
    invoke-virtual {v6, v7}, Ln3/y/b/a/q0/u/i;->a(I)Ln3/y/b/a/q0/u/j;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 205
    iget-object v6, v6, Ln3/y/b/a/q0/u/j;->b:Ljava/lang/String;

    goto :goto_35

    :cond_51
    const/4 v6, 0x0

    .line 206
    :goto_35
    iget-object v7, v5, Ln3/y/b/a/q0/u/d$b;->a:Ln3/y/b/a/q0/p;

    iget-object v5, v5, Ln3/y/b/a/q0/u/d$b;->c:Ln3/y/b/a/q0/u/i;

    iget-object v5, v5, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v6

    .line 207
    iget-object v8, v5, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v5, v6, v8}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 208
    invoke-interface {v7, v5}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 209
    :cond_52
    iget-wide v2, v0, Ln3/y/b/a/q0/u/d;->v:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_36
    if-ge v1, v2, :cond_55

    .line 211
    iget-object v3, v0, Ln3/y/b/a/q0/u/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/u/d$b;

    iget-wide v4, v0, Ln3/y/b/a/q0/u/d;->v:J

    .line 212
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {v4, v5}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v4

    .line 214
    iget v6, v3, Ln3/y/b/a/q0/u/d$b;->e:I

    .line 215
    :goto_37
    iget-object v7, v3, Ln3/y/b/a/q0/u/d$b;->b:Ln3/y/b/a/q0/u/k;

    iget v8, v7, Ln3/y/b/a/q0/u/k;->e:I

    if-ge v6, v8, :cond_54

    .line 216
    iget-object v8, v7, Ln3/y/b/a/q0/u/k;->j:[J

    aget-wide v9, v8, v6

    iget-object v8, v7, Ln3/y/b/a/q0/u/k;->i:[I

    aget v8, v8, v6

    int-to-long v11, v8

    add-long/2addr v9, v11

    cmp-long v8, v9, v4

    if-gez v8, :cond_54

    .line 217
    iget-object v7, v7, Ln3/y/b/a/q0/u/k;->k:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_53

    .line 218
    iput v6, v3, Ln3/y/b/a/q0/u/d$b;->h:I

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_55
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 219
    iput-wide v1, v0, Ln3/y/b/a/q0/u/d;->v:J

    goto/16 :goto_0

    :cond_56
    move-object v2, v1

    .line 220
    iget-object v1, v0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, v0, Ln3/y/b/a/q0/u/d;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/q0/u/a$a;

    .line 222
    iget-object v1, v1, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    :cond_57
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/u/d;->b()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
