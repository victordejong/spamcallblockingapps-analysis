.class public Le/k/a/a/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/a/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/k/a/a/b0;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Le/k/a/a/b0$a;


# instance fields
.field public final a:Le/k/a/a/j0;

.field public final b:Le/k/a/a/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/a/b0$a;

    sget-object v1, Le/k/a/a/j0;->e:Le/k/a/a/j0;

    invoke-direct {v0, v1, v1}, Le/k/a/a/b0$a;-><init>(Le/k/a/a/j0;Le/k/a/a/j0;)V

    sput-object v0, Le/k/a/a/b0$a;->c:Le/k/a/a/b0$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/a/j0;Le/k/a/a/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    .line 3
    iput-object p2, p0, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    return-void
.end method


# virtual methods
.method public a()Le/k/a/a/j0;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    sget-object v1, Le/k/a/a/j0;->e:Le/k/a/a/j0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public b()Le/k/a/a/j0;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    sget-object v1, Le/k/a/a/j0;->e:Le/k/a/a/j0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
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

    if-ne v2, v3, :cond_3

    .line 2
    check-cast p1, Le/k/a/a/b0$a;

    .line 3
    iget-object v2, p1, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    iget-object v3, p0, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    if-ne v2, v3, :cond_2

    iget-object p1, p1, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    iget-object v2, p0, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    iget-object v1, p0, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    .line 2
    sget-object v2, Le/k/a/a/j0;->e:Le/k/a/a/j0;

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Le/k/a/a/b0$a;->c:Le/k/a/a/b0$a;

    return-object v0

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/k/a/a/b0$a;->a:Le/k/a/a/j0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/a/b0$a;->b:Le/k/a/a/j0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "JsonSetter.Value(valueNulls=%s,contentNulls=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
