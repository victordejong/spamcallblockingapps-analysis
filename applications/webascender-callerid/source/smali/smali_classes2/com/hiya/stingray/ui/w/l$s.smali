.class final Lcom/hiya/stingray/ui/w/l$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->p()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$s;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/l$s;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/w/l;->C(Lcom/hiya/stingray/ui/w/l;Ljava/util/List;)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$s;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l$s;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hiya/stingray/ui/w/l;->C(Lcom/hiya/stingray/ui/w/l;Ljava/util/List;)Z

    move-result v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/ui/w/l$s;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/w/o;->H()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/ui/w/l$s;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {p1}, Lcom/hiya/stingray/ui/w/l;->u(Lcom/hiya/stingray/ui/w/l;)Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f110215

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/w/o;->z0(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$s;->a(Ljava/lang/Throwable;)V

    return-void
.end method
