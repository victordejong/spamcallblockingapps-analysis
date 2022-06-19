.class final Lcom/hiya/client/callerid/dao/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/o;->l(Ljava/lang/String;Lg/g/b/c/d;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/o;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lg/g/b/c/d;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/o;Ljava/lang/String;Lg/g/b/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/o$c;->f:Lcom/hiya/client/callerid/dao/o;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/o$c;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/o$c;->h:Lg/g/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o$c;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/o;->d(Lcom/hiya/client/callerid/dao/o;)Lg/g/b/a/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/o$c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/client/callerid/dao/o$c;->h:Lg/g/b/c/d;

    invoke-virtual {v0, v1, v2}, Lg/g/b/a/k/a;->j(Ljava/lang/String;Lg/g/b/c/d;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/o$c;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
