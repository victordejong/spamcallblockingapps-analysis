.class final Lcom/hiya/stingray/ui/local/location/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/f;->z(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$f;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lr/a/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$f;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/location/g;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/location/g;->w()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/f$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
