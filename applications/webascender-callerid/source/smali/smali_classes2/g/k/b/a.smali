.class public Lg/k/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/k/b/a$a;,
        Lg/k/b/a$b;,
        Lg/k/b/a$c;,
        Lg/k/b/a$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/k/b/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lg/k/b/a$c;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTC"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lg/k/b/a;->a:Ljava/util/TimeZone;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/k/b/a;->b:Ljava/util/List;

    :try_start_0
    const-string v0, "android.os.Build"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lg/k/b/a$a;

    invoke-direct {v0}, Lg/k/b/a$a;-><init>()V

    sput-object v0, Lg/k/b/a;->c:Lg/k/b/a$c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    sget-object v0, Lg/k/b/a;->c:Lg/k/b/a$c;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lg/k/b/a$b;

    invoke-direct {v0}, Lg/k/b/a$b;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    sget-object v1, Lg/k/b/a;->c:Lg/k/b/a$c;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lg/k/b/a$b;

    invoke-direct {v1}, Lg/k/b/a$b;-><init>()V

    sput-object v1, Lg/k/b/a;->c:Lg/k/b/a$c;

    :cond_1
    throw v0

    :catch_0
    nop

    .line 10
    sget-object v0, Lg/k/b/a;->c:Lg/k/b/a$c;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lg/k/b/a$b;

    invoke-direct {v0}, Lg/k/b/a$b;-><init>()V

    :goto_0
    sput-object v0, Lg/k/b/a;->c:Lg/k/b/a$c;

    :cond_2
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lg/k/b/a;->d:Z

    return-void
.end method

.method static synthetic a()Ljava/util/TimeZone;
    .locals 1

    .line 1
    sget-object v0, Lg/k/b/a;->a:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lg/k/b/a$d;->DEBUG:Lg/k/b/a$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/zendesk/service/a;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "Network Error: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/zendesk/service/a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Status Code: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/zendesk/service/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Lcom/zendesk/service/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", Reason: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/zendesk/service/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v0, Lg/k/b/a$d;->ERROR:Lg/k/b/a$d;

    invoke-static {p1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown error"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1, v1, v2}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lg/k/b/a$d;->ERROR:Lg/k/b/a$d;

    invoke-static {v0, p0, p1, p2, p3}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lg/k/b/a$d;->ERROR:Lg/k/b/a$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lg/k/b/a$d;->INFO:Lg/k/b/a$d;

    invoke-static {v0, p0, p1, p2, p3}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lg/k/b/a$d;->INFO:Lg/k/b/a$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lg/k/b/a;->d:Z

    return v0
.end method

.method private static varargs i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    array-length v0, p4

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    sget-boolean p4, Lg/k/b/a;->d:Z

    if-eqz p4, :cond_1

    .line 4
    sget-object p4, Lg/k/b/a;->c:Lg/k/b/a$c;

    invoke-interface {p4, p0, p1, p2, p3}, Lg/k/b/a$c;->a(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    sget-object p4, Lg/k/b/a;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/k/b/a$c;

    .line 6
    invoke-interface {v0, p0, p1, p2, p3}, Lg/k/b/a$c;->a(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lg/k/b/a$d;->WARN:Lg/k/b/a$d;

    invoke-static {v0, p0, p1, p2, p3}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lg/k/b/a$d;->WARN:Lg/k/b/a$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lg/k/b/a;->i(Lg/k/b/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
