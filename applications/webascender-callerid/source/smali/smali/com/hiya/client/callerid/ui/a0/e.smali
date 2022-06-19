.class public final Lcom/hiya/client/callerid/ui/a0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/a0/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/y/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/overlay/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/y/d;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/overlay/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/e;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/e;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/e;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/a0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/y/d;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/overlay/g/e;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/a0/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/e;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/y/d;Lcom/hiya/client/callerid/ui/overlay/g/e;)Lcom/hiya/client/callerid/ui/a0/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/d;-><init>(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/y/d;Lcom/hiya/client/callerid/ui/overlay/g/e;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/a0/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/e;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/a/b;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/e;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/callerid/ui/y/d;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/e;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/client/callerid/ui/overlay/g/e;

    invoke-static {v0, v1, v2}, Lcom/hiya/client/callerid/ui/a0/e;->c(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/y/d;Lcom/hiya/client/callerid/ui/overlay/g/e;)Lcom/hiya/client/callerid/ui/a0/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/e;->b()Lcom/hiya/client/callerid/ui/a0/d;

    move-result-object v0

    return-object v0
.end method
