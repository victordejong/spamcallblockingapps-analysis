.class Lcom/hiya/stingray/manager/q1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/q1;->o(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Boolean;",
        "Li/c/b0/b/v<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/hiya/stingray/manager/q1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/q1$c;->h:Lcom/hiya/stingray/manager/q1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/q1$c;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/manager/q1$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Li/c/b0/b/v<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/q1$c;->h:Lcom/hiya/stingray/manager/q1;

    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$c;->f:Ljava/lang/String;

    const-string v1, "call_screener_saved"

    invoke-static {p1, v1, v0}, Lcom/hiya/stingray/manager/q1;->b(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/q1$c;->h:Lcom/hiya/stingray/manager/q1;

    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$c;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/manager/q1;->c(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->M()Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/q1$c;->h:Lcom/hiya/stingray/manager/q1;

    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$c;->f:Ljava/lang/String;

    const-string v1, "call_screener_not_saved"

    invoke-static {p1, v1, v0}, Lcom/hiya/stingray/manager/q1;->b(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/q1$c;->a(Ljava/lang/Boolean;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
