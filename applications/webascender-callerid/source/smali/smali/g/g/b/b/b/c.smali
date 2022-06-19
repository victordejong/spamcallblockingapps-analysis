.class public final Lg/g/b/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/database/db/HiyaRoomDb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/b/b/b/a;


# direct methods
.method public constructor <init>(Lg/g/b/b/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/b/c;->a:Lg/g/b/b/b/a;

    return-void
.end method

.method public static a(Lg/g/b/b/b/a;)Lg/g/b/b/b/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/b/b/c;

    invoke-direct {v0, p0}, Lg/g/b/b/b/c;-><init>(Lg/g/b/b/b/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/b/b/a;)Lcom/hiya/client/database/db/HiyaRoomDb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/b/b/a;->b()Lcom/hiya/client/database/db/HiyaRoomDb;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/client/database/db/HiyaRoomDb;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/client/database/db/HiyaRoomDb;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/b/b/c;->a:Lg/g/b/b/b/a;

    invoke-static {v0}, Lg/g/b/b/b/c;->c(Lg/g/b/b/b/a;)Lcom/hiya/client/database/db/HiyaRoomDb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/b/b/c;->b()Lcom/hiya/client/database/db/HiyaRoomDb;

    move-result-object v0

    return-object v0
.end method
