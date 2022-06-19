.class public Le/q/f/a/e/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Le/q/f/a/c/b;

.field public c:Le/q/c/b/a;

.field public d:Le/q/c/b/a;

.field public e:Z


# direct methods
.method public constructor <init>(Le/q/f/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/f/a/e/g/a;->b:Le/q/f/a/c/b;

    .line 3
    new-instance p1, Le/q/f/a/f/n;

    invoke-direct {p1}, Le/q/f/a/f/n;-><init>()V

    iput-object p1, p0, Le/q/f/a/e/g/a;->c:Le/q/c/b/a;

    .line 4
    new-instance p1, Le/q/f/a/f/n;

    invoke-direct {p1}, Le/q/f/a/f/n;-><init>()V

    iput-object p1, p0, Le/q/f/a/e/g/a;->d:Le/q/c/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/q/f/a/e/g/a;->e:Z

    .line 2
    iget-object v0, p0, Le/q/f/a/e/g/a;->c:Le/q/c/b/a;

    iget-object v1, p0, Le/q/f/a/e/g/a;->d:Le/q/c/b/a;

    check-cast v1, Le/q/f/a/f/n;

    .line 3
    iget-object v1, v1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    .line 4
    check-cast v0, Le/q/f/a/f/n;

    .line 5
    iget-object v0, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 6
    new-instance v0, Le/q/f/a/f/n;

    invoke-direct {v0}, Le/q/f/a/f/n;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/g/a;->d:Le/q/c/b/a;

    return-void
.end method
