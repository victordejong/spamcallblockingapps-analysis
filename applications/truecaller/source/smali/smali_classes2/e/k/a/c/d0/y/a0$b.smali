.class public final Le/k/a/c/d0/y/a0$b;
.super Le/k/a/c/d0/y/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/y/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/y/a0;-><init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Le/k/a/c/d0/y/a0$b;->c:Ljava/lang/Object;

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
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Le/k/a/c/d0/y/a0$b;->c:Ljava/lang/Object;

    iget-object v1, p0, Le/k/a/c/d0/y/a0;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
