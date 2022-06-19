.class public final Le/a/i/d0/g0/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/g0/d/b;


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
    sget-object v0, Le/a/i/d0/g0/d/c$b;->b:Le/a/i/d0/g0/d/c$b;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/d0/g0/d/c;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/i/d0/g0/d/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/i/d0/g0/d/c$a;-><init>(Le/a/i/d0/g0/d/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, p2}, Le/m/d/y/n;->m1(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
