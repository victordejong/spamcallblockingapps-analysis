.class public final Le/a/e/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/content/Context;

.field public final e:Le/a/b0/q/z;

.field public final f:Le/a/l/p2/v0;

.field public final g:Le/a/l/c/l;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/o5/f0;Le/a/b0/q/z;Le/a/l/a/y;Le/a/l/p2/v0;Le/a/l/c/l;ZLe/a/z4/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumUserTabUtils"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/q1;->d:Landroid/content/Context;

    iput-object p3, p0, Le/a/e/q1;->e:Le/a/b0/q/z;

    iput-object p5, p0, Le/a/e/q1;->f:Le/a/l/p2/v0;

    iput-object p6, p0, Le/a/e/q1;->g:Le/a/l/c/l;

    iput-boolean p7, p0, Le/a/e/q1;->h:Z

    const/4 p1, 0x0

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "default_tab_on_launch"

    .line 2
    invoke-interface {p8, p3, p1}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "calls"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "messages"

    .line 3
    :goto_1
    iput-object p3, p0, Le/a/e/q1;->a:Ljava/lang/String;

    .line 4
    check-cast p2, Le/a/o5/g0;

    invoke-virtual {p2}, Le/a/o5/g0;->a()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p4}, Le/a/l/a/y;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, p3

    :cond_2
    iput-boolean p1, p0, Le/a/e/q1;->b:Z

    .line 5
    invoke-interface {p5}, Le/a/l/p2/v0;->H()Z

    move-result p1

    xor-int/2addr p1, p3

    iput-boolean p1, p0, Le/a/e/q1;->c:Z

    return-void
.end method
