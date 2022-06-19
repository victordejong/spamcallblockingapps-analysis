.class public abstract Lw3/b/a/e0/e;
.super Lw3/b/a/e0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/x;
.implements Ljava/io/Serializable;


# instance fields
.field public volatile a:J

.field public volatile b:Lw3/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/e0/e;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    .line 25
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lw3/b/a/e0/e;-><init>(IIIIIIILw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(IIIIIIILw3/b/a/a;)V
    .locals 10

    move-object v0, p0

    .line 26
    invoke-direct {p0}, Lw3/b/a/e0/a;-><init>()V

    .line 27
    invoke-static/range {p8 .. p8}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    .line 28
    iput-object v1, v0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 29
    iget-object v2, v0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lw3/b/a/a;->q(IIIIIII)J

    move-result-wide v1

    .line 30
    iput-wide v1, v0, Lw3/b/a/e0/e;->a:J

    .line 31
    invoke-virtual {p0}, Lw3/b/a/e0/e;->w()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lw3/b/a/e0/a;-><init>()V

    .line 3
    invoke-static {v0}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 5
    iput-wide p1, p0, Lw3/b/a/e0/e;->a:J

    .line 6
    invoke-virtual {p0}, Lw3/b/a/e0/e;->w()V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/a;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lw3/b/a/e0/a;-><init>()V

    .line 13
    invoke-virtual {p0, p3}, Lw3/b/a/e0/e;->x(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p3

    iput-object p3, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 14
    iput-wide p1, p0, Lw3/b/a/e0/e;->a:J

    .line 15
    invoke-virtual {p0}, Lw3/b/a/e0/e;->w()V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/g;)V
    .locals 0

    .line 7
    invoke-static {p3}, Lw3/b/a/f0/t;->Z(Lw3/b/a/g;)Lw3/b/a/f0/t;

    move-result-object p3

    .line 8
    invoke-direct {p0}, Lw3/b/a/e0/a;-><init>()V

    .line 9
    invoke-virtual {p0, p3}, Lw3/b/a/e0/e;->x(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p3

    iput-object p3, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 10
    iput-wide p1, p0, Lw3/b/a/e0/e;->a:J

    .line 11
    invoke-virtual {p0}, Lw3/b/a/e0/e;->w()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lw3/b/a/a;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lw3/b/a/e0/a;-><init>()V

    .line 17
    invoke-static {}, Lw3/b/a/g0/d;->a()Lw3/b/a/g0/d;

    move-result-object p2

    .line 18
    iget-object p2, p2, Lw3/b/a/g0/d;->a:Lw3/b/a/g0/e;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Lw3/b/a/g0/e;->b(Ljava/lang/Class;)Lw3/b/a/g0/c;

    move-result-object p2

    check-cast p2, Lw3/b/a/g0/g;

    if-eqz p2, :cond_1

    .line 19
    invoke-interface {p2, p1, v0}, Lw3/b/a/g0/g;->a(Ljava/lang/Object;Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 22
    invoke-interface {p2, p1, v0}, Lw3/b/a/g0/g;->f(Ljava/lang/Object;Lw3/b/a/a;)J

    move-result-wide p1

    iput-wide p1, p0, Lw3/b/a/e0/e;->a:J

    .line 23
    invoke-virtual {p0}, Lw3/b/a/e0/e;->w()V

    return-void

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No instant converter found for type: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    return-wide v0
.end method

.method public l()Lw3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    return-object v0
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    invoke-virtual {v0}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    :cond_1
    return-void
.end method

.method public x(Lw3/b/a/a;)Lw3/b/a/a;
    .locals 0

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p1

    return-object p1
.end method
