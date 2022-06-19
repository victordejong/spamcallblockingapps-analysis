.class public final Le/a/a/o/a/k$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/a/k;->w3(Ljava/lang/String;)Ljava/lang/String;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$getMediaFileSize$1"
    f = "CallRecStorageManagerPresenter.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/o/a/k;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/o/a/k;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/a/k$b;->f:Le/a/a/o/a/k;

    iput-object p2, p0, Le/a/a/o/a/k$b;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/a/o/a/k$b;

    iget-object v0, p0, Le/a/a/o/a/k$b;->f:Le/a/a/o/a/k;

    iget-object v1, p0, Le/a/a/o/a/k$b;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/o/a/k$b;-><init>(Le/a/a/o/a/k;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/o/a/k$b;

    iget-object v0, p0, Le/a/a/o/a/k$b;->f:Le/a/a/o/a/k;

    iget-object v1, p0, Le/a/a/o/a/k$b;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/o/a/k$b;-><init>(Le/a/a/o/a/k;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/o/a/k$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/o/a/k$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/o/a/k$b;->f:Le/a/a/o/a/k;

    .line 5
    iget-object p1, p1, Le/a/a/o/a/k;->g:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/a/o/a/k$b$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/a/o/a/k$b$a;-><init>(Le/a/a/o/a/k$b;Ls1/w/d;)V

    iput v2, p0, Le/a/a/o/a/k$b;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    .line 7
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    :goto_1
    const-string v0, "withContext(ioContext) {\u2026cSize(path).get() } ?: 0L"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 9
    iget-object p1, p0, Le/a/a/o/a/k$b;->f:Le/a/a/o/a/k;

    .line 10
    iget-object p1, p1, Le/a/a/o/a/k;->e:Ljava/util/Map;

    .line 11
    iget-object v2, p0, Le/a/a/o/a/k$b;->g:Ljava/lang/String;

    .line 12
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 13
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Le/a/a/o/a/k$b;->f:Le/a/a/o/a/k;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p1}, Le/a/a/o/a/i;->Lc()V

    .line 17
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
