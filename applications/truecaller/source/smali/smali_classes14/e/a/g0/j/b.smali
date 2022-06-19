.class public final Le/a/g0/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 3

    .line 1
    new-instance v0, Le/a/q2/x$b;

    const/4 v1, 0x0

    const-string v2, "AccountUnsuspendedManually"

    .line 2
    invoke-direct {v0, v2, v1}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
