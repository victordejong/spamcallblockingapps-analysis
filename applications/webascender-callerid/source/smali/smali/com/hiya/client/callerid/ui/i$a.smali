.class public final Lcom/hiya/client/callerid/ui/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/i;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i$a;->a:Lcom/hiya/client/callerid/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lg/g/a/b/j1/n/b;",
            "Lg/g/a/b/j1/n/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/l;

    .line 1
    sget-object v1, Lg/g/a/b/j1/n/b;->AUTH:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://sdk-auth.edge.hiyaapi.com"

    const-string v4, "v2"

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lg/g/a/b/j1/n/b;->INGESTION:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://sdk-ingestion.edge.hiyaapi.com"

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lg/g/a/b/j1/n/b;->CALLER_PROFILE:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://sdk-callerprofile.edge.hiyaapi.com"

    const-string v4, "v3"

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Lg/g/a/b/j1/n/b;->PHONES:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://sdk-phones.edge.hiyaapi.com"

    const-string v4, "v1"

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lkotlin/s/b0;->g([Lkotlin/l;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i$a;->a:Lcom/hiya/client/callerid/ui/i;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/i;->h(Lcom/hiya/client/callerid/ui/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
