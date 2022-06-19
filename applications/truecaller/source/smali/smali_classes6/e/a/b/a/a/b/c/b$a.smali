.class public final Le/a/b/a/a/b/c/b$a;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/b/c/b;-><init>(Le/a/m4/c/i/a/b;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/b/c/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/c/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b/a/a/b/c/b$a;->a:Le/a/b/a/a/b/c/b;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/16 p2, 0x100

    if-eq p1, p2, :cond_0

    const/16 p2, 0x200

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/b/a/a/b/c/b$a;->a:Le/a/b/a/a/b/c/b;

    .line 2
    iget-object v0, p1, Le/a/b/a/a/b/c/b;->m:Lq3/a/i0;

    new-instance v3, Le/a/b/a/a/b/c/c;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Le/a/b/a/a/b/c/c;-><init>(Le/a/b/a/a/b/c/b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void
.end method
