.class public final Lg/g/b/d/f/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/repost/db/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/b/d/f/m;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/repost/db/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/b/d/f/m;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/d/f/m;",
            "Lj/a/a<",
            "Lcom/hiya/client/repost/db/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/f/q;->a:Lg/g/b/d/f/m;

    .line 3
    iput-object p2, p0, Lg/g/b/d/f/q;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/b/d/f/m;Lj/a/a;)Lg/g/b/d/f/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/d/f/m;",
            "Lj/a/a<",
            "Lcom/hiya/client/repost/db/a;",
            ">;)",
            "Lg/g/b/d/f/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/f/q;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/f/q;-><init>(Lg/g/b/d/f/m;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/d/f/m;Lcom/hiya/client/repost/db/a;)Lcom/hiya/client/repost/db/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/b/d/f/m;->d(Lcom/hiya/client/repost/db/a;)Lcom/hiya/client/repost/db/b;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/client/repost/db/b;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/client/repost/db/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/d/f/q;->a:Lg/g/b/d/f/m;

    iget-object v1, p0, Lg/g/b/d/f/q;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/repost/db/a;

    invoke-static {v0, v1}, Lg/g/b/d/f/q;->c(Lg/g/b/d/f/m;Lcom/hiya/client/repost/db/a;)Lcom/hiya/client/repost/db/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/f/q;->b()Lcom/hiya/client/repost/db/b;

    move-result-object v0

    return-object v0
.end method
