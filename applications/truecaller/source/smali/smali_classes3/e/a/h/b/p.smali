.class public final Le/a/h/b/p;
.super Le/a/h/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/h/b/g;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/g;->b:Le/a/h/b/r$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/h/b/r$a;->onDataChanged()V

    :cond_0
    return-void
.end method
