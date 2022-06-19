.class public final Lcom/hiya/client/callerid/ui/z/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/l;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/k;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/d;Lh/a;Lh/a;)Lcom/hiya/client/callerid/ui/a0/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg/g/b/a/b;",
            "Lcom/hiya/client/callerid/ui/a0/k;",
            "Lcom/hiya/client/callerid/ui/x/a;",
            "Lcom/hiya/client/callerid/ui/a0/d;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/a0/c;"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayBehaviorConfig"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneEventHandler"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdManager"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyCountryIso"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyNetworkCountryIso"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/hiya/client/callerid/ui/a0/c;-><init>(Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/k;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/d;Lh/a;Lh/a;)V

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/l;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataUtil.getDeviceSimIso(context)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Landroid/content/Context;Lcom/hiya/client/callerid/ui/incallui/a;)Lcom/hiya/client/callerid/ui/a0/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/g;

    invoke-direct {v0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/g;-><init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/incallui/a;)V

    return-object v0
.end method

.method public final e(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/f;)Lcom/hiya/client/callerid/ui/f;
    .locals 1

    const-string v0, "hiyaCallerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/g;

    invoke-direct {v0, p1, p2}, Lcom/hiya/client/callerid/ui/g;-><init>(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/f;)V

    return-object v0
.end method

.method public final f(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/a0/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/h;

    invoke-direct {v0, p1}, Lcom/hiya/client/callerid/ui/a0/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataUtil.getNetworkCountryIso(context)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h()Li/c/b0/c/a;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    return-object v0
.end method
