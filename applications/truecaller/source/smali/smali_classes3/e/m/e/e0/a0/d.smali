.class public final Le/m/e/e0/a0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# instance fields
.field public final a:Le/m/e/e0/g;


# direct methods
.method public constructor <init>(Le/m/e/e0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/e/e0/a0/d;->a:Le/m/e/e0/g;

    return-void
.end method


# virtual methods
.method public a(Le/m/e/e0/g;Le/m/e/k;Le/m/e/f0/a;Le/m/e/d0/a;)Le/m/e/b0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/e0/g;",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "*>;",
            "Le/m/e/d0/a;",
            ")",
            "Le/m/e/b0<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Le/m/e/d0/a;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/m/e/f0/a;->get(Ljava/lang/Class;)Le/m/e/f0/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/m/e/e0/g;->a(Le/m/e/f0/a;)Le/m/e/e0/t;

    move-result-object p1

    invoke-interface {p1}, Le/m/e/e0/t;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Le/m/e/b0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Le/m/e/b0;

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, Le/m/e/c0;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Le/m/e/c0;

    invoke-interface {p1, p2, p3}, Le/m/e/c0;->create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Le/m/e/y;

    if-nez v0, :cond_3

    instance-of v1, p1, Le/m/e/p;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Le/m/e/f0/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9
    move-object v0, p1

    check-cast v0, Le/m/e/y;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 10
    :goto_1
    instance-of v0, p1, Le/m/e/p;

    if-eqz v0, :cond_5

    .line 11
    move-object v1, p1

    check-cast v1, Le/m/e/p;

    :cond_5
    move-object v4, v1

    .line 12
    new-instance p1, Le/m/e/e0/a0/m;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Le/m/e/e0/a0/m;-><init>(Le/m/e/y;Le/m/e/p;Le/m/e/k;Le/m/e/f0/a;Le/m/e/c0;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p4}, Le/m/e/d0/a;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p1}, Le/m/e/b0;->nullSafe()Le/m/e/b0;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Le/m/e/d0/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Le/m/e/d0/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Le/m/e/e0/a0/d;->a:Le/m/e/e0/g;

    invoke-virtual {p0, v1, p1, p2, v0}, Le/m/e/e0/a0/d;->a(Le/m/e/e0/g;Le/m/e/k;Le/m/e/f0/a;Le/m/e/d0/a;)Le/m/e/b0;

    move-result-object p1

    return-object p1
.end method
