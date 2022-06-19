.class public final Le/a/z3/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public final c:Landroid/net/Uri;

.field public final d:Le/a/z3/i/g;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Le/a/z3/i/g;)V
    .locals 1

    const-string v0, "size"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/z3/i/a;->c:Landroid/net/Uri;

    iput-object p2, p0, Le/a/z3/i/a;->d:Le/a/z3/i/g;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/a/z3/i/a;->b:I

    return-void
.end method
