.class public final Le/a/b/b/c/r$c;
.super Le/a/b/b/c/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Le/a/b0/n/h;


# direct methods
.method public constructor <init>(Le/a/b0/n/h;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/b0/n/h;->b:I

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Le/a/b/b/c/r;-><init>(ILs1/z/c/f;)V

    iput-object p1, p0, Le/a/b/b/c/r$c;->b:Le/a/b0/n/h;

    return-void
.end method
