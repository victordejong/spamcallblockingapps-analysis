.class final Lcom/hiya/stingray/manager/y2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/y2;->m(Ljava/lang/String;)Li/c/b0/b/v;
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
.field final synthetic f:Lcom/hiya/stingray/manager/y2;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/y2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/y2$d;->f:Lcom/hiya/stingray/manager/y2;

    iput-object p2, p0, Lcom/hiya/stingray/manager/y2$d;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Lg/g/b/c/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2$d;->f:Lcom/hiya/stingray/manager/y2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/y2;->d(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/t/i1/f0;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/y2$d;->g:Ljava/lang/String;

    const-string v2, "callerId"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/t/i1/f0;->c(Ljava/lang/String;Lg/g/b/c/f;)Lcom/hiya/stingray/q/c/i/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/y2$d;->f:Lcom/hiya/stingray/manager/y2;

    invoke-static {v1}, Lcom/hiya/stingray/manager/y2;->b(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/q/b/p;

    move-result-object v1

    invoke-static {v0}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/q/b/p;->f(Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2$d;->f:Lcom/hiya/stingray/manager/y2;

    invoke-static {v0}, Lcom/hiya/stingray/manager/y2;->e(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/util/a0;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/y2$d;->a(Lg/g/b/c/f;)Lg/g/b/c/f;

    return-object p1
.end method
