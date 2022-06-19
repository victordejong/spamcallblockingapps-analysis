.class public final Le/a/i/f0/l/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/l/a;


# instance fields
.field public final a:Le/a/i/f0/l/u;

.field public final b:Le/a/i/f0/l/o;

.field public final c:Ls1/z/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/r<",
            "Ljava/lang/String;",
            "Le/a/i/f0/l/c;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/i/f0/l/u;Le/a/i/f0/l/o;Ls1/z/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/f0/l/u;",
            "Le/a/i/f0/l/o;",
            "Ls1/z/b/r<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Le/a/i/f0/l/c;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logAdsGenericEvent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/m;->a:Le/a/i/f0/l/u;

    iput-object p2, p0, Le/a/i/f0/l/m;->b:Le/a/i/f0/l/o;

    iput-object p3, p0, Le/a/i/f0/l/m;->c:Ls1/z/b/r;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/m;->c:Ls1/z/b/r;

    iget-object v1, p0, Le/a/i/f0/l/m;->a:Le/a/i/f0/l/u;

    .line 2
    iget-object v1, v1, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    .line 3
    invoke-interface {v1}, Le/a/i/f0/m/d;->b()Le/a/i/f0/l/c;

    move-result-object v1

    iget-object v2, p0, Le/a/i/f0/l/m;->a:Le/a/i/f0/l/u;

    .line 4
    iget-object v2, v2, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    .line 5
    invoke-interface {v2}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clicked"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Ls1/z/b/r;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Le/a/i/f0/l/m;->b:Le/a/i/f0/l/o;

    iget-object v1, p0, Le/a/i/f0/l/m;->a:Le/a/i/f0/l/u;

    .line 7
    iget-object v2, v1, Le/a/i/f0/l/u;->a:Le/a/i/f0/l/c;

    .line 8
    iget-object v2, v2, Le/a/i/f0/l/c;->a:Le/a/i/s;

    .line 9
    iget-object v3, v1, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    .line 10
    iget v1, v1, Le/a/i/f0/l/u;->b:I

    .line 11
    invoke-interface {v0, v2, v3, v1}, Le/a/i/f0/l/o;->a(Le/a/i/s;Le/a/i/f0/m/d;I)V

    return-void
.end method

.method public onAdImpression()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/m;->c:Ls1/z/b/r;

    iget-object v1, p0, Le/a/i/f0/l/m;->a:Le/a/i/f0/l/u;

    .line 2
    iget-object v1, v1, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    .line 3
    invoke-interface {v1}, Le/a/i/f0/m/d;->b()Le/a/i/f0/l/c;

    move-result-object v1

    iget-object v2, p0, Le/a/i/f0/l/m;->a:Le/a/i/f0/l/u;

    .line 4
    iget-object v2, v2, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    .line 5
    invoke-interface {v2}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "viewed"

    invoke-interface {v0, v4, v1, v2, v3}, Ls1/z/b/r;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
