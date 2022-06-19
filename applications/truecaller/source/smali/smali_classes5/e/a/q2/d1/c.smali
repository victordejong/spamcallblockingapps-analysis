.class public final Le/a/q2/d1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/q2/b1/a;

.field public final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Le/a/q2/b1/a;Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/d1/c;->b:Le/a/q2/b1/a;

    iput-object p2, p0, Le/a/q2/d1/c;->c:Landroid/content/ContentResolver;

    .line 2
    new-instance p1, Le/a/q2/d1/c$a;

    invoke-direct {p1, p0}, Le/a/q2/d1/c$a;-><init>(Le/a/q2/d1/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q2/d1/c;->a:Ls1/g;

    return-void
.end method
