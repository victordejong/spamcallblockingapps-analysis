.class public final Le/a/a/a1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Le/a/a/c1/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/a1/e;


# direct methods
.method public constructor <init>(Le/a/a/a1/e;)V
    .locals 0

    iput-object p1, p0, Le/a/a/a1/d;->a:Le/a/a/a1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/a/c1/c;

    .line 2
    iget-object p1, p0, Le/a/a/a1/d;->a:Le/a/a/a1/e;

    .line 3
    iget-object v0, p1, Le/a/a/a1/e;->l:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0}, Le/a/a/g/m;->i()V

    .line 4
    iget-object v0, p1, Le/a/a/a1/e;->l:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    iget-wide v1, p1, Le/a/a/a1/e;->e:J

    iget-object p1, p1, Le/a/a/a1/e;->b:[J

    const-string v3, "notification"

    invoke-interface {v0, v1, v2, p1, v3}, Le/a/a/g/m;->s(J[JLjava/lang/String;)V

    return-void
.end method
