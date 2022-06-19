.class public abstract Ln3/y/b/a/t0/p0/d;
.super Ln3/y/b/a/t0/p0/b;
.source "SourceFile"


# instance fields
.field public final i:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Ln3/y/b/a/t0/p0/b;-><init>(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, p10

    .line 3
    iput-wide v1, v0, Ln3/y/b/a/t0/p0/d;->i:J

    return-void
.end method
