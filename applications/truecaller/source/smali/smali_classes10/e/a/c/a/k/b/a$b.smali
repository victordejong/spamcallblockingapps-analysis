.class public final Le/a/c/a/k/b/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/k/b/a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/c/a/k/b/a;

.field public final synthetic c:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/a;Lq3/a/w2/x;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/a$b;->b:Le/a/c/a/k/b/a;

    iput-object p2, p0, Le/a/c/a/k/b/a$b;->c:Lq3/a/w2/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/a/k/b/a$b;->c:Lq3/a/w2/x;

    iget-object v1, p0, Le/a/c/a/k/b/a$b;->b:Le/a/c/a/k/b/a;

    iget-object v1, v1, Le/a/c/a/k/b/a;->g:Le/a/c/a/k/b/b;

    .line 2
    new-instance v2, Le/a/c/a/k/c/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v3, v4}, Le/a/c/a/k/b/b;->d(ZLe/a/c/a/k/d/a;)Lcom/truecaller/insights/ui/models/AdapterItem$i;

    move-result-object v1

    .line 4
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 5
    invoke-direct {v2, v1, v3}, Le/a/c/a/k/c/d;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Ljava/util/List;)V

    .line 6
    invoke-interface {v0, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
