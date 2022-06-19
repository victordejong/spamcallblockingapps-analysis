.class public final Le/a/c/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/m/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/c/b/e;

.field public final c:Le/a/c/i/b/a;

.field public final d:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/b/e;Le/a/c/i/b/a;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsEnvironmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseSeedStore"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/m/a;->b:Le/a/c/b/e;

    iput-object p2, p0, Le/a/c/m/a;->c:Le/a/c/i/b/a;

    iput-object p3, p0, Le/a/c/m/a;->d:Le/a/c/b/j;

    .line 2
    new-instance p1, Le/a/c/m/a$a;

    invoke-direct {p1, p0}, Le/a/c/m/a$a;-><init>(Le/a/c/m/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/m/a;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/c/m/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
