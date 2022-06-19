.class public Lcom/hiya/stingray/q/c/i/b;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/q0;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Z


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


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public C0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hiya/stingray/q/c/i/b;->d:Z

    return-void
.end method

.method public O0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/b;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/b;->t0()Z

    move-result v0

    return v0
.end method

.method public R0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/b;->y(Ljava/lang/String;)V

    return-void
.end method

.method public S0(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/b;->C0(Z)V

    return-void
.end method

.method public T0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/c/i/b;->d(J)V

    return-void
.end method

.method public U0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hiya/stingray/q/c/i/b;->b:J

    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/hiya/stingray/q/c/i/b;->b:J

    return-wide v0
.end method

.method public t0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hiya/stingray/q/c/i/b;->d:Z

    return v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/b;->c:Ljava/lang/String;

    return-void
.end method
