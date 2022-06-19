.class final Lcom/hiya/stingray/ui/local/location/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/f;->w(Li/c/b0/b/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$b;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f$b;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/location/g;->n()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f$b;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/local/location/g;->j(Z)V

    .line 3
    invoke-static {p1}, Lr/a/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/f$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
