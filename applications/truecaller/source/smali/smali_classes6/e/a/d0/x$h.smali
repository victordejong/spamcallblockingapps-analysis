.class public Le/a/d0/x$h;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/d0/y;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/d0/v;

.field public final c:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;Le/a/d0/v;ZLe/a/d0/x$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/d0/x$h;->b:Le/a/d0/v;

    .line 3
    iput-boolean p3, p0, Le/a/d0/x$h;->c:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2

    .line 1
    check-cast p1, Le/a/d0/y;

    .line 2
    iget-object v0, p0, Le/a/d0/x$h;->b:Le/a/d0/v;

    iget-boolean v1, p0, Le/a/d0/x$h;->c:Z

    invoke-interface {p1, v0, v1}, Le/a/d0/y;->e(Le/a/d0/v;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".updateCallerId("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d0/x$h;->b:Le/a/d0/v;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/x$h;->c:Z

    const/4 v2, 0x2

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
