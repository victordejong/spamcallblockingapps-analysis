.class final Lcom/hiya/stingray/q/b/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/y;->e(Ljava/lang/String;)Li/c/b0/b/e;
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
.field final synthetic f:Lcom/hiya/stingray/q/b/y;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/y;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/b/y$d;->f:Lcom/hiya/stingray/q/b/y;

    iput-object p2, p0, Lcom/hiya/stingray/q/b/y$d;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/j;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/x0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/base/j;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/x0;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/hiya/stingray/t/x0;

    invoke-direct {p1}, Lcom/hiya/stingray/t/x0;-><init>()V

    iget-object v0, p0, Lcom/hiya/stingray/q/b/y$d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/t/x0;->Q0(Ljava/lang/String;)V

    :goto_0
    const-string v0, "oInfo.orNull()\n         \u2026oneNumber = phoneNumber }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/q/b/y$d;->f:Lcom/hiya/stingray/q/b/y;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/y;->a(Lcom/hiya/stingray/q/b/y;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/hiya/stingray/q/b/y$d$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/q/b/y$d$a;-><init>(Lcom/hiya/stingray/t/x0;)V

    invoke-virtual {v0, v1}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    .line 5
    invoke-virtual {v0}, Lio/realm/y;->close()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/base/j;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/y$d;->a(Lcom/google/common/base/j;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
