.class public final Le/a/a/c/e5$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5;->sk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e5$i;->a:Le/a/a/c/e5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/a/c/e5$i;->a:Le/a/a/c/e5;

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Le/a/a/c/e5;->y:I

    .line 4
    iget-object v0, v0, Le/a/a/c/e5;->T:Le/a/a/c/n5;

    .line 5
    invoke-interface {v0, v1}, Le/a/a/c/n5;->i(I)V

    .line 6
    iget-object v0, p0, Le/a/a/c/e5$i;->a:Le/a/a/c/e5;

    invoke-static {v0, p1}, Le/a/a/c/e5;->ak(Le/a/a/c/e5;Ljava/lang/Boolean;)V

    .line 7
    iget-object p1, p0, Le/a/a/c/e5$i;->a:Le/a/a/c/e5;

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k5;

    if-eqz v0, :cond_0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    iget-object p1, p1, Le/a/a/c/e5;->f:Ljava/lang/Long;

    .line 11
    invoke-interface {v0, v1, p1}, Le/a/a/c/k5;->sh(Ljava/lang/Boolean;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
