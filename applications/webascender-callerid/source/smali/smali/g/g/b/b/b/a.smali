.class public final Lg/g/b/b/b/a;
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

    iput-object p1, p0, Lg/g/b/b/b/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/c;
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/d/c;

    invoke-direct {v0, p1}, Lg/g/b/b/d/c;-><init>(Lcom/hiya/client/database/db/HiyaRoomDb;)V

    return-object v0
.end method

.method public final b()Lcom/hiya/client/database/db/HiyaRoomDb;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/b/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/client/database/db/a;->b(Landroid/content/Context;)Lcom/hiya/client/database/db/HiyaRoomDb;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/d;
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/d/d;

    invoke-direct {v0, p1}, Lg/g/b/b/d/d;-><init>(Lcom/hiya/client/database/db/HiyaRoomDb;)V

    return-object v0
.end method

.method public final d(Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/g;
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/d/g;

    invoke-direct {v0, p1}, Lg/g/b/b/d/g;-><init>(Lcom/hiya/client/database/db/HiyaRoomDb;)V

    return-object v0
.end method
