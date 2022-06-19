.class public final Lcom/hiya/client/callerid/ui/y/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/y/d;",
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
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/y/e;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/y/e;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/ui/y/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/y/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/y/e;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/y/e;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lh/a;)Lcom/hiya/client/callerid/ui/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/y/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/y/d;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/y/d;-><init>(Landroid/content/Context;Lh/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/y/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/y/e;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/y/e;->b:Lj/a/a;

    invoke-static {v1}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/y/e;->c(Landroid/content/Context;Lh/a;)Lcom/hiya/client/callerid/ui/y/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/y/e;->b()Lcom/hiya/client/callerid/ui/y/d;

    move-result-object v0

    return-object v0
.end method
