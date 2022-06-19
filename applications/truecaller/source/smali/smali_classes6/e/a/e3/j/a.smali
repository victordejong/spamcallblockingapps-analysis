.class public final Le/a/e3/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/j/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 3

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    invoke-static {}, Le/a/l5/a/r;->a()Le/a/l5/a/r$b;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/e3/j/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/a/l5/a/r$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    .line 4
    invoke-virtual {v1}, Le/a/l5/a/r$b;->a()Le/a/l5/a/r;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method
