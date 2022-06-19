.class final Lcom/hiya/stingray/ui/w/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->M()V
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
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$e;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$e;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v0}, Lcom/hiya/stingray/ui/w/l;->w(Lcom/hiya/stingray/ui/w/l;)Li/c/b0/k/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/k/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method
