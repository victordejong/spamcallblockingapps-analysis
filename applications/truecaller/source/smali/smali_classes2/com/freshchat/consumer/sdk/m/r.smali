.class public Lcom/freshchat/consumer/sdk/m/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freshchat/consumer/sdk/service/c<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/a/l$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic pl:Lcom/freshchat/consumer/sdk/m/n;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/n;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/r;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/service/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/service/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/r;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/m/n;->a(Lcom/freshchat/consumer/sdk/m/n;Lcom/freshchat/consumer/sdk/service/b;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/r;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/m/n;->c(Lcom/freshchat/consumer/sdk/m/n;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/m/s;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/s;-><init>(Lcom/freshchat/consumer/sdk/m/r;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
