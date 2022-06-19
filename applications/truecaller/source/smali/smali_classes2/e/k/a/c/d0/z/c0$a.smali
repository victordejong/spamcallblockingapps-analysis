.class public final Le/k/a/c/d0/z/c0$a;
.super Le/k/a/c/o;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/o;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/c0$a;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/z/c0$a;->b:Le/k/a/c/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Le/k/a/c/n0/a0;

    .line 2
    iget-object v2, p2, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 3
    invoke-direct {v1, v2, p2}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/j;Le/k/a/c/g;)V

    .line 4
    invoke-virtual {v1, p1}, Le/k/a/c/n0/a0;->T1(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v1}, Le/k/a/c/n0/a0;->x2()Le/k/a/b/j;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 7
    iget-object v3, p0, Le/k/a/c/d0/z/c0$a;->b:Le/k/a/c/j;

    invoke-virtual {v3, v1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 8
    :cond_1
    iget-object v1, p0, Le/k/a/c/d0/z/c0$a;->a:Ljava/lang/Class;

    const-string v3, "not a valid representation"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, p1, v3, v4}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :catch_0
    move-exception v1

    .line 9
    iget-object v3, p0, Le/k/a/c/d0/z/c0$a;->a:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "not a valid representation: %s"

    invoke-virtual {p2, v3, p1, v1, v4}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
