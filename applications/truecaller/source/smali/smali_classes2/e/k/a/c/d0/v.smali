.class public Le/k/a/c/d0/v;
.super Le/k/a/c/k;
.source "SourceFile"


# instance fields
.field public d:Le/k/a/c/d0/y/c0;


# direct methods
.method public constructor <init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/h;Le/k/a/c/d0/y/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Le/k/a/b/h;)V

    .line 2
    iput-object p4, p0, Le/k/a/c/d0/v;->d:Le/k/a/c/d0/y/c0;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
