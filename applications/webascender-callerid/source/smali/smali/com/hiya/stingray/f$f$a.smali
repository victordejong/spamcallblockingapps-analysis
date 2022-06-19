.class final Lcom/hiya/stingray/f$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f$f;->a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f$f;

.field final synthetic g:Lcom/hiya/stingray/f$b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f$f;Lcom/hiya/stingray/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$f$a;->f:Lcom/hiya/stingray/f$f;

    iput-object p2, p0, Lcom/hiya/stingray/f$f$a;->g:Lcom/hiya/stingray/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/e0;)Lcom/hiya/stingray/f$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$f$a;->f:Lcom/hiya/stingray/f$f;

    iget-object v0, v0, Lcom/hiya/stingray/f$f;->f:Lcom/hiya/stingray/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call log item found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/f$f$a;->g:Lcom/hiya/stingray/f$b;

    invoke-virtual {v0}, Lcom/hiya/stingray/f$b;->a()Lcom/hiya/stingray/manager/n1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/b0;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/f$f$a;->f:Lcom/hiya/stingray/f$f;

    iget-object v1, v0, Lcom/hiya/stingray/f$f;->i:Lg/g/b/c/k;

    sget-object v2, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/hiya/stingray/f$f;->f:Lcom/hiya/stingray/f;

    invoke-static {v0}, Lcom/hiya/stingray/f;->c(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/o1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/e0;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o1;->h0(I)Li/c/b0/b/e;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e;->z()Li/c/b0/b/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Li/c/b0/b/e;->h()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/f$f$a;->g:Lcom/hiya/stingray/f$b;

    .line 6
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/f$b;->f(Lcom/hiya/stingray/t/e0;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/e0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$f$a;->a(Lcom/hiya/stingray/t/e0;)Lcom/hiya/stingray/f$b;

    move-result-object p1

    return-object p1
.end method
