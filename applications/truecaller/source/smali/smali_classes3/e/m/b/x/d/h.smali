.class public final Le/m/b/x/d/h;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/d/h$a;,
        Le/m/b/x/d/h$b;,
        Le/m/b/x/d/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/m/b/x/d/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Le/m/b/x/d/f;->c(Ljava/lang/Class;Z)Le/m/b/x/d/f;

    move-result-object p1

    iput-object p1, p0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/m/b/x/d/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Le/m/b/x/d/h$c;

    invoke-direct {v0, p0}, Le/m/b/x/d/h$c;-><init>(Le/m/b/x/d/h;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Le/m/b/x/d/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    invoke-virtual {v0, p1}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no field of key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Le/m/b/x/d/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v1, p0, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v1, p2}, Le/m/b/x/d/j;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
