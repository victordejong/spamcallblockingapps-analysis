.class public final Le/a/r/q/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/q/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Le/a/q2/a;

.field public final d:Le/a/r/q/j;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/r/q/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardTrackerImpl"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/q/d;->c:Le/a/q2/a;

    iput-object p2, p0, Le/a/r/q/d;->d:Le/a/r/q/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "requestName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/q/d;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/q/d;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p2, p0, Le/a/r/q/d;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Le/a/r/q/d;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/r/q/d;->c:Le/a/q2/a;

    new-instance v1, Le/a/r/q/b;

    iget-object v2, p0, Le/a/r/q/d;->d:Le/a/r/q/j;

    .line 5
    iget-object v2, v2, Le/a/r/q/j;->e:Ljava/lang/String;

    .line 6
    invoke-direct {v1, p1, p2, v2}, Le/a/r/q/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
