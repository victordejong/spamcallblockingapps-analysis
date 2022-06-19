.class public Le/k/a/b/f;
.super Le/k/a/b/k;
.source "SourceFile"


# instance fields
.field public transient b:Le/k/a/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/k/a/b/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/k/a/b/k;-><init>(Ljava/lang/String;Le/k/a/b/h;)V

    .line 2
    iput-object p2, p0, Le/k/a/b/f;->b:Le/k/a/b/g;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/f;->b:Le/k/a/b/g;

    return-object v0
.end method
