.class public Lcom/hiya/stingray/q/c/i/d;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/u0;


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
.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public L(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hiya/stingray/q/c/i/d;->b:J

    return-void
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hiya/stingray/q/c/i/d;->d:Z

    return v0
.end method

.method public b0()J
    .locals 2

    iget-wide v0, p0, Lcom/hiya/stingray/q/c/i/d;->b:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/d;->c:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/d;->a:Ljava/lang/String;

    return-void
.end method

.method public p0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hiya/stingray/q/c/i/d;->d:Z

    return-void
.end method
