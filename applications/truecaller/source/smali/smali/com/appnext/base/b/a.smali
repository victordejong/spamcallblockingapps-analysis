.class public final Lcom/appnext/base/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cu:Landroid/content/Context;


# direct methods
.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/base/b/a;->cu:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/appnext/base/b/a;->cu:Landroid/content/Context;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context shouldn\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
