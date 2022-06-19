.class public abstract Le/m/a/b/j/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/j/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Le/m/a/b/j/n$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/b/j/n$a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract b()Le/m/a/b/j/n;
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Le/m/a/b/j/m;)Le/m/a/b/j/n$a;
.end method

.method public abstract e(J)Le/m/a/b/j/n$a;
.end method

.method public abstract f(Ljava/lang/String;)Le/m/a/b/j/n$a;
.end method

.method public abstract g(J)Le/m/a/b/j/n$a;
.end method
