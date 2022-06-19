.class public Le/a/a/k/a/d1$h;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/a/e1;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;ZLe/a/a/k/a/d1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/d1$h;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/a/k/a/d1$h;->c:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Le/a/a/k/a/d1$h;->d:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/a/e1;

    .line 2
    iget-object v0, p0, Le/a/a/k/a/d1$h;->b:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/k/a/d1$h;->c:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/a/k/a/d1$h;->d:Z

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/a/e1;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".updateNumberForImId("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/d1$h;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ","

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/d1$h;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/a/k/a/d1$h;->d:Z

    const/4 v2, 0x2

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->u(ZILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
