.class public final Le/m/b/x/d/k$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/b/x/d/h$c;

.field public final synthetic b:Le/m/b/x/d/k;


# direct methods
.method public constructor <init>(Le/m/b/x/d/k;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/b/x/d/k$b;->b:Le/m/b/x/d/k;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    new-instance v0, Le/m/b/x/d/h;

    iget-object v1, p1, Le/m/b/x/d/k;->b:Le/m/b/x/d/f;

    .line 3
    iget-boolean v1, v1, Le/m/b/x/d/f;->a:Z

    .line 4
    invoke-direct {v0, p1, v1}, Le/m/b/x/d/h;-><init>(Ljava/lang/Object;Z)V

    .line 5
    new-instance p1, Le/m/b/x/d/h$c;

    invoke-direct {p1, v0}, Le/m/b/x/d/h$c;-><init>(Le/m/b/x/d/h;)V

    .line 6
    iput-object p1, p0, Le/m/b/x/d/k$b;->a:Le/m/b/x/d/h$c;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/d/k$b;->b:Le/m/b/x/d/k;

    iget-object v0, v0, Le/m/b/x/d/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/m/b/x/d/k$b;->a:Le/m/b/x/d/h$c;

    invoke-virtual {v0}, Le/m/b/x/d/h$c;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/b/x/d/k$a;

    iget-object v1, p0, Le/m/b/x/d/k$b;->b:Le/m/b/x/d/k;

    iget-object v2, p0, Le/m/b/x/d/k$b;->a:Le/m/b/x/d/h$c;

    invoke-direct {v0, v1, v2}, Le/m/b/x/d/k$a;-><init>(Le/m/b/x/d/k;Le/m/b/x/d/h$c;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/x/d/k$b;->b:Le/m/b/x/d/k;

    iget-object v0, v0, Le/m/b/x/d/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Le/m/b/x/d/k$b;->a:Le/m/b/x/d/h$c;

    invoke-virtual {v1}, Le/m/b/x/d/h$c;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
