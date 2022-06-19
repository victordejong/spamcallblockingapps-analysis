.class final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->g(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V
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


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$c;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/service/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/client/support/logging/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$c;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->b(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;)Li/c/b0/c/a;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
