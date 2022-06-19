.class public final Le/a/i4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/i;


# instance fields
.field public a:Le/a/b0/n/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 3

    const-string v0, "notification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object p1, p1, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v0, "cr"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 4
    iget-object v0, p0, Le/a/i4/j;->b:Le/a/b0/o/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "profileIsCredUser"

    invoke-interface {v0, v2, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p0, Le/a/i4/j;->a:Le/a/b0/n/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b0/n/e;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "profileRefreshNotifier"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "coreSettings"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
