.class public final Le/a/r3/h$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r3/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r3/h$a;

.field public final synthetic b:Lq3/a/w2/x;

.field public final synthetic c:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Le/a/r3/h$a;Lq3/a/w2/x;Ls1/z/c/a0;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/h$a$d;->a:Le/a/r3/h$a;

    iput-object p2, p0, Le/a/r3/h$a$d;->b:Lq3/a/w2/x;

    iput-object p3, p0, Le/a/r3/h$a$d;->c:Ls1/z/c/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/m/a/h/a/g/d;

    const-string v0, "state"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->g()I

    move-result v0

    iget-object v1, p0, Le/a/r3/h$a$d;->c:Ls1/z/c/a0;

    iget v1, v1, Ls1/z/c/a0;->a:I

    if-ne v0, v1, :cond_7

    .line 4
    iget-object v0, p0, Le/a/r3/h$a$d;->a:Le/a/r3/h$a;

    iget-object v0, v0, Le/a/r3/h$a;->h:Le/a/r3/h;

    new-instance v1, Le/a/r3/i;

    invoke-direct {v1, p0}, Le/a/r3/i;-><init>(Le/a/r3/h$a$d;)V

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->h()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    new-instance v0, Le/a/r3/b$f;

    invoke-direct {v0, p1}, Le/a/r3/b$f;-><init>(Le/m/a/h/a/g/d;)V

    invoke-virtual {v1, v0}, Le/a/r3/i;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Le/a/r3/b$a;->a:Le/a/r3/b$a;

    invoke-virtual {v1, p1}, Le/a/r3/i;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Le/a/r3/b$b;

    .line 10
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Installing dynamic module has been failed: errorCode: "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Le/m/a/h/a/g/d;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/m/a/h/a/g/d;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->c()I

    move-result p1

    .line 12
    invoke-direct {v0, v2, p1}, Le/a/r3/b$b;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v1, v0}, Le/a/r3/i;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_3
    sget-object p1, Le/a/r3/b$d;->a:Le/a/r3/b$d;

    invoke-virtual {v1, p1}, Le/a/r3/i;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v2, v3

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v4

    .line 15
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->a()J

    move-result-wide v6

    const/16 p1, 0x64

    int-to-long v8, p1

    mul-long/2addr v6, v8

    .line 16
    div-long/2addr v6, v4

    long-to-int v0, v6

    if-le v0, p1, :cond_5

    goto :goto_1

    :cond_5
    move p1, v0

    .line 17
    :goto_1
    new-instance v0, Le/a/r3/b$c;

    invoke-direct {v0, p1}, Le/a/r3/b$c;-><init>(I)V

    invoke-virtual {v1, v0}, Le/a/r3/i;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_6
    new-instance v0, Le/a/r3/b$e;

    invoke-virtual {p1}, Le/m/a/h/a/g/d;->c()I

    move-result p1

    invoke-direct {v0, p1}, Le/a/r3/b$e;-><init>(I)V

    invoke-virtual {v1, v0}, Le/a/r3/i;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v2, :cond_7

    .line 19
    iget-object p1, p0, Le/a/r3/h$a$d;->b:Lq3/a/w2/x;

    invoke-interface {p1}, Lq3/a/w2/x;->Z1()Lq3/a/w2/d0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v3, v0}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_7
    return-void
.end method
