.class public Lcom/getkeepsafe/relinker/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/b$a;,
        Lcom/getkeepsafe/relinker/b$b;,
        Lcom/getkeepsafe/relinker/b$d;,
        Lcom/getkeepsafe/relinker/b$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/relinker/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/b$c;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/b$c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/getkeepsafe/relinker/c;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/c;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/c;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/b$c;)V

    return-void
.end method
