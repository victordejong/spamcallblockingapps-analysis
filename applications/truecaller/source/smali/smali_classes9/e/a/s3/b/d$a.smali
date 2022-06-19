.class public final Le/a/s3/b/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s3/b/d;-><init>(Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/exception/filters/RemoteFilterConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo3/a;


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 0

    iput-object p1, p0, Le/a/s3/b/d$a;->b:Lo3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :try_start_0
    iget-object v1, p0, Le/a/s3/b/d$a;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/s4/a;

    const-string v2, "remoteExceptionFilter_21367"

    invoke-interface {v1, v2}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    new-instance v2, Le/m/e/k;

    invoke-direct {v2}, Le/m/e/k;-><init>()V

    new-instance v3, Le/a/s3/b/c;

    invoke-direct {v3}, Le/a/s3/b/c;-><init>()V

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v0
.end method
