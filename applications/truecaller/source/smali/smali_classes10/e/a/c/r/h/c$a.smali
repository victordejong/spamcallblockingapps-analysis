.class public final Le/a/c/r/h/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/r/h/c;-><init>(Le/a/c/c0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/insights/models/pdo/PdoBinderType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/r/h/c;


# direct methods
.method public constructor <init>(Le/a/c/r/h/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/r/h/c$a;->b:Le/a/c/r/h/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/c/r/h/c$a;->b:Le/a/c/r/h/c;

    .line 2
    iget-object v0, v0, Le/a/c/r/h/c;->c:Le/a/c/c0/a;

    .line 3
    check-cast v0, Le/a/c/c0/b;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string v3, "insightsBinder.json"

    invoke-interface {v2, v3}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v3, v0, Le/a/c/c0/b;->a:Le/m/e/k;

    const-class v4, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    invoke-virtual {v3, v2, v4}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception v2

    :goto_0
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v1}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw v2

    :catch_0
    move-object v2, v1

    :catch_1
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    :goto_1
    if-eqz v1, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    sget-object v1, Lcom/truecaller/insights/models/pdo/PdoBinderType$a;->a:Lcom/truecaller/insights/models/pdo/PdoBinderType$a;

    :goto_2
    return-object v1
.end method
