.class public Lcom/hiya/stingray/t/w0;
.super Lio/realm/f0;
.source "SourceFile"

# interfaces
.implements Lio/realm/a1;


# instance fields
.field private a:I

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
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/t/w0;->D0(I)V

    return-void
.end method


# virtual methods
.method public D0(I)V
    .locals 0

    iput p1, p0, Lcom/hiya/stingray/t/w0;->a:I

    return-void
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hiya/stingray/t/w0;->b:Z

    return v0
.end method

.method public final O0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/w0;->G()Z

    move-result v0

    return v0
.end method

.method public final P0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/w0;->k()I

    move-result v0

    return v0
.end method

.method public final Q0(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/w0;->x(Z)V

    return-void
.end method

.method public final R0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/w0;->D0(I)V

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/hiya/stingray/t/w0;->a:I

    return v0
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hiya/stingray/t/w0;->b:Z

    return-void
.end method
