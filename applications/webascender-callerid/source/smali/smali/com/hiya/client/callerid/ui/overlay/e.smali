.class public final Lcom/hiya/client/callerid/ui/overlay/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/overlay/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/r;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ls/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;",
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/r;",
            ">;",
            "Lj/a/a<",
            "Ls/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/e;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/e;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/client/callerid/ui/overlay/e;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/client/callerid/ui/overlay/e;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/client/callerid/ui/overlay/e;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/overlay/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;",
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/r;",
            ">;",
            "Lj/a/a<",
            "Ls/b;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/overlay/e;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/client/callerid/ui/overlay/e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/client/callerid/ui/overlay/e;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static c(Landroid/content/Context;Lg/g/b/a/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/a0/r;Ls/b;)Lcom/hiya/client/callerid/ui/overlay/d;
    .locals 7

    .line 1
    new-instance v6, Lcom/hiya/client/callerid/ui/overlay/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/client/callerid/ui/overlay/d;-><init>(Landroid/content/Context;Lg/g/b/a/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/a0/r;Ls/b;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/overlay/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/e;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/e;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/b/a/b;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/overlay/e;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/c/a;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/overlay/e;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/client/callerid/ui/a0/r;

    iget-object v4, p0, Lcom/hiya/client/callerid/ui/overlay/e;->e:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/client/callerid/ui/overlay/e;->c(Landroid/content/Context;Lg/g/b/a/b;Li/c/b0/c/a;Lcom/hiya/client/callerid/ui/a0/r;Ls/b;)Lcom/hiya/client/callerid/ui/overlay/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/overlay/e;->b()Lcom/hiya/client/callerid/ui/overlay/d;

    move-result-object v0

    return-object v0
.end method
