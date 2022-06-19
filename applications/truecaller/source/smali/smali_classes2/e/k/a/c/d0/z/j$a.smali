.class public Le/k/a/c/d0/z/j$a;
.super Le/k/a/c/d0/z/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/j$b<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/j$b;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/c/d0/z/j$a;->f:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/j$a;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/z/j$b;-><init>(Le/k/a/c/d0/z/j$b;Ljava/text/DateFormat;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Le/k/a/c/d0/z/j$a;->f:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Le/k/a/c/d0/z/j$a;->f:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/j$b;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Le/k/a/c/n0/g;->l(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/d0/z/j$a;->f:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/j$b;->Q(Le/k/a/b/j;Le/k/a/c/g;)Ljava/util/Date;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/z/j$a;->f:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p2}, Le/k/a/c/g;->B()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 6
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7
    invoke-virtual {p2}, Le/k/a/c/g;->B()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 9
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {p2, v2, p1, v1}, Le/k/a/c/g;->D(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    throw v0
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public m0(Ljava/text/DateFormat;Ljava/lang/String;)Le/k/a/c/d0/z/j$b;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/j$a;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/d0/z/j$a;-><init>(Le/k/a/c/d0/z/j$a;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method
