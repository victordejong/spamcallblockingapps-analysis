.class final Lcom/hiya/stingray/manager/j4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/j4;->f(Ljava/lang/String;)Li/c/b0/b/v;
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
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/j4;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/j4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/j4$c;->f:Lcom/hiya/stingray/manager/j4;

    iput-object p2, p0, Lcom/hiya/stingray/manager/j4$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/j;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/common/base/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/j4$c;->f:Lcom/hiya/stingray/manager/j4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/j4;->b(Lcom/hiya/stingray/manager/j4;)Lcom/hiya/stingray/t/i1/a1;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/manager/j4$c;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/g1/a;

    invoke-virtual {v1, v2, p1}, Lcom/hiya/stingray/t/i1/a1;->i(Ljava/lang/String;Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/manager/j4;->c(Lcom/hiya/stingray/manager/j4;Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/j4$c;->f:Lcom/hiya/stingray/manager/j4;

    invoke-static {p1}, Lcom/hiya/stingray/manager/j4;->b(Lcom/hiya/stingray/manager/j4;)Lcom/hiya/stingray/t/i1/a1;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/j4$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/i1/a1;->h(Ljava/lang/String;)Lg/g/a/a/i/o/y;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/manager/j4;->c(Lcom/hiya/stingray/manager/j4;Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/base/j;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/j4$c;->a(Lcom/google/common/base/j;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
