.class public Lcom/hiya/stingray/q/c/i/f;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/y0;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/f0;-><init>()V

    instance-of v0, p0, Lio/realm/internal/m;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/m;

    invoke-interface {v0}, Lio/realm/internal/m;->T()V

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/realm/f0;-><init>()V

    instance-of v0, p0, Lio/realm/internal/m;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/m;

    invoke-interface {v0}, Lio/realm/internal/m;->T()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/f;->r(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/q/c/i/f;->j0(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/c/i/f;->i(J)V

    return-void
.end method


# virtual methods
.method public A0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/hiya/stingray/q/c/i/f;->a:I

    return v0
.end method

.method public O0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/f;->K()I

    move-result v0

    return v0
.end method

.method public P0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/f;->A0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/hiya/stingray/q/c/i/f;->c:J

    return-wide v0
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hiya/stingray/q/c/i/f;->c:J

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/f;->b:Ljava/lang/String;

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/hiya/stingray/q/c/i/f;->a:I

    return-void
.end method
