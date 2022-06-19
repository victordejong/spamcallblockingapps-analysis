.class public Le/m/e/e0/a0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Le/m/e/b0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/m/e/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/e/e0/a0/t;->a:Ljava/lang/Class;

    iput-object p2, p0, Le/m/e/e0/a0/t;->b:Le/m/e/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT2;>;)",
            "Le/m/e/b0<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/m/e/e0/a0/t;->a:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Le/m/e/e0/a0/t$a;

    invoke-direct {p2, p0, p1}, Le/m/e/e0/a0/t$a;-><init>(Le/m/e/e0/a0/t;Ljava/lang/Class;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Factory[typeHierarchy="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/m/e/e0/a0/t;->a:Ljava/lang/Class;

    const-string v2, ",adapter="

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/m/e/e0/a0/t;->b:Le/m/e/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
