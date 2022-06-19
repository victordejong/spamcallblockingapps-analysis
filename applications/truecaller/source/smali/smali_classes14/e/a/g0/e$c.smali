.class public final Le/a/g0/e$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/e;->m(Ljava/lang/String;Le/a/d4/e;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Le/a/g0/l/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Le/a/d4/e;


# direct methods
.method public constructor <init>(Le/a/g0/e;Ljava/lang/String;Le/a/d4/e;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/e$c;->b:Le/a/g0/e;

    iput-object p2, p0, Le/a/g0/e$c;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/g0/e$c;->d:Le/a/d4/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/g0/e$c;->b:Le/a/g0/e;

    .line 3
    iget-object v0, p1, Le/a/g0/e;->f:Le/a/g0/l/a;

    .line 4
    iget-object v1, p0, Le/a/g0/e$c;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/g0/e$c;->d:Le/a/d4/e;

    .line 5
    iget-object p1, p1, Le/a/g0/e;->e:Le/a/g0/n/a;

    const-string v3, "iid-02"

    invoke-interface {p1, v3}, Le/a/g0/n/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    check-cast v0, Le/a/g0/l/b;

    :try_start_1
    invoke-virtual {v0, v1, v2, p1}, Le/a/g0/l/b;->b(Ljava/lang/String;Le/a/d4/e;Ljava/lang/String;)Le/a/g0/l/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
