.class final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

.field final synthetic g:Landroid/telecom/Call$Details;

.field final synthetic h:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->g:Landroid/telecom/Call$Details;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to check the deny list. "

    invoke-static {v0, p1, v2, v1}, Lcom/hiya/client/support/logging/d;->h(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->g:Landroid/telecom/Call$Details;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-static {p1, v0, v1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->a(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
