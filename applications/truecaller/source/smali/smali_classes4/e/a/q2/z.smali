.class public final Le/a/q2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/z$b;,
        Le/a/q2/z$c;,
        Le/a/q2/z$d;
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
    iput-object p1, p0, Le/a/q2/z;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/avro/generic/GenericRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/z;->a:Le/a/r2/w;

    new-instance v1, Le/a/q2/z$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/q2/z$c;-><init>(Le/a/r2/e;Lorg/apache/avro/generic/GenericRecord;Le/a/q2/z$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(Lorg/apache/avro/generic/GenericRecord;Lu3/e0;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/generic/GenericRecord;",
            "Lu3/e0;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/analytics/EventsUploadResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/z;->a:Le/a/r2/w;

    new-instance v1, Le/a/q2/z$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/q2/z$b;-><init>(Le/a/r2/e;Lorg/apache/avro/generic/GenericRecord;Lu3/e0;Le/a/q2/z$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c(Lu3/e0;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/e0;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/z;->a:Le/a/r2/w;

    new-instance v1, Le/a/q2/z$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/q2/z$d;-><init>(Le/a/r2/e;Lu3/e0;Le/a/q2/z$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
