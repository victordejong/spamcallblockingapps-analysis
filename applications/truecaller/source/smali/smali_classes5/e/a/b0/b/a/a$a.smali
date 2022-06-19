.class public final Le/a/b0/b/a/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lu3/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/b0/b/a/a$a;

.field public static final d:Le/a/b0/b/a/a$a;

.field public static final e:Le/a/b0/b/a/a$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b0/b/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b0/b/a/a$a;-><init>(I)V

    sput-object v0, Le/a/b0/b/a/a$a;->c:Le/a/b0/b/a/a$a;

    new-instance v0, Le/a/b0/b/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/b0/b/a/a$a;-><init>(I)V

    sput-object v0, Le/a/b0/b/a/a$a;->d:Le/a/b0/b/a/a$a;

    new-instance v0, Le/a/b0/b/a/a$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le/a/b0/b/a/a$a;-><init>(I)V

    sput-object v0, Le/a/b0/b/a/a$a;->e:Le/a/b0/b/a/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/b0/b/a/a$a;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Le/a/b0/b/a/a$a;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1
    sget-object v0, Le/a/b0/b/g/b;->g:Le/a/b0/b/g/b;

    invoke-static {v0}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    throw v2

    .line 3
    :cond_1
    new-instance v0, Lu3/e0$a;

    invoke-direct {v0}, Lu3/e0$a;-><init>()V

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4, v1}, Lu3/e0$a;->b(JLjava/util/concurrent/TimeUnit;)Lu3/e0$a;

    .line 5
    sget-object v1, Le/a/b0/b/a/a;->f:Le/a/b0/b/a/a;

    .line 6
    sget-object v1, Le/a/b0/b/a/a;->d:Le/a/f4/c/a;

    if-eqz v1, :cond_2

    const-string v2, "eventListenerFactory"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v1, v0, Lu3/e0$a;->e:Lu3/u$b;

    .line 9
    new-instance v1, Lu3/e0;

    invoke-direct {v1, v0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    return-object v1

    :cond_2
    const-string v0, "httpAnalyticsLoggerFactory"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    new-instance v0, Le/a/b0/b/g/b;

    invoke-direct {v0}, Le/a/b0/b/g/b;-><init>()V

    .line 12
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-static {v0, v3, v2, v1, v2}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 13
    invoke-static {v0}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    return-object v0
.end method
