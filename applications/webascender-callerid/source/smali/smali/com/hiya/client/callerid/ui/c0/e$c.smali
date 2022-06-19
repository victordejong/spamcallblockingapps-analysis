.class final Lcom/hiya/client/callerid/ui/c0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->j(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLcom/hiya/client/callerid/ui/overlay/f;Landroid/content/Context;Lg/g/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Lcom/hiya/client/callerid/ui/c0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lkotlin/w/c/q;


# direct methods
.method constructor <init>(Lkotlin/w/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$c;->f:Lkotlin/w/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/hiya/client/callerid/ui/c0/e$a;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$c;->f:Lkotlin/w/c/q;

    iget-object v0, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/hiya/client/callerid/ui/b0/e;

    if-eqz v1, :cond_1

    .line 2
    new-instance p1, Lcom/hiya/client/callerid/ui/c0/e$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    check-cast v0, Lcom/hiya/client/callerid/ui/b0/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p1, v1, v2, v0}, Lcom/hiya/client/callerid/ui/c0/e$a;-><init>(ZZLcom/hiya/client/callerid/ui/b0/e;)V

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const-string v0, "it"

    .line 6
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$c;->a(Ljava/lang/Throwable;)Lcom/hiya/client/callerid/ui/c0/e$a;

    move-result-object p1

    return-object p1
.end method
