.class public final Le/a/l/e0$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/e0;->Xj(Le/a/l/p2/s1$b;)Ljava/util/List;
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
.field public final synthetic b:Le/a/l/n2/f;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Le/a/l/e0;


# direct methods
.method public constructor <init>(Le/a/l/n2/f;Ljava/util/List;Le/a/l/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/e0$i;->b:Le/a/l/n2/f;

    iput-object p2, p0, Le/a/l/e0$i;->c:Ljava/util/List;

    iput-object p3, p0, Le/a/l/e0$i;->d:Le/a/l/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/e0$i;->d:Le/a/l/e0;

    iget-object v1, p0, Le/a/l/e0$i;->b:Le/a/l/n2/f;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
