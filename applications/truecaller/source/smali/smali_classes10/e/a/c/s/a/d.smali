.class public final Le/a/c/s/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/s/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/s/a/d$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "environmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/s/a/d;->b:Le/a/c/b/e;

    .line 2
    new-instance p1, Le/a/c/s/a/d$b;

    invoke-direct {p1, p0}, Le/a/c/s/a/d$b;-><init>(Le/a/c/s/a/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/s/a/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/s/a/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/s/a/d$a;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Le/a/c/s/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
