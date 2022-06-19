.class public final Lcom/hiya/client/callerid/ui/overlay/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/overlay/g/e;",
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


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/g/f;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/client/callerid/ui/overlay/g/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/overlay/g/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/overlay/g/f;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/overlay/g/f;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/overlay/g/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/overlay/g/e;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/overlay/g/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/overlay/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/g/f;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/overlay/g/f;->c(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/overlay/g/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/overlay/g/f;->b()Lcom/hiya/client/callerid/ui/overlay/g/e;

    move-result-object v0

    return-object v0
.end method
