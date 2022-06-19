.class public final Le/k/a/c/d0/y/a0$a;
.super Le/k/a/c/d0/y/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/y/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Le/k/a/c/d0/t;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;Le/k/a/c/d0/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/y/a0;-><init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Le/k/a/c/d0/y/a0$a;->c:Le/k/a/c/d0/t;

    .line 3
    iput-object p4, p0, Le/k/a/c/d0/y/a0$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/a0$a;->c:Le/k/a/c/d0/t;

    iget-object v1, p0, Le/k/a/c/d0/y/a0$a;->d:Ljava/lang/String;

    iget-object v2, p0, Le/k/a/c/d0/y/a0;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Le/k/a/c/d0/t;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
