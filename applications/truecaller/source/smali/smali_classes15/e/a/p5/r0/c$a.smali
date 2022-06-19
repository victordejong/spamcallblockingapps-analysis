.class public final Le/a/p5/r0/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/r0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p5/r0/c;

.field public final synthetic c:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Le/a/p5/r0/c;Lq3/a/w2/x;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/r0/c$a;->b:Le/a/p5/r0/c;

    iput-object p2, p0, Le/a/p5/r0/c$a;->c:Lq3/a/w2/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/p5/r0/c$a;->c:Lq3/a/w2/x;

    iget-object v1, p0, Le/a/p5/r0/c$a;->b:Le/a/p5/r0/c;

    iget-object v1, v1, Le/a/p5/r0/c;->g:Le/a/p5/r0/b;

    invoke-virtual {v1}, Le/a/p5/r0/b;->b()Le/a/p5/r0/d;

    move-result-object v1

    const-string v2, "$this$offerSafe"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
