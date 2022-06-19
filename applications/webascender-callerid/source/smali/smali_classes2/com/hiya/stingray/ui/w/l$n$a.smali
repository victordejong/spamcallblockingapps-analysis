.class final Lcom/hiya/stingray/ui/w/l$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l$n;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l$n;

.field final synthetic g:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l$n;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$n$a;->f:Lcom/hiya/stingray/ui/w/l$n;

    iput-object p2, p0, Lcom/hiya/stingray/ui/w/l$n$a;->g:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$n$a;->f:Lcom/hiya/stingray/ui/w/l$n;

    iget-object v0, v0, Lcom/hiya/stingray/ui/w/l$n;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hiya/stingray/ui/w/o;->E0(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$n$a;->f:Lcom/hiya/stingray/ui/w/l$n;

    iget-object v0, v0, Lcom/hiya/stingray/ui/w/l$n;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v0}, Lcom/hiya/stingray/ui/w/l;->y(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/t/h1/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/w/l;->H(Lcom/hiya/stingray/ui/w/l;Lcom/hiya/stingray/t/h1/i;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$n$a;->g:Ljava/lang/Throwable;

    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    return-void
.end method
