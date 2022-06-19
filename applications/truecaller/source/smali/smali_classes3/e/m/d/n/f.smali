.class public Le/m/d/n/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/k/a/a$b;


# instance fields
.field public a:Le/m/d/n/j/h/b;

.field public b:Le/m/d/n/j/h/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const-string p1, "Analytics listener received message. ID: %d, Extras: %s"

    .line 3
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    const-string p1, "name"

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "params"

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "_o"

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clx"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Le/m/d/n/f;->a:Le/m/d/n/j/h/b;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Le/m/d/n/f;->b:Le/m/d/n/j/h/b;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v0, p1, p2}, Le/m/d/n/j/h/b;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method
