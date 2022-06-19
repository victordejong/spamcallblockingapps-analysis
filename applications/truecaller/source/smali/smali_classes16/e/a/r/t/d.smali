.class public final synthetic Le/a/r/t/d;
.super Ljava/lang/Object;
.source "Wizard.java"


# direct methods
.method public static a()Le/a/r/t/c$d;
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Le/a/r/t/c$d;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/t/c$d;

    return-object v0
.end method
