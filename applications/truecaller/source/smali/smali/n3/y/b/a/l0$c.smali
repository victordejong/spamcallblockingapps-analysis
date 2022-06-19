.class public final Ln3/y/b/a/l0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;JJZZJJIIJ)Ln3/y/b/a/l0$c;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Ln3/y/b/a/l0$c;->a:Ljava/lang/Object;

    move-object v1, p2

    .line 2
    iput-object v1, v0, Ln3/y/b/a/l0$c;->b:Ljava/lang/Object;

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Ln3/y/b/a/l0$c;->c:J

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Ln3/y/b/a/l0$c;->d:J

    move v1, p7

    .line 5
    iput-boolean v1, v0, Ln3/y/b/a/l0$c;->e:Z

    move v1, p8

    .line 6
    iput-boolean v1, v0, Ln3/y/b/a/l0$c;->f:Z

    move-wide v1, p9

    .line 7
    iput-wide v1, v0, Ln3/y/b/a/l0$c;->i:J

    move-wide v1, p11

    .line 8
    iput-wide v1, v0, Ln3/y/b/a/l0$c;->j:J

    move/from16 v1, p13

    .line 9
    iput v1, v0, Ln3/y/b/a/l0$c;->g:I

    move/from16 v1, p14

    .line 10
    iput v1, v0, Ln3/y/b/a/l0$c;->h:I

    move-wide/from16 v1, p15

    .line 11
    iput-wide v1, v0, Ln3/y/b/a/l0$c;->k:J

    return-object v0
.end method
