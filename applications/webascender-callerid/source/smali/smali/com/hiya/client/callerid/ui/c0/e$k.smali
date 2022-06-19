.class final Lcom/hiya/client/callerid/ui/c0/e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->n(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V
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
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$k;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$k;->f:Lcom/hiya/client/callerid/ui/c0/e;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get cached caller profile."

    invoke-static {p1, v1, v0}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$k;->a(Ljava/lang/Throwable;)V

    return-void
.end method
