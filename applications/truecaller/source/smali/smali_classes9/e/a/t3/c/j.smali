.class public final Le/a/t3/c/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/t3/c/e$c;

.field public final synthetic c:Le/a/t3/c/k;

.field public final synthetic d:Le/a/t3/c/t;


# direct methods
.method public constructor <init>(Le/a/t3/c/e$c;Le/a/t3/c/k;Le/a/t3/c/t;)V
    .locals 0

    iput-object p1, p0, Le/a/t3/c/j;->b:Le/a/t3/c/e$c;

    iput-object p2, p0, Le/a/t3/c/j;->c:Le/a/t3/c/k;

    iput-object p3, p0, Le/a/t3/c/j;->d:Le/a/t3/c/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t3/c/j;->c:Le/a/t3/c/k;

    .line 2
    iget-object v0, v0, Le/a/t3/c/k;->b:Lo3/a;

    .line 3
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t3/c/g$a;

    iget-object v1, p0, Le/a/t3/c/j;->b:Le/a/t3/c/e$c;

    .line 4
    iget-object v2, v1, Le/a/t3/c/e$c;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 5
    iget-object v1, v1, Le/a/t3/c/e$c;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v2, v1}, Le/a/t3/c/g$a;->zi(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V

    .line 7
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
