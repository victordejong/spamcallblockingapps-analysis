.class Lcom/hiya/stingray/ui/contactdetails/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/x;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/util/i0/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/x;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x$a;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/util/i0/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x$a;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/x;->t(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x$a;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/x;->t(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/t/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/x;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/x$a;->f:Lcom/hiya/stingray/ui/contactdetails/x;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/x;->u(Lcom/hiya/stingray/ui/contactdetails/x;)Lcom/hiya/stingray/util/a0;

    move-result-object p1

    const-class v0, Lcom/hiya/stingray/util/i0/e;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->e(Ljava/lang/Class;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ContactDetailFragment got refreshDetailEvent but CallLogItem#getPhone is null."

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
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
    check-cast p1, Lcom/hiya/stingray/util/i0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/x$a;->a(Lcom/hiya/stingray/util/i0/e;)V

    return-void
.end method
