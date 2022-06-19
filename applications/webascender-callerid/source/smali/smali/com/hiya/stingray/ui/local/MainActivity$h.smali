.class final Lcom/hiya/stingray/ui/local/MainActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/MainActivity;->onResume()V
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
        "Lcom/hiya/stingray/ui/local/e/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/MainActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$h;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/local/e/b$a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$h;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/e;->p([Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/s/z;

    invoke-virtual {v0}, Lkotlin/s/z;->b()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity$h;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v1}, Lcom/hiya/stingray/ui/local/MainActivity;->P(Lcom/hiya/stingray/ui/local/MainActivity;)Lcom/hiya/stingray/ui/local/MainActivity$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/local/MainActivity$b;->v(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/local/e/b$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity$h;->a(Lcom/hiya/stingray/ui/local/e/b$a;)V

    return-void
.end method
