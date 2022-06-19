.class public final Lg/g/b/d/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/d/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/repost/db/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/d/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/client/repost/db/b;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/d/e/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/d/c;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/g/b/d/d/c;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lg/g/b/d/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/client/repost/db/b;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/d/e/b;",
            ">;)",
            "Lg/g/b/d/d/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/d/c;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/d/c;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/repost/db/b;Lg/g/b/d/e/b;)Lg/g/b/d/d/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/d/a;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/d/a;-><init>(Lcom/hiya/client/repost/db/b;Lg/g/b/d/e/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/d/d/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/d/d/c;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/repost/db/b;

    iget-object v1, p0, Lg/g/b/d/d/c;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/b/d/e/b;

    invoke-static {v0, v1}, Lg/g/b/d/d/c;->c(Lcom/hiya/client/repost/db/b;Lg/g/b/d/e/b;)Lg/g/b/d/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/d/c;->b()Lg/g/b/d/d/a;

    move-result-object v0

    return-object v0
.end method
