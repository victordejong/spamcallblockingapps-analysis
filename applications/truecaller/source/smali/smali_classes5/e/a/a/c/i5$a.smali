.class public final Le/a/a/c/i5$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i5;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$maybeShowInboxCleanerOTPsBanner$1$1$1"
    f = "ConversationPresenterImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ls1/z/c/a0;

.field public final synthetic f:Le/a/a/c/i5;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ls1/z/c/a0;Ls1/w/d;Le/a/a/c/i5;J)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i5$a;->e:Ls1/z/c/a0;

    iput-object p3, p0, Le/a/a/c/i5$a;->f:Le/a/a/c/i5;

    iput-wide p4, p0, Le/a/a/c/i5$a;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/c/i5$a;

    iget-object v1, p0, Le/a/a/c/i5$a;->e:Ls1/z/c/a0;

    iget-object v3, p0, Le/a/a/c/i5$a;->f:Le/a/a/c/i5;

    iget-wide v4, p0, Le/a/a/c/i5$a;->g:J

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/i5$a;-><init>(Ls1/z/c/a0;Ls1/w/d;Le/a/a/c/i5;J)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/i5$a;->e:Ls1/z/c/a0;

    iget-object v1, p0, Le/a/a/c/i5$a;->f:Le/a/a/c/i5;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget p2, v0, Ls1/z/c/a0;->a:I

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    iget-object v0, v1, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k5;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p2}, Le/a/a/c/k5;->d7(I)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/i5$a;->e:Ls1/z/c/a0;

    iget p1, p1, Ls1/z/c/a0;->a:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Le/a/a/c/i5$a;->f:Le/a/a/c/i5;

    iget-object v0, v0, Le/a/a/c/i5;->i:Le/a/a/c/e5;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k5;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Le/a/a/c/k5;->d7(I)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
