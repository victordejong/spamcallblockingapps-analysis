.class final Lcom/hiya/stingray/f$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lcom/hiya/stingray/t/d0;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$j;->f:Lcom/hiya/stingray/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)Li/c/b0/b/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$j;->f:Lcom/hiya/stingray/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Private call log item found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/f$j;->f:Lcom/hiya/stingray/f;

    invoke-static {v0}, Lcom/hiya/stingray/f;->c(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/o1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->m()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "it.id!!"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o1;->h0(I)Li/c/b0/b/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$j;->a(Lcom/hiya/stingray/t/d0;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method
