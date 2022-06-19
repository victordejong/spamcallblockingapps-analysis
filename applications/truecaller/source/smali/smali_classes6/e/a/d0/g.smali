.class public final synthetic Le/a/d0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/d0/f0;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/g;->a:Le/a/d0/f0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/a/d0/g;->a:Le/a/d0/f0;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object v0, v0, Le/a/d0/f0;->H:Le/a/k0/n/b/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Le/a/k0/n/b/j;->a(Z)V

    return-void
.end method
