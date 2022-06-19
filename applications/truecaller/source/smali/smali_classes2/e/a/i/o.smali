.class public Le/a/i/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/o$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final c:Le/a/i/o;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/i/o$b;

    const-string v1, ""

    invoke-direct {v0, v1}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object v0

    sput-object v0, Le/a/i/o;->c:Le/a/i/o;

    return-void
.end method

.method public constructor <init>(Le/a/i/o$b;Le/a/i/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/i/o;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Le/a/i/o$b;->b:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Le/a/i/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Le/a/i/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Le/a/i/o;

    .line 3
    iget-object v2, p0, Le/a/i/o;->a:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    move v1, v0

    goto :goto_1

    .line 4
    :cond_2
    iget-object v2, p0, Le/a/i/o;->b:Ljava/lang/String;

    iget-object p1, p1, Le/a/i/o;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 5
    invoke-static {p1, p1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {p1, p1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/i/o;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x0

    return v1
.end method
