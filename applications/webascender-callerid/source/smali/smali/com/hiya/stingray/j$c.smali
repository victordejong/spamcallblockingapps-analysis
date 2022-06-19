.class Lcom/hiya/stingray/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/j;->b()Lg/g/a/b/j1/i;
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
    iput-object p1, p0, Lcom/hiya/stingray/j$c;->a:Lcom/hiya/stingray/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$c;->a:Lcom/hiya/stingray/j;

    iget-object v0, v0, Lcom/hiya/stingray/j;->c:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "premium"

    goto :goto_0

    :cond_0
    const-string v0, "basic"

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "11.0.1-8647"

    return-object v0
.end method

.method public synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->b(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j$c;->a:Lcom/hiya/stingray/j;

    invoke-static {v0}, Lcom/hiya/stingray/j;->h(Lcom/hiya/stingray/j;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->c(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->a(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
