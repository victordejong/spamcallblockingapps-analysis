.class public Le/k/a/a/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/k/a/a/r;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:Le/k/a/a/r$b;


# instance fields
.field public final a:Le/k/a/a/r$a;

.field public final b:Le/k/a/a/r$a;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/k/a/a/r$b;

    sget-object v1, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    return-void
.end method

.method public constructor <init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/a/r$a;",
            "Le/k/a/a/r$a;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    iput-object p1, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 3
    :cond_1
    iput-object p2, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    .line 4
    const-class p1, Ljava/lang/Void;

    const/4 p2, 0x0

    if-ne p3, p1, :cond_2

    move-object p3, p2

    :cond_2
    iput-object p3, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    .line 5
    const-class p1, Ljava/lang/Void;

    if-ne p4, p1, :cond_3

    move-object p4, p2

    :cond_3
    iput-object p4, p0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/a/r$b;)Le/k/a/a/r$b;
    .locals 10

    .line 1
    sget-object v0, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    if-eqz p1, :cond_8

    sget-object v1, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    if-ne p1, v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v1, p1, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    .line 3
    iget-object v2, p1, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    .line 4
    iget-object v3, p1, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    .line 5
    iget-object p1, p1, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    .line 6
    iget-object v4, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_1

    if-eq v1, v0, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    .line 7
    :goto_0
    iget-object v8, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    if-eq v2, v8, :cond_2

    if-eq v2, v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v6

    .line 8
    :goto_1
    iget-object v9, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    if-ne v3, v9, :cond_4

    if-eq p1, v9, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :cond_4
    :goto_2
    if-eqz v7, :cond_6

    if-eqz v0, :cond_5

    .line 9
    new-instance v0, Le/k/a/a/r$b;

    invoke-direct {v0, v1, v2, v3, p1}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 10
    :cond_5
    new-instance v0, Le/k/a/a/r$b;

    invoke-direct {v0, v1, v8, v3, p1}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 11
    new-instance v0, Le/k/a/a/r$b;

    invoke-direct {v0, v4, v2, v3, p1}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7
    if-eqz v5, :cond_8

    .line 12
    new-instance v0, Le/k/a/a/r$b;

    invoke-direct {v0, v4, v8, v3, p1}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_8
    :goto_3
    return-object p0
.end method

.method public b(Le/k/a/a/r$a;)Le/k/a/a/r$b;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/a/r$b;

    iget-object v1, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    iget-object v2, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2, v3}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Le/k/a/a/r$b;

    .line 3
    iget-object v2, p1, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    iget-object v3, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    iget-object v3, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    iget-object v3, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget-object p1, p1, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    sget-object v1, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x50

    const-string v1, "JsonInclude.Value(value="

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->x(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",content="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    const-string v2, ".class"

    if-eqz v1, :cond_0

    const-string v1, ",valueFilter="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/a/r$b;->c:Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v1, p0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    if-eqz v1, :cond_1

    const-string v1, ",contentFilter="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x29

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
