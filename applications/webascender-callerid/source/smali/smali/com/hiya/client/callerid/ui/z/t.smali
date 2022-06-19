.class public final Lcom/hiya/client/callerid/ui/z/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Li/c/b0/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/z/l;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/z/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/t;->a:Lcom/hiya/client/callerid/ui/z/l;

    return-void
.end method

.method public static a(Lcom/hiya/client/callerid/ui/z/l;)Lcom/hiya/client/callerid/ui/z/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/t;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/z/t;-><init>(Lcom/hiya/client/callerid/ui/z/l;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/callerid/ui/z/l;)Li/c/b0/c/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/l;->h()Li/c/b0/c/a;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Li/c/b0/c/a;

    return-object p0
.end method


# virtual methods
.method public b()Li/c/b0/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/t;->a:Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/z/t;->c(Lcom/hiya/client/callerid/ui/z/l;)Li/c/b0/c/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/t;->b()Li/c/b0/c/a;

    move-result-object v0

    return-object v0
.end method
