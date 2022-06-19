.class final Lg/g/b/d/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/d/a;->d()Li/c/b0/b/e0;
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
.field final synthetic f:Lg/g/b/d/d/a;


# direct methods
.method constructor <init>(Lg/g/b/d/d/a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/d/a$b;->f:Lg/g/b/d/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/d/d/a$b;->f:Lg/g/b/d/d/a;

    invoke-static {v0}, Lg/g/b/d/d/a;->b(Lg/g/b/d/d/a;)Lcom/hiya/client/repost/db/b;

    move-result-object v0

    new-instance v1, Lg/g/b/d/d/a$b$a;

    invoke-direct {v1, p0}, Lg/g/b/d/d/a$b$a;-><init>(Lg/g/b/d/d/a$b;)V

    invoke-virtual {v0, v1}, Lcom/hiya/client/repost/db/b;->b(Lkotlin/w/b/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/d/a$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
