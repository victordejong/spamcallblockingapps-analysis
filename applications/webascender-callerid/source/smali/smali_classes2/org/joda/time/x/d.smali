.class public abstract Lorg/joda/time/x/d;
.super Lorg/joda/time/x/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/p;
.implements Ljava/io/Serializable;


# instance fields
.field private volatile f:J

.field private volatile g:Lorg/joda/time/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/e;->b()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/y/u;->W()Lorg/joda/time/y/u;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/x/d;-><init>(JLorg/joda/time/a;)V

    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/a;)V
    .locals 10

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Lorg/joda/time/x/a;-><init>()V

    move-object/from16 v1, p8

    .line 9
    invoke-virtual {p0, v1}, Lorg/joda/time/x/d;->s(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object v1

    iput-object v1, v0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    .line 10
    iget-object v2, v0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lorg/joda/time/a;->n(IIIIIII)J

    move-result-wide v1

    .line 11
    iget-object v3, v0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    invoke-virtual {p0, v1, v2, v3}, Lorg/joda/time/x/d;->t(JLorg/joda/time/a;)J

    iput-wide v1, v0, Lorg/joda/time/x/d;->f:J

    .line 12
    invoke-direct {p0}, Lorg/joda/time/x/d;->q()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/joda/time/y/u;->W()Lorg/joda/time/y/u;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/x/d;-><init>(JLorg/joda/time/a;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/joda/time/x/a;-><init>()V

    .line 5
    invoke-virtual {p0, p3}, Lorg/joda/time/x/d;->s(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p3

    iput-object p3, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    .line 6
    iget-object p3, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/x/d;->t(JLorg/joda/time/a;)J

    iput-wide p1, p0, Lorg/joda/time/x/d;->f:J

    .line 7
    invoke-direct {p0}, Lorg/joda/time/x/d;->q()V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/f;)V
    .locals 0

    .line 3
    invoke-static {p3}, Lorg/joda/time/y/u;->X(Lorg/joda/time/f;)Lorg/joda/time/y/u;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/x/d;-><init>(JLorg/joda/time/a;)V

    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/joda/time/x/d;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lorg/joda/time/x/d;->f:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    invoke-virtual {v0}, Lorg/joda/time/a;->M()Lorg/joda/time/a;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    :cond_1
    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/joda/time/x/d;->f:J

    return-wide v0
.end method

.method public f()Lorg/joda/time/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    return-object v0
.end method

.method protected s(Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p1

    return-object p1
.end method

.method protected t(JLorg/joda/time/a;)J
    .locals 0

    return-wide p1
.end method

.method protected u(Lorg/joda/time/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/x/d;->s(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    return-void
.end method

.method protected v(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/x/d;->g:Lorg/joda/time/a;

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/x/d;->t(JLorg/joda/time/a;)J

    iput-wide p1, p0, Lorg/joda/time/x/d;->f:J

    return-void
.end method
