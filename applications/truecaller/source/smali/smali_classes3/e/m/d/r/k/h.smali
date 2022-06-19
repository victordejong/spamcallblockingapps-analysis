.class public Le/m/d/r/k/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/r/k/h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;",
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/r/k/h;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Le/m/d/r/k/h;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Le/m/d/r/k/h;->c:Le/m/d/r/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/d/r/k/g;

    iget-object v1, p0, Le/m/d/r/k/h;->a:Ljava/util/Map;

    iget-object v2, p0, Le/m/d/r/k/h;->b:Ljava/util/Map;

    iget-object v3, p0, Le/m/d/r/k/h;->c:Le/m/d/r/e;

    invoke-direct {v0, p2, v1, v2, v3}, Le/m/d/r/k/g;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/d/r/e;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2, p1, v0}, Le/m/d/r/b;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p2, Le/m/d/r/c;

    const-string v0, "No encoder for "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
