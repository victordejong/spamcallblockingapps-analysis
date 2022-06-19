.class public final Le/k/a/c/d0/y/a0$c;
.super Le/k/a/c/d0/y/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/y/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;Le/k/a/c/d0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/y/a0;-><init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Le/k/a/c/d0/y/a0$c;->c:Le/k/a/c/d0/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/a0$c;->c:Le/k/a/c/d0/u;

    iget-object v1, p0, Le/k/a/c/d0/y/a0;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
