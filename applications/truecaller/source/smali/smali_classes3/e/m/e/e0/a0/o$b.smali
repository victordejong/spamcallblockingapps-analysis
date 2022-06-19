.class public Le/m/e/e0/a0/o$b;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    sget-object v1, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Le/m/e/g0/a;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1, p2}, Le/m/e/g0/c;->p0(Ljava/lang/Number;)Le/m/e/g0/c;

    return-void
.end method
