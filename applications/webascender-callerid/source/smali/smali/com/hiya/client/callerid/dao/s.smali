.class public final Lcom/hiya/client/callerid/dao/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/dao/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/b/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
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
            "Lg/g/b/b/d/d;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/dao/s;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/dao/s;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/dao/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/b/d/d;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;)",
            "Lcom/hiya/client/callerid/dao/s;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/s;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/s;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/b/d/d;Lg/g/a/a/h/g;)Lcom/hiya/client/callerid/dao/r;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/r;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/r;-><init>(Lg/g/b/b/d/d;Lg/g/a/a/h/g;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/dao/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/s;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/b/d/d;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/s;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/h/g;

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/dao/s;->c(Lg/g/b/b/d/d;Lg/g/a/a/h/g;)Lcom/hiya/client/callerid/dao/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/s;->b()Lcom/hiya/client/callerid/dao/r;

    move-result-object v0

    return-object v0
.end method
