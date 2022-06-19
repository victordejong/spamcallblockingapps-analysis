.class public Le/a/r2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/o$e;,
        Le/a/r2/o$c;,
        Le/a/r2/o$b;,
        Le/a/r2/o$d;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/o$e;

.field public final b:Le/a/r2/n;

.field public final c:Le/a/r2/a0;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public f:Le/a/r2/c;


# direct methods
.method public constructor <init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/r2/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/r2/o$c;-><init>(Le/a/r2/o;Le/a/r2/o$a;)V

    iput-object v0, p0, Le/a/r2/o;->a:Le/a/r2/o$e;

    .line 3
    iput-object p1, p0, Le/a/r2/o;->c:Le/a/r2/a0;

    .line 4
    iput-object p2, p0, Le/a/r2/o;->b:Le/a/r2/n;

    .line 5
    iput-object p3, p0, Le/a/r2/o;->d:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Le/a/r2/o;->e:J

    return-void
.end method

.method public constructor <init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;J)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Le/a/r2/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/r2/o$c;-><init>(Le/a/r2/o;Le/a/r2/o$a;)V

    iput-object v0, p0, Le/a/r2/o;->a:Le/a/r2/o$e;

    .line 9
    iput-object p1, p0, Le/a/r2/o;->c:Le/a/r2/a0;

    .line 10
    iput-object p2, p0, Le/a/r2/o;->b:Le/a/r2/n;

    .line 11
    iput-object p3, p0, Le/a/r2/o;->d:Ljava/lang/String;

    .line 12
    iput-wide p4, p0, Le/a/r2/o;->e:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Le/a/r2/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/r2/o$d;

    iget-object v1, p0, Le/a/r2/o;->b:Le/a/r2/n;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Le/a/r2/o$d;-><init>(Le/a/r2/o;Le/a/r2/n;Ljava/lang/Object;Le/a/r2/o$a;)V

    .line 2
    iget-object p2, p0, Le/a/r2/o;->c:Le/a/r2/a0;

    invoke-interface {p2, p1, v0}, Le/a/r2/a0;->a(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/r2/g;

    invoke-direct {p2, p1}, Le/a/r2/g;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
