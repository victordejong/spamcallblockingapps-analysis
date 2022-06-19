.class public final Le/m/a/c/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Le/m/a/c/l1/p$a;


# instance fields
.field public final a:Le/m/a/c/y0;

.field public final b:Le/m/a/c/l1/p$a;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Le/m/a/c/b0;

.field public final g:Z

.field public final h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final i:Le/m/a/c/n1/i;

.field public final j:Le/m/a/c/l1/p$a;

.field public volatile k:J

.field public volatile l:J

.field public volatile m:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/a/c/l1/p$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Le/m/a/c/l1/p$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/m/a/c/n0;->n:Le/m/a/c/l1/p$a;

    return-void
.end method

.method public constructor <init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Le/m/a/c/n0;->c:J

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Le/m/a/c/n0;->d:J

    move v1, p7

    .line 6
    iput v1, v0, Le/m/a/c/n0;->e:I

    move-object v1, p8

    .line 7
    iput-object v1, v0, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    move v1, p9

    .line 8
    iput-boolean v1, v0, Le/m/a/c/n0;->g:Z

    move-object v1, p10

    .line 9
    iput-object v1, v0, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    move-wide/from16 v1, p13

    .line 12
    iput-wide v1, v0, Le/m/a/c/n0;->k:J

    move-wide/from16 v1, p15

    .line 13
    iput-wide v1, v0, Le/m/a/c/n0;->l:J

    move-wide/from16 v1, p17

    .line 14
    iput-wide v1, v0, Le/m/a/c/n0;->m:J

    return-void
.end method

.method public static d(JLe/m/a/c/n1/i;)Le/m/a/c/n0;
    .locals 20

    move-wide/from16 v3, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 1
    new-instance v19, Le/m/a/c/n0;

    move-object/from16 v0, v19

    sget-object v1, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    sget-object v2, Le/m/a/c/n0;->n:Le/m/a/c/l1/p$a;

    move-object v12, v2

    sget-object v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;->d:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    return-object v19
.end method


# virtual methods
.method public a(Le/m/a/c/l1/p$a;JJJ)Le/m/a/c/n0;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Le/m/a/c/n0;

    iget-object v2, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/l1/p$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v6, p4

    goto :goto_0

    :cond_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v3

    :goto_0
    iget v8, v0, Le/m/a/c/n0;->e:I

    iget-object v9, v0, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    iget-boolean v10, v0, Le/m/a/c/n0;->g:Z

    iget-object v11, v0, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v13, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget-wide v14, v0, Le/m/a/c/n0;->k:J

    move-object/from16 v1, v20

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    return-object v20
.end method

.method public b(Le/m/a/c/b0;)Le/m/a/c/n0;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    new-instance v20, Le/m/a/c/n0;

    move-object/from16 v1, v20

    iget-object v2, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v3, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v4, v0, Le/m/a/c/n0;->c:J

    iget-wide v6, v0, Le/m/a/c/n0;->d:J

    iget v8, v0, Le/m/a/c/n0;->e:I

    iget-boolean v10, v0, Le/m/a/c/n0;->g:Z

    iget-object v11, v0, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v13, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget-wide v14, v0, Le/m/a/c/n0;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Le/m/a/c/n0;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Le/m/a/c/n0;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    return-object v20
.end method

.method public c(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;)Le/m/a/c/n0;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 1
    new-instance v20, Le/m/a/c/n0;

    move-object/from16 v1, v20

    iget-object v2, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v3, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v4, v0, Le/m/a/c/n0;->c:J

    iget-wide v6, v0, Le/m/a/c/n0;->d:J

    iget v8, v0, Le/m/a/c/n0;->e:I

    iget-object v9, v0, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    iget-boolean v10, v0, Le/m/a/c/n0;->g:Z

    iget-object v13, v0, Le/m/a/c/n0;->j:Le/m/a/c/l1/p$a;

    iget-wide v14, v0, Le/m/a/c/n0;->k:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Le/m/a/c/n0;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Le/m/a/c/n0;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Le/m/a/c/n0;-><init>(Le/m/a/c/y0;Le/m/a/c/l1/p$a;JJILe/m/a/c/b0;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/i;Le/m/a/c/l1/p$a;JJJ)V

    return-object v20
.end method

.method public e(ZLe/m/a/c/y0$c;Le/m/a/c/y0$b;)Le/m/a/c/l1/p$a;
    .locals 4

    .line 1
    iget-object p1, p0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {p1}, Le/m/a/c/y0;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Le/m/a/c/n0;->n:Le/m/a/c/l1/p$a;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {p1}, Le/m/a/c/y0;->a()I

    move-result p1

    .line 4
    iget-object v0, p0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v0, p1, p2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object p2

    iget p2, p2, Le/m/a/c/y0$c;->g:I

    .line 5
    iget-object v0, p0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    iget-object v1, p0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-object v1, v1, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 6
    iget-object v3, p0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {v3, v0, p3}, Le/m/a/c/y0;->f(ILe/m/a/c/y0$b;)Le/m/a/c/y0$b;

    move-result-object p3

    iget p3, p3, Le/m/a/c/y0$b;->b:I

    if-ne p1, p3, :cond_1

    .line 7
    iget-object p1, p0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget-wide v1, p1, Le/m/a/c/l1/p$a;->d:J

    .line 8
    :cond_1
    new-instance p1, Le/m/a/c/l1/p$a;

    iget-object p3, p0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    invoke-virtual {p3, p2}, Le/m/a/c/y0;->l(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2, v1, v2}, Le/m/a/c/l1/p$a;-><init>(Ljava/lang/Object;J)V

    return-object p1
.end method
