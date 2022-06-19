.class public final Lcom/hiya/client/callerid/ui/z/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/d0/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/z/j;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/z/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/k;->a:Lcom/hiya/client/callerid/ui/z/j;

    return-void
.end method

.method public static a(Lcom/hiya/client/callerid/ui/z/j;)Lcom/hiya/client/callerid/ui/z/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/k;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/z/k;-><init>(Lcom/hiya/client/callerid/ui/z/j;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/callerid/ui/z/j;)Lcom/hiya/client/callerid/ui/d0/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/j;->a()Lcom/hiya/client/callerid/ui/d0/e;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/client/callerid/ui/d0/e;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/ui/d0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/k;->a:Lcom/hiya/client/callerid/ui/z/j;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/z/k;->c(Lcom/hiya/client/callerid/ui/z/j;)Lcom/hiya/client/callerid/ui/d0/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/k;->b()Lcom/hiya/client/callerid/ui/d0/e;

    move-result-object v0

    return-object v0
.end method
