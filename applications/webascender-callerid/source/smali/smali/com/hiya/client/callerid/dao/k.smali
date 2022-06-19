.class public final Lcom/hiya/client/callerid/dao/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/dao/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/g/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/e;",
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
            "Lg/g/a/a/g/h/b;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/dao/k;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/dao/k;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/dao/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/g/h/b;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/e;",
            ">;)",
            "Lcom/hiya/client/callerid/dao/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/k;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/k;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/a/g/h/b;Lcom/hiya/client/callerid/prefs/e;)Lcom/hiya/client/callerid/dao/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/j;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/j;-><init>(Lg/g/a/a/g/h/b;Lcom/hiya/client/callerid/prefs/e;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/dao/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/k;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/g/h/b;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/k;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/callerid/prefs/e;

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/dao/k;->c(Lg/g/a/a/g/h/b;Lcom/hiya/client/callerid/prefs/e;)Lcom/hiya/client/callerid/dao/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/k;->b()Lcom/hiya/client/callerid/dao/j;

    move-result-object v0

    return-object v0
.end method
