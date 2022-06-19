.class public Le/k/a/c/d0/y/k;
.super Le/k/a/c/d0/w$a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Le/k/a/c/d0/y/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/y/k;

    invoke-direct {v0}, Le/k/a/c/d0/y/k;-><init>()V

    sput-object v0, Le/k/a/c/d0/y/k;->b:Le/k/a/c/d0/y/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Le/k/a/c/d0/w$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
