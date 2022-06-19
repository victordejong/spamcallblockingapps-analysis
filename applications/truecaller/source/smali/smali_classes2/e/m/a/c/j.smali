.class public final synthetic Le/m/a/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/t$b;


# instance fields
.field public final synthetic a:Le/m/a/c/d0$b;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/d0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/j;->a:Le/m/a/c/d0$b;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/q0$b;)V
    .locals 2

    iget-object v0, p0, Le/m/a/c/j;->a:Le/m/a/c/d0$b;

    .line 1
    iget-object v0, v0, Le/m/a/c/d0$b;->a:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Le/m/a/c/q0$b;->Xl(Z)V

    return-void
.end method
