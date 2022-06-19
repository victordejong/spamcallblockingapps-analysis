.class public Le/p/a/y/j/j;
.super Le/p/a/y/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Le/p/a/y/j/t;

.field public final synthetic c:Le/p/a/y/j/d$e;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d$e;Ljava/lang/String;[Ljava/lang/Object;Le/p/a/y/j/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/j;->c:Le/p/a/y/j/d$e;

    iput-object p4, p0, Le/p/a/y/j/j;->b:Le/p/a/y/j/t;

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/j;->c:Le/p/a/y/j/d$e;

    iget-object v0, v0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    iget-object v0, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    iget-object v1, p0, Le/p/a/y/j/j;->b:Le/p/a/y/j/t;

    invoke-interface {v0, v1}, Le/p/a/y/j/c;->v0(Le/p/a/y/j/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
