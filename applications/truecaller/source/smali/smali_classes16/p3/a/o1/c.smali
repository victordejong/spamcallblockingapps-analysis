.class public Lp3/a/o1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/a/o1/o/m/d;

.field public static final b:Lp3/a/o1/o/m/d;

.field public static final c:Lp3/a/o1/o/m/d;

.field public static final d:Lp3/a/o1/o/m/d;

.field public static final e:Lp3/a/o1/o/m/d;

.field public static final f:Lp3/a/o1/o/m/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp3/a/o1/o/m/d;

    sget-object v1, Lp3/a/o1/o/m/d;->g:Lv3/i;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    sput-object v0, Lp3/a/o1/c;->a:Lp3/a/o1/o/m/d;

    .line 2
    new-instance v0, Lp3/a/o1/o/m/d;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    sput-object v0, Lp3/a/o1/c;->b:Lp3/a/o1/o/m/d;

    .line 3
    new-instance v0, Lp3/a/o1/o/m/d;

    sget-object v1, Lp3/a/o1/o/m/d;->e:Lv3/i;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    sput-object v0, Lp3/a/o1/c;->c:Lp3/a/o1/o/m/d;

    .line 4
    new-instance v0, Lp3/a/o1/o/m/d;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    sput-object v0, Lp3/a/o1/c;->d:Lp3/a/o1/o/m/d;

    .line 5
    new-instance v0, Lp3/a/o1/o/m/d;

    sget-object v1, Lp3/a/n1/r0;->g:Lp3/a/o0$f;

    .line 6
    iget-object v1, v1, Lp3/a/o0$f;->b:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v1

    const-string v2, "application/grpc"

    invoke-static {v2}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    .line 8
    sput-object v0, Lp3/a/o1/c;->e:Lp3/a/o1/o/m/d;

    .line 9
    new-instance v0, Lp3/a/o1/o/m/d;

    const-string v1, "te"

    .line 10
    invoke-static {v1}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v1

    const-string v2, "trailers"

    invoke-static {v2}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    .line 11
    sput-object v0, Lp3/a/o1/c;->f:Lp3/a/o1/o/m/d;

    return-void
.end method
