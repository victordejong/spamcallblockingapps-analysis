.class public Lcom/hiya/stingray/q/c/i/a;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/o0;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


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
.method public F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hiya/stingray/q/c/i/a;->c:Z

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/a;->d:Ljava/lang/String;

    return-void
.end method

.method public O0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/a;->q0()Z

    move-result v0

    return v0
.end method

.method public R0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/a;->N(Ljava/lang/String;)V

    return-void
.end method

.method public S0(Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "fullnumber"

    goto :goto_0

    :cond_0
    const-string p1, "beginswith"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, "blacklist"

    goto :goto_1

    :cond_1
    const-string p1, "whitelist"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/a;->w0(Ljava/lang/String;)V

    return-void
.end method

.method public T0(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/a;->a0(Z)V

    return-void
.end method

.method public U0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public V0(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/a;->F0(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hiya/stingray/q/c/i/a;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hiya/stingray/q/c/i/a;->e:Z

    return v0
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hiya/stingray/q/c/i/a;->c:Z

    return v0
.end method

.method public r0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public w0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/a;->a:Ljava/lang/String;

    return-void
.end method
