.class public final Le/a/q2/x$a;
.super Le/a/q2/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/q2/g;


# direct methods
.method public constructor <init>(Le/a/q2/g;)V
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/q2/x;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/q2/x$a;->a:Le/a/q2/g;

    return-void
.end method
