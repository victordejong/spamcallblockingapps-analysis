.class public final Lcom/hiya/client/callerid/ui/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/c0/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/x/a;",
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
            "Lcom/hiya/client/callerid/ui/a0/m;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/x/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/b;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/b;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/c0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/a0/m;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/ui/x/a;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/c0/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/c0/b;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/c0/b;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/x/a;)Lcom/hiya/client/callerid/ui/c0/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/c0/a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/c0/a;-><init>(Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/x/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/c0/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/b;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/a0/m;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/b;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/callerid/ui/x/a;

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/c0/b;->c(Lcom/hiya/client/callerid/ui/a0/m;Lcom/hiya/client/callerid/ui/x/a;)Lcom/hiya/client/callerid/ui/c0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/c0/b;->b()Lcom/hiya/client/callerid/ui/c0/a;

    move-result-object v0

    return-object v0
.end method
