.class public Le/k/a/c/l0/t/h;
.super Le/k/a/c/l0/t/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/l<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final f:Le/k/a/c/l0/t/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/t/h;

    invoke-direct {v0}, Le/k/a/c/l0/t/h;-><init>()V

    sput-object v0, Le/k/a/c/l0/t/h;->f:Le/k/a/c/l0/t/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Le/k/a/c/l0/t/l;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 1

    .line 2
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Le/k/a/c/l0/t/l;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Calendar;

    .line 2
    invoke-virtual {p0, p3}, Le/k/a/c/l0/t/l;->p(Le/k/a/c/a0;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 4
    :goto_0
    invoke-virtual {p2, v0, v1}, Le/k/a/b/g;->K0(J)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/l;->q(Ljava/util/Date;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_1
    return-void
.end method

.method public r(Ljava/lang/Boolean;Ljava/text/DateFormat;)Le/k/a/c/l0/t/l;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/t/h;

    invoke-direct {v0, p1, p2}, Le/k/a/c/l0/t/h;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-object v0
.end method
