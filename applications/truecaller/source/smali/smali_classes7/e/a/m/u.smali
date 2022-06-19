.class public final Le/a/m/u;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/m/v;


# direct methods
.method public constructor <init>(Le/a/m/v;)V
    .locals 0

    iput-object p1, p0, Le/a/m/u;->a:Le/a/m/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/m/u;->a:Le/a/m/v;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/m/s;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/m/s;->b0()V

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/m/u;->a:Le/a/m/v;

    .line 7
    iget-object p1, p1, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Le/a/m/r;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Le/a/m/r;->close()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Le/a/m/u;->a:Le/a/m/v;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m/s;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Le/a/m/s;->F5()V

    :cond_2
    :goto_0
    return-void
.end method
