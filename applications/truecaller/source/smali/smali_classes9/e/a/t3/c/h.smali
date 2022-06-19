.class public final Le/a/t3/c/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/t3/c/e$a;

.field public final synthetic c:Le/a/t3/c/k;

.field public final synthetic d:Le/a/t3/c/b;


# direct methods
.method public constructor <init>(Le/a/t3/c/e$a;Le/a/t3/c/k;Le/a/t3/c/b;)V
    .locals 0

    iput-object p1, p0, Le/a/t3/c/h;->b:Le/a/t3/c/e$a;

    iput-object p2, p0, Le/a/t3/c/h;->c:Le/a/t3/c/k;

    iput-object p3, p0, Le/a/t3/c/h;->d:Le/a/t3/c/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/t3/c/h;->b:Le/a/t3/c/e$a;

    .line 3
    iput-boolean p1, v0, Le/a/t3/c/e$a;->c:Z

    .line 4
    iget-object v0, p0, Le/a/t3/c/h;->c:Le/a/t3/c/k;

    .line 5
    iget-object v0, v0, Le/a/t3/c/k;->b:Lo3/a;

    .line 6
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t3/c/g$a;

    iget-object v1, p0, Le/a/t3/c/h;->b:Le/a/t3/c/e$a;

    .line 7
    iget-object v1, v1, Le/a/t3/c/e$a;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 8
    invoke-interface {v0, v1, p1}, Le/a/t3/c/g$a;->Gd(Lcom/truecaller/featuretoggles/FeatureKey;Z)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
