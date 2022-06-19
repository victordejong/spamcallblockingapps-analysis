.class public final Lg/g/b/b/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/b/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/database/db/HiyaRoomDb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/client/database/db/HiyaRoomDb;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/d/f;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lg/g/b/b/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/client/database/db/HiyaRoomDb;",
            ">;)",
            "Lg/g/b/b/d/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/b/d/f;

    invoke-direct {v0, p0}, Lg/g/b/b/d/f;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/e;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/b/d/e;

    invoke-direct {v0, p0}, Lg/g/b/b/d/e;-><init>(Lcom/hiya/client/database/db/HiyaRoomDb;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/b/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/f;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-static {v0}, Lg/g/b/b/d/f;->c(Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/b/d/f;->b()Lg/g/b/b/d/e;

    move-result-object v0

    return-object v0
.end method
