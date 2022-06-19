.class public final Le/a/y/c/l$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/c/l;->c(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lx3/a0<",
        "Lcom/truecaller/flashsdk/models/MediaUrl;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$getMediaUrls$result$1"
    f = "FlashRequestHandler.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/c/l;


# direct methods
.method public constructor <init>(Le/a/y/c/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/l$b;->e:Le/a/y/c/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/c/l$b;

    iget-object v0, p0, Le/a/y/c/l$b;->e:Le/a/y/c/l;

    invoke-direct {p1, v0, p2}, Le/a/y/c/l$b;-><init>(Le/a/y/c/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/y/c/l$b;->e:Le/a/y/c/l;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/y/c/l;->e:Le/a/y/c/p;

    .line 6
    invoke-interface {p1}, Le/a/y/c/p;->b()Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/y/c/l$b;->e:Le/a/y/c/l;

    .line 2
    iget-object p1, p1, Le/a/y/c/l;->e:Le/a/y/c/p;

    .line 3
    invoke-interface {p1}, Le/a/y/c/p;->b()Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    return-object p1
.end method
