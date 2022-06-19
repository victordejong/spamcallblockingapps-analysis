.class Lcom/hiya/stingray/manager/f4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/f4;->e(Li/c/b0/b/v;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/f4;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/f4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/f4$a;->f:Lcom/hiya/stingray/manager/f4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/f4$a;->f:Lcom/hiya/stingray/manager/f4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/f4;->b(Lcom/hiya/stingray/manager/f4;)Lcom/hiya/stingray/manager/h4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/f4$a;->f:Lcom/hiya/stingray/manager/f4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/f4;->c(Lcom/hiya/stingray/manager/f4;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/f4$a;->f:Lcom/hiya/stingray/manager/f4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/f4;->d(Lcom/hiya/stingray/manager/f4;)Lcom/hiya/stingray/manager/o2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->M(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/f4$a;->f:Lcom/hiya/stingray/manager/f4;

    invoke-static {v0}, Lcom/hiya/stingray/manager/f4;->d(Lcom/hiya/stingray/manager/f4;)Lcom/hiya/stingray/manager/o2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->N(Z)V

    :cond_1
    :goto_0
    return-void
.end method
