.class public final Le/a/l/e$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/e;->Tj(Le/a/l/p2/s1$b;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l/e$b;->b:I

    iput-object p2, p0, Le/a/l/e$b;->c:Ljava/lang/Object;

    iput-object p3, p0, Le/a/l/e$b;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/l/e$b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1
    iget-object v1, p0, Le/a/l/e$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/e;

    iget-object v4, p0, Le/a/l/e$b;->d:Ljava/lang/Object;

    check-cast v4, Le/a/l/n2/f;

    invoke-static {v1, v4, v3, v2, v3}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0

    .line 2
    :cond_0
    throw v3

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/l/e$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/e;

    iget-object v4, p0, Le/a/l/e$b;->d:Ljava/lang/Object;

    check-cast v4, Le/a/l/n2/f;

    invoke-static {v1, v4, v3, v2, v3}, Le/a/l/e0;->Zj(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
