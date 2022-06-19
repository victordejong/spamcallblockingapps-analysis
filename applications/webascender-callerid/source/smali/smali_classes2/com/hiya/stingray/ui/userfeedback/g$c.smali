.class Lcom/hiya/stingray/ui/userfeedback/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/userfeedback/g;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lretrofit2/Response<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/userfeedback/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/userfeedback/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/g$c;->f:Lcom/hiya/stingray/ui/userfeedback/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/g$c;->f:Lcom/hiya/stingray/ui/userfeedback/g;

    iget-object p1, p1, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/ui/userfeedback/h;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/userfeedback/h;->a0()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/g$c;->f:Lcom/hiya/stingray/ui/userfeedback/g;

    invoke-static {p1}, Lcom/hiya/stingray/ui/userfeedback/g;->t(Lcom/hiya/stingray/ui/userfeedback/g;)Li/c/b0/c/c;

    move-result-object p1

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

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
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/userfeedback/g$c;->a(Lretrofit2/Response;)V

    return-void
.end method
