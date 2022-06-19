.class public final Lcom/hiya/client/callerid/ui/z/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/z/l;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/z/l;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/z/l;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/o;->a:Lcom/hiya/client/callerid/ui/z/l;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/z/o;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/client/callerid/ui/z/l;Lj/a/a;)Lcom/hiya/client/callerid/ui/z/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/z/l;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/z/o;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/o;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/z/o;-><init>(Lcom/hiya/client/callerid/ui/z/l;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/callerid/ui/z/l;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/z/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/o;->a:Lcom/hiya/client/callerid/ui/z/l;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/o;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/z/o;->c(Lcom/hiya/client/callerid/ui/z/l;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
