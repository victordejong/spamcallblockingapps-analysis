.class public Lcom/hiya/stingray/q/c/i/e;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/w0;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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
.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->j:Ljava/lang/String;

    return-void
.end method

.method public H0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->i:Ljava/lang/String;

    return-void
.end method

.method public I()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final O0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->z0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final Q0()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->W()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final R0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public final U0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public W()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final W0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final X0()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->f0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final Y0()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/i/e;->I()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final Z0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->U(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final a1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->B(Ljava/lang/String;)V

    return-void
.end method

.method public final b1(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->s0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public c0(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->l:Ljava/lang/Boolean;

    return-void
.end method

.method public final c1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->o0(Ljava/lang/String;)V

    return-void
.end method

.method public final d1(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->y0(Ljava/lang/Integer;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->g:Ljava/lang/String;

    return-void
.end method

.method public final e1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f0()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final f1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->n(Ljava/lang/String;)V

    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->h:Ljava/lang/String;

    return-void
.end method

.method public final g1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/hiya/stingray/q/c/i/e;->a:J

    return-wide v0
.end method

.method public final h1(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->c0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hiya/stingray/q/c/i/e;->a:J

    return-void
.end method

.method public final i1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public final j1(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/c/i/e;->i(J)V

    return-void
.end method

.method public final k1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/c/i/e;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->b:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public o0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->e:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s0(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public v0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->f:Ljava/lang/String;

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public y0(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/c/i/e;->c:Ljava/lang/Integer;

    return-void
.end method

.method public z0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/c/i/e;->j:Ljava/lang/String;

    return-object v0
.end method
