.class final Lcom/hiya/client/callerid/dao/o$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/o;->m(Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/d;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/o;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lg/g/b/c/d;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/o;Ljava/lang/String;Lg/g/b/c/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/o$f;->f:Lcom/hiya/client/callerid/dao/o;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/o$f;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/o$f;->h:Lg/g/b/c/d;

    iput-object p4, p0, Lcom/hiya/client/callerid/dao/o$f;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/a;)Lg/g/b/c/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o$f;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/o;->d(Lcom/hiya/client/callerid/dao/o;)Lg/g/b/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/o$f;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/client/callerid/dao/o$f;->h:Lg/g/b/c/d;

    invoke-virtual {v0, v1, v2}, Lg/g/b/a/k/a;->a(Ljava/lang/String;Lg/g/b/c/d;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/o$f;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/o;->e(Lcom/hiya/client/callerid/dao/o;)Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/o$f;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v2}, Lcom/hiya/client/callerid/dao/o;->e(Lcom/hiya/client/callerid/dao/o;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lg/g/b/a/f;->a:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/o$f;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/o;->e(Lcom/hiya/client/callerid/dao/o;)Landroid/content/Context;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/o$f;->i:Ljava/lang/String;

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 8
    new-instance v1, Lg/g/b/c/a;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fileUri.toString()"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/g/b/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/g/b/c/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lg/g/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/a;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/o$f;->a(Lg/g/b/c/a;)Lg/g/b/c/a;

    move-result-object p1

    return-object p1
.end method
