.class public final Le/a/i/b0/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/b0/e/a;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/i/b0/e/b$a;->b:Le/a/i/b0/e/b$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/b0/e/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/e/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/b0/e/c;

    .line 2
    invoke-interface {v0, p1, p2}, Le/a/i/b0/e/c;->a(Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
