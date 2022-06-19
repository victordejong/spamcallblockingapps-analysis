.class public Lorg/joda/time/n;
.super Lorg/joda/time/x/d;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/p;
.implements Lorg/joda/time/r;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/n$a;
    }
.end annotation


# instance fields
.field private h:Lorg/joda/time/c;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/x/d;-><init>()V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/x/d;-><init>(JLorg/joda/time/f;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(Lorg/joda/time/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/joda/time/x/d;->u(Lorg/joda/time/a;)V

    return-void
.end method

.method public v(J)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/joda/time/n;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/joda/time/n;->h:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->E(J)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/joda/time/n;->h:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->D(J)J

    move-result-wide p1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/joda/time/n;->h:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->F(J)J

    move-result-wide p1

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lorg/joda/time/n;->h:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lorg/joda/time/n;->h:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    .line 7
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/joda/time/x/d;->v(J)V

    return-void
.end method

.method public w(Lorg/joda/time/d;)Lorg/joda/time/n$a;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/joda/time/c;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lorg/joda/time/n$a;

    invoke-direct {p1, p0, v0}, Lorg/joda/time/n$a;-><init>(Lorg/joda/time/n;Lorg/joda/time/c;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DateTimeFieldType must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Lorg/joda/time/f;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/joda/time/e;->h(Lorg/joda/time/f;)Lorg/joda/time/f;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/x/b;->h()Lorg/joda/time/f;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/e;->h(Lorg/joda/time/f;)Lorg/joda/time/f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/x/d;->e()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/f;->o(Lorg/joda/time/f;J)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/n;->u(Lorg/joda/time/a;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/n;->v(J)V

    return-void
.end method
