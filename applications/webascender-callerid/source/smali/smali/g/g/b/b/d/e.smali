.class public final Lg/g/b/b/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/database/db/HiyaRoomDb;


# direct methods
.method public constructor <init>(Lcom/hiya/client/database/db/HiyaRoomDb;)V
    .locals 1

    const-string v0, "hiyaDb"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/b/d/e;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg/g/b/c/n;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/e;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->v()Lg/g/b/b/a/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/g/b/b/a/h;->j(Ljava/lang/String;)Lg/g/b/b/e/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/g/b/b/c/d;->a(Lg/g/b/b/e/a/d;)Lg/g/b/c/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Lg/g/b/c/n;)V
    .locals 1

    const-string v0, "postEventData"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/e;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->v()Lg/g/b/b/a/h;

    move-result-object v0

    invoke-static {p1}, Lg/g/b/b/c/d;->b(Lg/g/b/c/n;)Lg/g/b/b/e/a/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/g/b/b/a/a;->d(Ljava/lang/Object;)J

    return-void
.end method
