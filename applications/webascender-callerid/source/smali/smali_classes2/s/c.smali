.class public final Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ls/b;",
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
            "Lcom/hiya/client/callerid/ui/overlay/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/overlay/g/b;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;",
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls/c;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Ls/c;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Ls/c;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Ls/c;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Ls/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/overlay/g/b;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/b;",
            ">;",
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;)",
            "Ls/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls/c;

    invoke-direct {v0, p0, p1, p2, p3}, Ls/c;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/hiya/client/callerid/ui/overlay/g/b;Lg/g/b/a/b;Li/c/b0/c/a;)Ls/b;
    .locals 1

    .line 1
    new-instance v0, Ls/b;

    invoke-direct {v0, p0, p1, p2, p3}, Ls/b;-><init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/overlay/g/b;Lg/g/b/a/b;Li/c/b0/c/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Ls/b;
    .locals 4

    .line 1
    iget-object v0, p0, Ls/c;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ls/c;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/callerid/ui/overlay/g/b;

    iget-object v2, p0, Ls/c;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/b/a/b;

    iget-object v3, p0, Ls/c;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/c/b0/c/a;

    invoke-static {v0, v1, v2, v3}, Ls/c;->c(Landroid/content/Context;Lcom/hiya/client/callerid/ui/overlay/g/b;Lg/g/b/a/b;Li/c/b0/c/a;)Ls/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls/c;->b()Ls/b;

    move-result-object v0

    return-object v0
.end method
