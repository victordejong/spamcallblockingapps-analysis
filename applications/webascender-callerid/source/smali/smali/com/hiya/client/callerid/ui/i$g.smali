.class final Lcom/hiya/client/callerid/ui/i$g;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lg/g/a/a/j/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/i;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i$g;->f:Lcom/hiya/client/callerid/ui/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lg/g/a/a/j/c/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/i$b;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/i$g;->f:Lcom/hiya/client/callerid/ui/i;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/i;->i(Lcom/hiya/client/callerid/ui/i;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hiya/client/callerid/ui/i$b;-><init>(Lcom/hiya/client/callerid/ui/i;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/j;->b(Lcom/hiya/client/callerid/ui/i$b;)Lg/g/a/a/j/c/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$g;->a()Lg/g/a/a/j/c/a;

    move-result-object v0

    return-object v0
.end method
