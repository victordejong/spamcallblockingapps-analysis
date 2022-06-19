.class Lcom/hiya/stingray/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/j;->f()Lg/g/a/b/j1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/j$a;->a:Lcom/hiya/stingray/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$a;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->b:Lcom/hiya/stingray/q/a/k;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/k;->b()Z

    move-result v0

    return v0
.end method

.method public b()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$a;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->b:Lcom/hiya/stingray/q/a/k;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/k;->a()Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/d;->f:Lcom/hiya/stingray/d;

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/b;->f:Lcom/hiya/stingray/b;

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
