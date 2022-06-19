.class public Le/a/q2/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/g$b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q2/g$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/g;
    .locals 5

    .line 1
    new-instance v0, Le/a/q2/g$b$a;

    iget-object v1, p0, Le/a/q2/g$b;->a:Ljava/lang/String;

    iget-object v2, p0, Le/a/q2/g$b;->c:Ljava/lang/Double;

    iget-object v3, p0, Le/a/q2/g$b;->b:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;I)Le/a/q2/g$b;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    return-object p0
.end method

.method public c(Ljava/lang/String;J)Le/a/q2/g$b;
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/g$b;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/a/q2/g$b;->b:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/q2/g$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e(Ljava/lang/String;Z)Le/a/q2/g$b;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    return-object p0
.end method
