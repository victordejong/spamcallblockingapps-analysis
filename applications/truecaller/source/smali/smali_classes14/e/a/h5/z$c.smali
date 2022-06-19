.class public final Le/a/h5/z$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h5/z;->i(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/h5/l;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/n;

.field public final synthetic c:Le/a/h5/z;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/h5/z;)V
    .locals 0

    iput-object p1, p0, Le/a/h5/z$c;->b:Lq3/a/n;

    iput-object p2, p0, Le/a/h5/z$c;->c:Le/a/h5/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/h5/l;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/h5/z$c;->c:Le/a/h5/z;

    .line 4
    iget-object v0, v0, Le/a/h5/z;->f:Le/a/p5/a0;

    const-string v1, "android.permission.READ_CONTACTS"

    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    .line 6
    iget-object v1, p0, Le/a/h5/z$c;->c:Le/a/h5/z;

    .line 7
    iget-object v1, v1, Le/a/h5/z;->b:Ls1/z/b/l;

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/h5/z$c;->b:Lq3/a/n;

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
