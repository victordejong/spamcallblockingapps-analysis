.class public final Le/a/i/c0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c0/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/c0/j$c;,
        Le/a/i/c0/j$b;
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
    iput-object p1, p0, Le/a/i/c0/j;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/ads/leadgen/dto/LeadgenDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/c0/j;->a:Le/a/r2/w;

    new-instance v1, Le/a/i/c0/j$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/i/c0/j$b;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/i/c0/j$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/a/r2/x<",
            "Le/a/i/c0/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/c0/j;->a:Le/a/r2/w;

    new-instance v1, Le/a/i/c0/j$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/i/c0/j$c;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/util/Map;Le/a/i/c0/j$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
