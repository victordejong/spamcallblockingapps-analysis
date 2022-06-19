.class public final Le/a/e3/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e3/i/a$b;
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
    iput-object p1, p0, Le/a/e3/i/a;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Number;",
            ")",
            "Le/a/r2/x<",
            "Le/a/e3/e/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e3/i/a;->a:Le/a/r2/w;

    new-instance v1, Le/a/e3/i/a$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/e3/i/a$b;-><init>(Le/a/r2/e;Ljava/lang/String;Lcom/truecaller/data/entity/Number;Le/a/e3/i/a$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
