.class public final Lg/g/b/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/b/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/b/b/b/a;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/database/db/HiyaRoomDb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/b/b/b/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/b/b/a;",
            "Lj/a/a<",
            "Lcom/hiya/client/database/db/HiyaRoomDb;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/b/d;->a:Lg/g/b/b/b/a;

    .line 3
    iput-object p2, p0, Lg/g/b/b/b/d;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/b/b/b/a;Lj/a/a;)Lg/g/b/b/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/b/b/a;",
            "Lj/a/a<",
            "Lcom/hiya/client/database/db/HiyaRoomDb;",
            ">;)",
            "Lg/g/b/b/b/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/b/b/d;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/b/d;-><init>(Lg/g/b/b/b/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/b/b/a;Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/b/b/b/a;->c(Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/d;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/b/b/d/d;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/b/b/d/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/b/d;->a:Lg/g/b/b/b/a;

    iget-object v1, p0, Lg/g/b/b/b/d;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-static {v0, v1}, Lg/g/b/b/b/d;->c(Lg/g/b/b/b/a;Lcom/hiya/client/database/db/HiyaRoomDb;)Lg/g/b/b/d/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/b/b/d;->b()Lg/g/b/b/d/d;

    move-result-object v0

    return-object v0
.end method
