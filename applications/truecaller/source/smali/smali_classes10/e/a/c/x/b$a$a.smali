.class public final Le/a/c/x/b$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/x/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.search.MessageInfoLoaderImpl$loadMessageInfoIntoUiContext$1$1$1"
    f = "MessageInfoLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

.field public final synthetic f:Le/a/c/x/b$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/models/pdo/SmsBackupMessage;Ls1/w/d;Le/a/c/x/b$a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/x/b$a$a;->e:Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    iput-object p3, p0, Le/a/c/x/b$a$a;->f:Le/a/c/x/b$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/c/x/b$a$a;

    iget-object v0, p0, Le/a/c/x/b$a$a;->e:Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    iget-object v1, p0, Le/a/c/x/b$a$a;->f:Le/a/c/x/b$a;

    invoke-direct {p1, v0, p2, v1}, Le/a/c/x/b$a$a;-><init>(Lcom/truecaller/insights/models/pdo/SmsBackupMessage;Ls1/w/d;Le/a/c/x/b$a;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/c/x/b$a$a;->e:Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    iget-object v0, p0, Le/a/c/x/b$a$a;->f:Le/a/c/x/b$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Le/a/c/x/b$a;->h:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/x/b$a$a;->f:Le/a/c/x/b$a;

    iget-object p1, p1, Le/a/c/x/b$a;->h:Ls1/z/b/l;

    iget-object v0, p0, Le/a/c/x/b$a$a;->e:Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
