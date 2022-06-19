.class Lcom/hiya/stingray/ui/customblock/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/d;->g(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/customblock/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/d$f;->f:Lcom/hiya/stingray/ui/customblock/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d$f;->f:Lcom/hiya/stingray/ui/customblock/d;

    invoke-static {v0}, Lcom/hiya/stingray/ui/customblock/d;->t(Lcom/hiya/stingray/ui/customblock/d;)Lcom/hiya/stingray/ui/common/error/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/d$f;->f:Lcom/hiya/stingray/ui/customblock/d;

    invoke-static {v0}, Lcom/hiya/stingray/ui/customblock/d;->u(Lcom/hiya/stingray/ui/customblock/d;)Lcom/hiya/stingray/util/a0;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/t/e1/a;

    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/d$f;->f:Lcom/hiya/stingray/ui/customblock/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Failed to add new call log black list item"

    invoke-direct {v1, v2, v3, p1}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/customblock/d$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
