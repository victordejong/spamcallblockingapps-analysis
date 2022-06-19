.class public final Le/m/b/x/d/a$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/b/x/d/a;


# direct methods
.method public constructor <init>(Le/m/b/x/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/d/a$c;->a:Le/m/b/x/d/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/b/x/d/a$b;

    iget-object v1, p0, Le/m/b/x/d/a$c;->a:Le/m/b/x/d/a;

    invoke-direct {v0, v1}, Le/m/b/x/d/a$b;-><init>(Le/m/b/x/d/a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/d/a$c;->a:Le/m/b/x/d/a;

    iget v0, v0, Le/m/b/x/d/a;->a:I

    return v0
.end method
