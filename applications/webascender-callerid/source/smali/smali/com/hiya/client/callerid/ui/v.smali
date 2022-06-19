.class public final Lcom/hiya/client/callerid/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/g/b/a/b;

.field public b:Lcom/hiya/client/callerid/ui/a0/r;

.field public c:Lcom/hiya/client/callerid/ui/f;

.field public d:Lcom/hiya/client/callerid/ui/a0/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/z/b;->a:Lcom/hiya/client/callerid/ui/z/b$a;

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/z/b$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/b;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/client/callerid/ui/z/b;->a(Lcom/hiya/client/callerid/ui/v;)V

    return-void
.end method


# virtual methods
.method public final a()Lg/g/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/v;->a:Lg/g/b/a/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hiyaCallerId"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Lcom/hiya/client/callerid/ui/a0/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/v;->d:Lcom/hiya/client/callerid/ui/a0/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "overlayBehaviorConfig"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
