.class public final Ln3/y/b/a/t0/q0/r/e;
.super Ln3/y/b/a/t0/q0/r/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/q0/r/e$a;
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:Z

.field public final h:I

.field public final i:J

.field public final j:I

.field public final k:J

.field public final l:Z

.field public final m:Z

.field public final n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/y/b/a/t0/q0/r/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final p:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIJIJZZZ",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Ln3/y/b/a/t0/q0/r/e$a;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p15

    .line 1
    invoke-direct {p0, p2, p3, v3}, Ln3/y/b/a/t0/q0/r/f;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v1, p1

    .line 2
    iput v1, v0, Ln3/y/b/a/t0/q0/r/e;->d:I

    move-wide v1, p6

    .line 3
    iput-wide v1, v0, Ln3/y/b/a/t0/q0/r/e;->f:J

    move/from16 v1, p8

    .line 4
    iput-boolean v1, v0, Ln3/y/b/a/t0/q0/r/e;->g:Z

    move/from16 v1, p9

    .line 5
    iput v1, v0, Ln3/y/b/a/t0/q0/r/e;->h:I

    move-wide/from16 v1, p10

    .line 6
    iput-wide v1, v0, Ln3/y/b/a/t0/q0/r/e;->i:J

    move/from16 v1, p12

    .line 7
    iput v1, v0, Ln3/y/b/a/t0/q0/r/e;->j:I

    move-wide/from16 v1, p13

    .line 8
    iput-wide v1, v0, Ln3/y/b/a/t0/q0/r/e;->k:J

    move/from16 v1, p16

    .line 9
    iput-boolean v1, v0, Ln3/y/b/a/t0/q0/r/e;->l:Z

    move/from16 v1, p17

    .line 10
    iput-boolean v1, v0, Ln3/y/b/a/t0/q0/r/e;->m:Z

    move-object/from16 v1, p18

    .line 11
    iput-object v1, v0, Ln3/y/b/a/t0/q0/r/e;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 12
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    .line 13
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    move-object/from16 v4, p19

    .line 14
    invoke-static {v4, v1}, Le/d/c/a/a;->F1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/q0/r/e$a;

    .line 15
    iget-wide v4, v1, Ln3/y/b/a/t0/q0/r/e$a;->e:J

    iget-wide v6, v1, Ln3/y/b/a/t0/q0/r/e$a;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Ln3/y/b/a/t0/q0/r/e;->p:J

    goto :goto_0

    .line 16
    :cond_0
    iput-wide v2, v0, Ln3/y/b/a/t0/q0/r/e;->p:J

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    move-wide v1, v4

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v2

    if-ltz v1, :cond_2

    move-wide v1, p4

    goto :goto_1

    .line 17
    :cond_2
    iget-wide v1, v0, Ln3/y/b/a/t0/q0/r/e;->p:J

    add-long/2addr v1, p4

    :goto_1
    iput-wide v1, v0, Ln3/y/b/a/t0/q0/r/e;->e:J

    return-void
.end method
