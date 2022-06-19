.class public final Lcom/hiya/client/callerid/ui/a0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/a0/m;",
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
            "Lcom/hiya/client/callerid/ui/a0/r;",
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
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/o;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/o;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/a0/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/r;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/a0/o;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/o;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/a0/o;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/r;)Lcom/hiya/client/callerid/ui/a0/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/m;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/a0/m;-><init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/r;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/a0/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/o;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/o;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/callerid/ui/a0/r;

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/a0/o;->c(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/r;)Lcom/hiya/client/callerid/ui/a0/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/o;->b()Lcom/hiya/client/callerid/ui/a0/m;

    move-result-object v0

    return-object v0
.end method
