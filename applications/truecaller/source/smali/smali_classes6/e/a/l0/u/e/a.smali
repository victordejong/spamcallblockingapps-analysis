.class public final Le/a/l0/u/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/u/e/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l0/u/e/a$f;,
        Le/a/l0/u/e/a$e;,
        Le/a/l0/u/e/a$b;,
        Le/a/l0/u/e/a$c;,
        Le/a/l0/u/e/a$d;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/l0/u/e/a;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public M1(Lcom/truecaller/data/entity/CallRecording;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/CallRecording;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/u/e/a;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/u/e/a$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/u/e/a$c;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/CallRecording;Le/a/l0/u/e/a$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public N1()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/u/e/a;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/u/e/a$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/u/e/a$d;-><init>(Le/a/r2/e;Le/a/l0/u/e/a$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public O1(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/u/e/a;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/u/e/a$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/u/e/a$e;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/l0/u/e/a$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public P1(Ljava/util/Collection;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/u/e/a;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/u/e/a$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/u/e/a$b;-><init>(Le/a/r2/e;Ljava/util/Collection;Le/a/l0/u/e/a$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public Q1(Ljava/util/Collection;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/u/e/a;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/u/e/a$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/u/e/a$f;-><init>(Le/a/r2/e;Ljava/util/Collection;Le/a/l0/u/e/a$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
