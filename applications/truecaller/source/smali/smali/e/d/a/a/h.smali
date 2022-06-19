.class public final Le/d/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/a/a/t;


# instance fields
.field public final synthetic a:Lq3/a/w;


# direct methods
.method public constructor <init>(Lq3/a/w;)V
    .locals 0

    iput-object p1, p0, Le/d/a/a/h;->a:Lq3/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Le/d/a/a/k;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/a/a/k;",
            "Ljava/util/List<",
            "Le/d/a/a/r;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Le/d/a/a/u;

    const-string v1, "billingResult"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Le/d/a/a/u;-><init>(Le/d/a/a/k;Ljava/util/List;)V

    iget-object p1, p0, Le/d/a/a/h;->a:Lq3/a/w;

    .line 2
    invoke-interface {p1, v0}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    return-void
.end method
