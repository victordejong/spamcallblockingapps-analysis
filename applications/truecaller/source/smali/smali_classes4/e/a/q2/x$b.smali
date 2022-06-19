.class public final Le/a/q2/x$b;
.super Le/a/q2/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/q2/x;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/q2/x$b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/q2/x$b;->b:Landroid/os/Bundle;

    return-void
.end method
