.class public final Lcom/hiya/client/callerid/dao/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/dao/y;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/g/h/c;",
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
            "Lg/g/a/a/g/h/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/dao/z;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/client/callerid/dao/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/g/h/c;",
            ">;)",
            "Lcom/hiya/client/callerid/dao/z;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/z;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/z;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/a/g/h/c;)Lcom/hiya/client/callerid/dao/y;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/y;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/y;-><init>(Lg/g/a/a/g/h/c;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/dao/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/z;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/g/h/c;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/z;->c(Lg/g/a/a/g/h/c;)Lcom/hiya/client/callerid/dao/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/z;->b()Lcom/hiya/client/callerid/dao/y;

    move-result-object v0

    return-object v0
.end method
