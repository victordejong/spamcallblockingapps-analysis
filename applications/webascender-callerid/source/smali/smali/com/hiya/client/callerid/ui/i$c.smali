.class public final Lcom/hiya/client/callerid/ui/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/i;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i$c;->a:Lcom/hiya/client/callerid/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "5.18.2"

    return-object v0
.end method

.method public synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->b(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i$c;->a:Lcom/hiya/client/callerid/ui/i;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/i;->k(Lcom/hiya/client/callerid/ui/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->c(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->a(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
