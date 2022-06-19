.class final Lcom/hiya/stingray/ui/local/common/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/common/g;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/common/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/common/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/g$b;->f:Lcom/hiya/stingray/ui/local/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/g$b;->f:Lcom/hiya/stingray/ui/local/common/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/g;->h1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/ui/common/i;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/hiya/stingray/ui/common/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/i;->c1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/g$b;->f:Lcom/hiya/stingray/ui/local/common/g;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/common/g;->f1()Lcom/hiya/stingray/manager/e1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hiya/stingray/manager/f1;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
