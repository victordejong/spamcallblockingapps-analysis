.class public Lcom/hiya/stingray/t/x0;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/c1;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


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
    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/t/x0;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hiya/stingray/t/x0;->b:Z

    return v0
.end method

.method public final O0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/x0;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/x0;->G0()Z

    move-result v0

    return v0
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/x0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final R0(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/x0;->h0(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/t/x0;->a:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/t/x0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hiya/stingray/t/x0;->b:Z

    return-void
.end method
