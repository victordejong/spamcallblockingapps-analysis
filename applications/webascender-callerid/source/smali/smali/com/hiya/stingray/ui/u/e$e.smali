.class final Lcom/hiya/stingray/ui/u/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/e;->A(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/u/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/u/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/e$e;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e$e;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/u/f;->c0(Z)V

    return-void
.end method
