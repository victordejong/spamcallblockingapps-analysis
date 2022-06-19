.class public final Lcom/hiya/client/callerid/dao/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/dao/o;",
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
            "Lg/g/a/a/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/dao/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/k/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/dao/t;",
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
            "Lg/g/a/a/g/b;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/dao/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/k/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/dao/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/dao/q;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/dao/q;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/client/callerid/dao/q;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/client/callerid/dao/q;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/client/callerid/dao/q;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/dao/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/g/b;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/dao/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/k/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/dao/t;",
            ">;)",
            "Lcom/hiya/client/callerid/dao/q;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/client/callerid/dao/q;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/client/callerid/dao/q;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static c(Landroid/content/Context;Lg/g/a/a/g/b;Lcom/hiya/client/callerid/dao/a;Lg/g/b/a/k/a;Lcom/hiya/client/callerid/dao/t;)Lcom/hiya/client/callerid/dao/o;
    .locals 7

    .line 1
    new-instance v6, Lcom/hiya/client/callerid/dao/o;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/client/callerid/dao/o;-><init>(Landroid/content/Context;Lg/g/a/a/g/b;Lcom/hiya/client/callerid/dao/a;Lg/g/b/a/k/a;Lcom/hiya/client/callerid/dao/t;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/dao/o;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/q;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/q;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/g/b;

    iget-object v2, p0, Lcom/hiya/client/callerid/dao/q;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/client/callerid/dao/a;

    iget-object v3, p0, Lcom/hiya/client/callerid/dao/q;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/b/a/k/a;

    iget-object v4, p0, Lcom/hiya/client/callerid/dao/q;->e:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/client/callerid/dao/t;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/client/callerid/dao/q;->c(Landroid/content/Context;Lg/g/a/a/g/b;Lcom/hiya/client/callerid/dao/a;Lg/g/b/a/k/a;Lcom/hiya/client/callerid/dao/t;)Lcom/hiya/client/callerid/dao/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/q;->b()Lcom/hiya/client/callerid/dao/o;

    move-result-object v0

    return-object v0
.end method
