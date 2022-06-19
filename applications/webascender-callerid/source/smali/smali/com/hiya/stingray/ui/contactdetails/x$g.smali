.class Lcom/hiya/stingray/ui/contactdetails/x$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/x;->P(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/x;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x$g;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x$g;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    iget-object v0, v0, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/a0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/a0;->X0(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/x$g;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/x;->u(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/util/a0;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/util/i0/d;

    sget-object v2, Lcom/hiya/stingray/util/i0/d$a;->BLOCK_STATUS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method
